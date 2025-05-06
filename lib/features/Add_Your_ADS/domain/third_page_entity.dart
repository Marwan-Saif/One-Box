class ThirdPageEntity {
  final bool showYourNumber, areYouSureTheProductisAbleToDeliver;
  final String? weight, height, width, wheretoReciveProduct;

  ThirdPageEntity(
      {required this.showYourNumber,
      required this.areYouSureTheProductisAbleToDeliver,
      this.weight,
      this.height,
      this.width,
      this.wheretoReciveProduct});
}
