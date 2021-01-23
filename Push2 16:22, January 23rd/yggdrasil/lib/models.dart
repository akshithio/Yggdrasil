class Article {
  String user;
  String title;
  String articleBody;

  Article(this.title, this.user, this.articleBody);

  Article.fromMap(Map<String, dynamic> articleMap) {
    this.title = articleMap['articleName'] ?? ''; // null check
    this.user = articleMap['articleUser'] ?? '';
    this.articleBody = articleMap['articleBody'] ?? '';
  }

  Map<String, dynamic> toADictionary() {
    return {
      'articleName': title,
      'articleUser': user,
      'articleBody': articleBody,
    };
  }
}
