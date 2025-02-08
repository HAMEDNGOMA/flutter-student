class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item(
      {required this.imgPath,
      required this.name,
      required this.price,
      this.location = "Main branch"});
}

final List<Item> items = [
  Item(name: "product1", price: 100, imgPath: "assetss/imags/1.jpg"),
  Item(name: "product2", price: 100, imgPath: "assetss/imags/2.jpg"),
  Item(name: "product3", price: 100, imgPath: "assetss/imags/3.jpg"),
  Item(name: "product4", price: 100, imgPath: "assetss/imags/4.jpg"),
  Item(
      name: "product5",
      price: 100,
      imgPath: "assetss/imags/692ccd8d30da587aa40c8e6d3d12b727.jpg"),
  Item(
      name: "product6",
      price: 100,
      imgPath: "assetss/imags/185c10a76cdf86bd6cbcc599fa2bbc0c.jpg"),
  Item(
      name: "product7",
      price: 10,
      imgPath: "assetss/imags/24bd2ebed3b97804b1062fb5684a006b.jpg"),
  Item(
      name: "product8",
      price: 100,
      imgPath: "assetss/imags/6d9e98443ca51990e4c263b905d0df20.jpg"),
];
