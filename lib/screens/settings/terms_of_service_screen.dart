import 'package:flutter/material.dart';

class TermsOfServiceScreen extends StatelessWidget {
  final bool isReadOnly;

  const TermsOfServiceScreen({super.key, this.isReadOnly = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('이용약관')),
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '서비스 이용약관',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '''제1조 (목적)
이 약관은 나만의 서재(이하 "서비스")가 제공하는 서비스의 이용조건 및 절차, 회사와 회원 간의 권리, 의무 및 책임사항 등을 규정함을 목적으로 합니다.

제2조 (정의)
1. "서비스"란 회사가 제공하는 도서 관리 및 리뷰 서비스를 말합니다.
2. "회원"이란 서비스에 접속하여 이 약관에 따라 회사와 이용계약을 체결하고 회사가 제공하는 서비스를 이용하는 고객을 말합니다.

제3조 (약관의 효력 및 변경)
1. 이 약관은 서비스를 이용하고자 하는 모든 회원에 대하여 그 효력을 발생합니다.
2. 회사는 필요한 경우 관련 법령을 위배하지 않는 범위 내에서 이 약관을 변경할 수 있습니다.

제4조 (이용계약의 성립)
1. 이용계약은 회원이 되고자 하는 자가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 회사가 이러한 신청에 대하여 승낙함으로써 체결됩니다.

제5조 (서비스의 제공)
1. 회사는 회원에게 아래와 같은 서비스를 제공합니다.
   - 도서 등록 및 관리 서비스
   - 도서 리뷰 작성 및 열람 서비스
   - 바코드 스캔을 통한 도서 검색 서비스
   - 기타 회사가 추가 개발하거나 제휴 계약 등을 통해 회원에게 제공하는 일체의 서비스

제6조 (회원의 의무)
1. 회원은 관계 법령, 이 약관의 규정, 이용안내 및 서비스와 관련하여 공지한 주의사항을 준수하여야 합니다.
2. 회원은 타인의 개인정보를 수집, 저장, 공개하는 행위를 해서는 안 됩니다.

제7조 (개인정보보호)
1. 회사는 회원의 개인정보를 보호하기 위하여 개인정보처리방침을 수립하고 이를 준수합니다.
2. 회사는 회원의 개인정보를 회원의 동의 없이 제3자에게 제공하지 않습니다.

제8조 (서비스 이용의 제한)
회사는 회원이 다음 각 호에 해당하는 행위를 한 경우 서비스 이용을 제한할 수 있습니다.
1. 타인의 정보 도용
2. 서비스 운영을 고의로 방해한 경우
3. 기타 관계 법령이나 회사가 정한 이용조건에 위배되는 경우

제9조 (면책조항)
1. 회사는 천재지변, 전쟁, 기간통신사업자의 서비스 중지 등 불가항력적인 사유로 서비스를 제공할 수 없는 경우에는 책임이 면제됩니다.
2. 회사는 회원의 귀책사유로 인한 서비스 이용 장애에 대하여 책임을 지지 않습니다.

제10조 (분쟁해결)
1. 회사와 회원 간에 발생한 분쟁에 관한 소송은 대한민국 법을 적용합니다.
2. 서비스 이용 중 발생한 분쟁에 대해 소송이 제기될 경우, 회사 소재지를 관할하는 법원을 관할 법원으로 합니다.

부칙
이 약관은 2024년 1월 1일부터 시행됩니다.
''',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(height: 1.6),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (!isReadOnly)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(0, -2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    child: const Text('동의하고 계속하기'),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
