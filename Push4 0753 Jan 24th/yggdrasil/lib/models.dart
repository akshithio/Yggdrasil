class Article {
  String title;
  String articleBody;

  Article(this.title, this.articleBody);

  Article.fromMap(Map<String, dynamic> articleMap) {
    this.title = articleMap['articleName'] ?? ''; // null check
    this.articleBody = articleMap['articleBody'] ?? '';
  }

  Map<String, dynamic> toADictionary() {
    return {
      'articleName': title,
      'articleBody': articleBody,
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
