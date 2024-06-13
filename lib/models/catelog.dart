class Item{
final String id;
final String name;
final num price;
final String desc;
final String color;
final String image;

  Item({required this.id,
   required this.name,
    required this.price,
     required this.desc,
      required this.color,
       required this.image});

}

final products = [
Item(
id: "001",
name: "Iphone 12",
price: 200000,
desc: "Iphone 12 pro max",
color: "#33505a",
image: "https://regen.pk/cdn/shop/products/iphone-12-pro-max-434446_4dfc3a2e-5733-4d7d-9b74-ed358291a953.jpg?v=1674906982"
),

(id: "002",
name: "Samsung S24 Ultra",
price: 340000,
desc: "Samsung S24 Ultra",
color: "#33505a",
image: "https://images.samsung.com/is/image/samsung/p6pim/pk/sm-s928bzkqpkd/gallery/pk-galaxy-s24-s928-489293-sm-s928bzkqpkd-539768256?730_584_PNG"
),

(id: "003",
name: "Iphone 15 pro max",
price: 520000,
desc: "Iphone 15 pro max",
color: "#33505a",
image: "https://wisemarket.com.pk/_next/image?url=https%3A%2F%2Fmedia.wisemarket.com.pk%2Fvariant%2Finventory_26059.webp&w=3840&q=75"
),

];

