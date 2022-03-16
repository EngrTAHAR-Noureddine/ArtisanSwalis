class Product{
  Product({
    required this.description,
    required this.idArtisan,

    required this.idProduct,
    required this.ingredients,

    required this.name,
    required this.picture,

    required this.price,
    required this.status
  });

  final String description;
  final String idArtisan;

  final String idProduct;
  final String ingredients;

  final String name;
  final String picture;

  final int price;
  final String status;
}