class SecondPageEntity {
  // Auction product fields
  final double? startSalary;
  final double? endSalary;
  final double? depositPercentage;
  final String? place;
  final String? endDate;
  final String? lastPaymentDate;

  // Normal product fields
  final double? sellingPrice;
  final double? buyingPrice;
  final int? quantity;
  final int? minimumOrderQuantity;

  // Private constructor for internal use
  SecondPageEntity._({
    this.startSalary,
    this.endSalary,
    this.depositPercentage,
    this.place,
    this.endDate,
    this.lastPaymentDate,
    this.sellingPrice,
    this.buyingPrice,
    this.quantity,
    this.minimumOrderQuantity,
  });

  // Factory constructor for Auction Product
  factory SecondPageEntity.auctionProduct({
    required double startSalary,
    required double endSalary,
    required double depositPercentage,
    required String place,
    required String endDate,
    required String lastPaymentDate,
  }) {
    return SecondPageEntity._(
      startSalary: startSalary,
      endSalary: endSalary,
      depositPercentage: depositPercentage,
      place: place,
      endDate: endDate,
      lastPaymentDate: lastPaymentDate,
    );
  }

  // Factory constructor for Normal Product
  factory SecondPageEntity.normalProduct({
    required double sellingPrice,
    required double buyingPrice,
    required int quantity,
    int? minimumOrderQuantity,
  }) {
    return SecondPageEntity._(
      sellingPrice: sellingPrice,
      buyingPrice: buyingPrice,
      quantity: quantity,
      minimumOrderQuantity: minimumOrderQuantity,
    );
  }

  @override
  String toString() {
    if (startSalary != null) {
      return 'Auction Product:  Start Salary: $startSalary, End Salary: $endSalary, Deposit: $depositPercentage%, Place: $place, End Date: $endDate, Last Payment Date: $lastPaymentDate';
    } else {
      return 'Normal Product:  Selling Price: $sellingPrice, Buying Price: $buyingPrice, Quantity: $quantity, Minimum Order: $minimumOrderQuantity';
    }
  }
}

