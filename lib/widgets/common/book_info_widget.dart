import 'package:flutter/material.dart';

class BookInfoWidget extends StatelessWidget {
  final String? title;
  final String? author;
  final String? defaultTitle;
  final String? defaultAuthor;
  final double titleFontSize;
  final double authorFontSize;
  final int maxTitleLines;
  final int maxAuthorLines;

  const BookInfoWidget({
    super.key,
    this.title,
    this.author,
    this.defaultTitle = '제목 없음',
    this.defaultAuthor = '저자 미상',
    this.titleFontSize = 16,
    this.authorFontSize = 14,
    this.maxTitleLines = 2,
    this.maxAuthorLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? defaultTitle!,
          style: TextStyle(
            fontSize: titleFontSize,
            fontWeight: FontWeight.bold,
          ),
          maxLines: maxTitleLines,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Text(
          author ?? defaultAuthor!,
          style: TextStyle(
            fontSize: authorFontSize,
            color: Colors.grey.shade700,
          ),
          maxLines: maxAuthorLines,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
