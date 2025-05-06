class FirstPageEntity {
  final bool fixedPrice;
  final String proudctName, productCatigory;
  final String? productsecondaryCatigory,
      productDescription,
      productQuantity,
      status,
      country,
      city,
      region,
      location,
      skuProduct,
      exchangeReturnPolicy;

  FirstPageEntity({
    required this.fixedPrice,
    required this.proudctName,
    required this.productCatigory,
    this.productsecondaryCatigory,
    this.productDescription,
    this.productQuantity,
    this.status,
    this.country,
    this.city,
    this.region,
    this.location,
    this.skuProduct,
    this.exchangeReturnPolicy,
  });
}
