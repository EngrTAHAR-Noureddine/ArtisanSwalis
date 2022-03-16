class Order {
  Order({
    required this.idArtisan,
    required this.idOrder,

    required this.idUser,
    required this.nameProduct,

    required this.orderDate,
    required this.pictureProduct,

    required this.priceProduct,
    required this.quantity,

    required this.state,
  });

  final String idArtisan;
  final String idOrder;

  final String idUser;
  final String nameProduct;

  final String orderDate;
  final String pictureProduct;

  final int priceProduct;
  final int quantity;

  final String state;

}