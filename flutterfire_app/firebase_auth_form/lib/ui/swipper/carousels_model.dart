class CarouselModel {
  String image;
  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'] ?? "")).toList();

var carouselsData = [
  {"image": "assets/images/su_47_2.jpg"},
  {"image": "assets/images/su_47_3.jpg"},
  {"image": "assets/images/su_47_4.png"},
];
