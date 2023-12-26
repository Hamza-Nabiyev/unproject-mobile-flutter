class News {
  final String title;
  final String text;
  final String time;
  final List<String> tags;

  News({
    required this.title,
    required this.text,
    required this.time,
    this.tags = const [],
  });
}
