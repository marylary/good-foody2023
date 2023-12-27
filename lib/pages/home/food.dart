class Food {
  String imgUrl;
  String name;
  String desc;
  String price;
  Food(
      {required this.imgUrl,
      required this.desc,
      required this.name,
      required this.price});
}

List<Food> foods = [
  Food(
      imgUrl: 'https://i.postimg.cc/0yg8KhGp/Untitled2.png',
      desc: 'Full of spices',
      name: "Chicken",
      price: "\$10"),
  Food(
      imgUrl: 'https://i.postimg.cc/Pq7m6jjJ/pizza2.png',
      name: 'Sushi Pizza',
      desc: 'Canadian Pizza',
      price: '\$11'),
  Food(
      imgUrl: 'https://i.postimg.cc/9fkCPfsN/pizza1.png',
      name: 'Pizza Margherita',
      desc: 'Italian',
      price: '\$8'),
];
