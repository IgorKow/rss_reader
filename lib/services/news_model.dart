class NewsModel {
  final String titel;
  final String author;
  final String link;
  final String enclosure;
  final String pubDate;

  const NewsModel(
      {required this.author,
      required this.titel,
      required this.link,
      required this.enclosure,
      required this.pubDate});
}
