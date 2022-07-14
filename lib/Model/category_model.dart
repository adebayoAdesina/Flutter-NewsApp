class CategoryModel {
  String? categoryName;
  String? imageUrl;

  CategoryModel({this.categoryName, this.imageUrl});
}

List<CategoryModel> getCategories = [
  CategoryModel(
      categoryName: 'Business',
      imageUrl:
          'https://th.bing.com/th/id/OIP.486yBDozxyN6Iidy2sxgHwHaEK?pid=ImgDet&rs=1'),
  CategoryModel(
      categoryName: 'Technology',
      imageUrl:
          'https://acrpnet.org/wp-content/uploads/2018/11/DTC_image-1022x1024.jpg'),
  CategoryModel(
      categoryName: 'Sport',
      imageUrl:
          'https://www.roisinbyrne.co.uk/wp-content/uploads/2016/01/spor.jpg'),
  CategoryModel(
      categoryName: 'Entertainment',
      imageUrl:
          'https://th.bing.com/th/id/R.32abf434bd1ffe3cc501a56d26541ca8?rik=BnGjuzyCS9nHCg&pid=ImgRaw&r=0'),
  CategoryModel(
      categoryName: 'Science',
      imageUrl:
          'https://th.bing.com/th/id/R.f5b157c8033d028c69ff1a25f7d15133?rik=PaThKXiqrYYd5g&riu=http%3a%2f%2fthelibertarianrepublic.com%2fwp-content%2fuploads%2f2016%2f02%2fscience.jpg&ehk=fUOTF2D6E%2fQu6taI9nd58LHfbyA3naqv4va96Cv2mLg%3d&risl=&pid=ImgRaw&r=0'),
  CategoryModel(
      categoryName: 'General',
      imageUrl:
          'https://th.bing.com/th/id/OIP.X1Og8XOmPnVTwE49vbvQJgHaJQ?pid=ImgDet&rs=1'),
];
