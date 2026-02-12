import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../providers/book_provider.dart';
import '../../providers/service_providers.dart';
import '../../models/book.dart';

class BarcodeScannerScreen extends ConsumerStatefulWidget {
  const BarcodeScannerScreen({super.key});

  @override
  ConsumerState<BarcodeScannerScreen> createState() =>
      _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends ConsumerState<BarcodeScannerScreen> {
  final MobileScannerController _controller = MobileScannerController();
  final TextEditingController _isbnController = TextEditingController();
  bool _isProcessing = false;
  bool _showManualInput = false;
  Book? _searchedBook;
  bool _isSearched = false;

  @override
  void dispose() {
    _controller.dispose();
    _isbnController.dispose();
    super.dispose();
  }

  Future<void> _handleBarcode(String isbn) async {
    if (_isProcessing) return;

    setState(() {
      _isProcessing = true;
    });

    try {
      final bookService = ref.read(bookServiceProvider);
      final searchResult = await bookService.searchBookByIsbn(isbn);

      final book = Book(
        title: searchResult['title'] ?? 'Unknown',
        author: searchResult['author'] ?? 'Unknown',
        bookIsbn: isbn,
        thumbnailUrl: searchResult['thumbnail_url'],
      );

      if (!mounted) return;

      final confirmed = await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text('도서 추가'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (book.thumbnailUrl != null)
                SizedBox(
                  height: 150,
                  child: Image.network(
                    book.thumbnailUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.book, size: 50),
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                book.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(book.author),
              const SizedBox(height: 16),
              const Text('이 도서를 서재에 추가하시겠습니까?'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('추가'),
            ),
          ],
        ),
      );

      if (confirmed == true && mounted) {
        await ref.read(bookListProvider.notifier).addBook(book);

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('도서가 성공적으로 추가되었습니다!'),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
      // Resume scanning
      _controller.start();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('도서 검색 실패: $e'), backgroundColor: Colors.red),
        );
        // Resume scanning on error
        _controller.start();
      }
    } finally {
      if (mounted) {
        setState(() {
          _isProcessing = false;
        });
      }
    }
  }

  Widget _buildScannerView() {
    return Stack(
      children: [
        MobileScanner(
          controller: _controller,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              final String? code = barcode.rawValue;
              if (code != null && !_isProcessing) {
                _handleBarcode(code);
                break;
              }
            }
          },
        ),
        if (_isProcessing)
          Container(
            color: Colors.black54,
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text(
                    '도서 정보를 가져오는 중...',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.black54,
            child: Column(
              children: [
                const Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                  size: 48,
                ),
                const SizedBox(height: 8),
                const Text(
                  'ISBN 바코드를 스캔하세요!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '등록하려는 책 뒷면의 바코드를 스캔하세요!',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'EAN-13 또는 EAN-8 형식',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildManualInputView() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue.shade50, Colors.white],
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.book, size: 80, color: Colors.blue.shade400),
              const SizedBox(height: 24),
              Text(
                'ISBN 번호로 검색',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '도서의 ISBN 번호를 입력하세요',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 32),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: TextField(
                  controller: _isbnController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'ISBN',
                    hintText: '예: 9788960777330',
                    prefixIcon: const Icon(Icons.numbers),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onSubmitted: (value) {
                    if (value.trim().isNotEmpty) {
                      _handleBarcode(value.trim());
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _isProcessing
                      ? null
                      : () {
                          final isbn = _isbnController.text.trim();
                          if (isbn.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('ISBN을 입력해주세요'),
                                backgroundColor: Colors.orange,
                              ),
                            );
                            return;
                          }
                          _handleBarcode(isbn);
                        },
                  icon: _isProcessing
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(Icons.search),
                  label: Text(_isProcessing ? '검색 중...' : '검색'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: 20,
                          color: Colors.blue.shade700,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'ISBN이란?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '• 국제 표준 도서 번호 (International Standard Book Number)\n'
                      '• 보통 10자리 또는 13자리 숫자로 구성\n'
                      '• 책 뒷표지 바코드 아래에 표시되어 있습니다',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade700,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('바코드 스캔'),
        actions: [
          IconButton(
            icon: Icon(
              _showManualInput ? Icons.qr_code_scanner : Icons.keyboard,
            ),
            tooltip: _showManualInput ? '스캔 모드' : '수동 입력',
            onPressed: () {
              setState(() {
                _showManualInput = !_showManualInput;
                if (!_showManualInput) {
                  _isbnController.clear();
                  _controller.start();
                } else {
                  _controller.stop();
                }
              });
            },
          ),
          if (!_showManualInput) ...[
            IconButton(
              icon: const Icon(Icons.flip_camera_ios),
              onPressed: () => _controller.switchCamera(),
            ),
            IconButton(
              icon: ValueListenableBuilder(
                valueListenable: _controller.torchState,
                builder: (context, state, child) {
                  switch (state) {
                    case TorchState.off:
                      return const Icon(Icons.flash_off);
                    case TorchState.on:
                      return const Icon(Icons.flash_on);
                  }
                },
              ),
              onPressed: () => _controller.toggleTorch(),
            ),
          ],
        ],
      ),
      body: _showManualInput ? _buildManualInputView() : _buildScannerView(),
    );
  }
}
