class ProductModel {
  String productName;
  String brandName;
  String colorName;
  String productRating;
  String image;
  int price;
  int id;

  ProductModel(
      {this.productName,
      this.brandName,
      this.image,
      this.colorName,
      this.productRating,
      this.price,
      this.id});
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    productName: "Men's Polo T-shirt",
    productRating: "4.5",
    price: 359,
    image: "Assets/pl5.jpg",
    brandName: "Adidas",
    colorName: "Teal",
  ),
  ProductModel(
    id: 2,
    productName: "Men's Polo T-shirt",
    productRating: "4.8",
    price: 449,
    image: "Assets/pl8.jpg",
    brandName: "Levi's",
    colorName: "White",
  ),
  ProductModel(
    id: 3,
    productName: "Men's Polo T-shirt",
    productRating: "4.6",
    price: 425,
    image: "Assets/pl3.jpg",
    brandName: "Lee",
    colorName: "blue",
  ),
  ProductModel(
    id: 4,
    productName: "Men's Polo T-shirt",
    productRating: "4.4",
    price: 375,
    image: "Assets/pl10.jpg",
    brandName: "U.S Polo",
    colorName: "Pink",
  ),
  ProductModel(
    id: 5,
    productName: "Men's Polo T-shirt",
    productRating: "4.5",
    price: 401,
    image: "Assets/pl7.jpg",
    brandName: "Lee",
    colorName: "Black",
  ),
  ProductModel(
    id: 6,
    productName: "Men's Polo T-shirt",
    productRating: "4.5",
    price: 529,
    image: "Assets/pl4.jpg",
    brandName: "Levi's",
    colorName: "Black",
  ),
];
