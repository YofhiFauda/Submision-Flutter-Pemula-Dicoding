import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  final int id;
  final Color color;

  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.color});
}

List<Product> product = [
  Product(
    id: 1,
    image: "assets/images/cookiemint.png",
    title: "Cookie Mint",
    price: "24.000",
    color: const Color(0xFF4E7D96),
    description:
        'Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor."',
  ),
  Product(
    id: 2,
    image: "assets/images/cookiecream.png",
    title: "Cookie Cream",
    price: "55.000",
    color: const Color(0xFF4E7D96),
    description:
        'it’s a cookie within a cookie! These sweet treats are super easy to make and are the perfect mid-day snack.',
  ),
  Product(
    id: 3,
    image: "assets/images/cookieclassic.png",
    title: "Cookie Classic",
    price: "35.000",
    color: const Color(0xFF4E7D96),
    description:
        " it has nuts, there should be enough of them to have a piece in every bite. The cookies should be big enough to get a good taste of the cookie but not so big that it's a full meal.",
  ),
  Product(
    id: 4,
    image: "assets/images/cookiechoco.png",
    title: "Cookie Choco",
    price: "20.000",
    color: const Color(0xFF4E7D96),
    description:
        ' Firstly it needs to be moist. It will be light and fluffy and free of dryness. It will also be rich in chocolate flavor while at the same time not being too sweet for the average pudding lover.',
  ),
  Product(
    id: 5,
    image: "assets/images/Brownies.png",
    title: "Brownies Choco",
    price: "79.000",
    color: const Color(0xFF4E7D96),
    description:
        'Cakey Brownies, like the name implies, are light, moist and airy, with a slightly fluffy, cake-like interior.',
  ),
  Product(
    id: 6,
    image: "assets/images/browniesredvalvet.png",
    title: "Cookie Red Valvet",
    price: "99.000",
    color: const Color(0xFF4E7D96),
    description:
        'The cream cheese frosting is the most forward flavor. Perhaps even more important than the taste is the texture: smooth, soft, tender and light with creamy icing',
  ),
  Product(
    id: 7,
    image: "assets/images/harvest.png",
    title: "Harvest",
    price: "149.000",
    color: const Color(0xFF4E7D96),
    description:
        'The Harvest offers the best cakes in Indonesia. Selected ingredients, balanced texture, rich flavors, and splendid presentation go into baking each delicious cake. From special occasions and hearty celebrations to self-indulgence, you will be able to taste our steady promise of sincerity and superior quality in all our cakes',
  ),
  Product(
    id: 8,
    image: "assets/images/desert.png",
    title: "Desert Cake",
    price: "199.000",
    color: const Color(0xFF4E7D96),
    description:
        'Dessert is a course that concludes a meal. The course consists of sweet foods, such as confections, and possibly a beverage such as dessert wine and liqueur. In some parts of the world.',
  ),
  Product(
    id: 9,
    image: "assets/images/espressoicecream.png",
    title: "Espresso Ice Cream",
    price: "89.000",
    color: const Color(0xFF4E7D96),
    description:
        'This Espresso Mocha Cake is the ultimate indulgence. A rich dark chocolate cake with a silky mocha Swiss meringue buttercream.',
  ),
  Product(
    id: 10,
    image: "assets/images/green-tea-matcha.png",
    title: "Green Tea Matcha",
    price: "99.000",
    color: const Color(0xFF4E7D96),
    description:
        'Matcha has a bright, vegetal, and slightly bitter taste, with notes of sweetness and umami. High quality ceremonial grade matcha is suitable to drink on its own, while culinary grade matcha can be added to lattes, smoothie',
  ),
  Product(
    id: 11,
    image: "assets/images/ChocolateRaspberry.png",
    title: "Chocolate Raspberry Cake ",
    price: "149.000",
    color: const Color(0xFF4E7D96),
    description:
        ' Perfectly rich and moist Chocolate Raspberry Cake made from scratch with a delicious chocolate frosting and raspberry filling made from fresh raspberries. It’s the perfect way to celebrate any occasion!',
  ),
  Product(
    id: 12,
    image: "assets/images/MiniTripleChocolateMousseCakes.png",
    title: "Mini Triple Chocolate Cake",
    price: "199.000",
    color: const Color(0xFF4E7D96),
    description:
        ' Triple Chocolate Cake is a three layer Chocolate Cake. The cake is filled with whipped chocolate ganache, so every bite is a burst of chocolate! It is topped with chocolate cream cheese icing and a chocolate drip. This cake is actually very easy to assemble and is perfect for birthdays.',
  ),
  Product(
    id: 13,
    image: "assets/images/mochiicecream.png",
    title: "Mochi Ice Cream",
    price: "139.000",
    color: const Color(0xFF4E7D96),
    description:
        'The ice cream flavors the confection while the mochi adds sweetness and texture. When making mochi, it is dusted with either cornstarch, potato starch, or additional rice flour to keep it from sticking while being rolled, cut, and formed. ',
  ),
  Product(
    id: 14,
    image: "assets/images/tiramisu.png",
    title: "Tiramisu",
    price: "189.000",
    color: const Color(0xFF4E7D96),
    description:
        'Rich, Dark Flavors. Tiramisu is an elegant and rich layered Italian dessert made with delicate ladyfinger cookies, espresso or instant espresso, mascarpone cheese, eggs, sugar, Marsala wine, rum and cocoa powder. ',
  ),
  Product(
    id: 15,
    image: "assets/images/RainbowCake.png",
    title: "Rainbow Cake",
    price: "159.000",
    color: const Color(0xFF4E7D96),
    description:
        'This bright and cheerful rainbow cake features 6 cake layers enrobed in Italian buttercream. As children we are told that we could find a pot of gold at the end of the rainbow.  Years later after a couple science classes.',
  ),
  Product(
    id: 16,
    image: "assets/images/WalnutCake.png",
    title: "Walnut Cake",
    price: "299.000",
    color: const Color(0xFF4E7D96),
    description:
        'It is a rich butter cake flavored with espresso  and chopped walnuts. The cake is sandwiched together and frosted with a delicious whipped mixture of espresso (or coffee), mascarpone cheese, powdered sugar, and heavy cream',
  ),
];
