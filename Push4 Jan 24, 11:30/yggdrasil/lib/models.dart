class Article {
  String title;
  String articleBody;
  String userName;

  Article(this.title, this.articleBody, this.userName);

  Article.fromMap(Map<String, dynamic> articleMap) {
    this.title = articleMap['articleName'] ?? ''; // null check
    this.articleBody = articleMap['articleBody'] ?? '';
    this.userName = articleMap['userName'] ?? '';
  }

  Map<String, dynamic> toADictionary() {
    return {
      'articleName': title,
      'articleBody': articleBody,
      'userName': userName,
    };
  }
}

class Recycle {
  String category;
  String description;
  int quantity;
  String subcategory;

  Recycle(this.category, this.description, this.quantity, this.subcategory);

  Recycle.fromMap(Map<String, dynamic> recycleMap) {
    this.category = recycleMap['category'] ?? '';
    this.description = recycleMap['description'] ?? '';
    this.quantity = recycleMap['quantity'] ?? 0;
    this.subcategory = recycleMap['subcategory'] ?? '';
  }

  Map<String, dynamic> toADictionary() {
    return {
      'category': category,
      'description': description,
      'quantity': quantity,
      'subcategory': subcategory,
    };
  }
}
