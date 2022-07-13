class CategoryModel {
  String? categoryName;
  String? imageUrl;

  CategoryModel({this.categoryName, this.imageUrl});
}

List<CategoryModel> getCategories = [
  CategoryModel(categoryName: 'Bussiness', imageUrl: ' '),
  CategoryModel(categoryName: 'Technology', imageUrl: ' '),
  CategoryModel(categoryName: 'Sport', imageUrl: ' '),
  CategoryModel(categoryName: 'Entertainment', imageUrl: ' '),
  CategoryModel(categoryName: 'Science', imageUrl: ' '),
  CategoryModel(categoryName: 'General', imageUrl: ' '),
];
