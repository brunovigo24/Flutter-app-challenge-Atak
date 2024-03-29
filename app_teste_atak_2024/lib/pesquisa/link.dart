class Link {
  final String title;
  final String url;

  Link({required this.title, required this.url});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      title: json['title'],
      url: json['url'],
    );
  }
}
