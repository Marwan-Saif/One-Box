import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_box/features/Add_Your_ADS/domain/first_page_entity.dart';
import 'package:one_box/features/Add_Your_ADS/domain/second_page_entity.dart';

part 'add_ads_state.dart';

class AddAdsCubit extends Cubit<AddAdsState> {
  static AddAdsCubit get(context) => BlocProvider.of(context);

  AddAdsCubit() : super(AddAdsInitial());

  bool fixedPrice = true;
  int currentStep = 0;
//*******first page controllers */
  final TextEditingController proudctNameController = TextEditingController();
  final TextEditingController productQuantityController =
      TextEditingController();
  final TextEditingController skuProductController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController exchangeReturnPolicyController =
      TextEditingController();

  late FirstPageEntity firstPageEntity;

  void firstStepData(
      {required String category,
      String? subCategory,
      String? status,
      String? country,
      String? region,
      String? city,
      String? location,
      bool fixedPrice = true}) {
    firstPageEntity = FirstPageEntity(
      fixedPrice: fixedPrice,
      proudctName: proudctNameController.text,
      productCatigory: category,
      productsecondaryCatigory: subCategory,
      productQuantity: productQuantityController.text,
      status: status,
      country: country,
      region: region,
      city: city,
      location: location,
      skuProduct: skuProductController.text,
      productDescription: productDescriptionController.text,
      exchangeReturnPolicy: exchangeReturnPolicyController.text,
    );
    log("Ads Cubit first page date ${firstPageEntity.proudctName}");
  }
//*******second page controllers */

  final TextEditingController startPriceController = TextEditingController();
  final TextEditingController endPriceController = TextEditingController();
  final TextEditingController depositPercentageController =
      TextEditingController();
  final TextEditingController choseLocationController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

//fixed price controllers
  final TextEditingController sellingPriceController = TextEditingController();
  final TextEditingController purcahesPriceController = TextEditingController();
  final TextEditingController currentStockController = TextEditingController();
  final TextEditingController minimumOrderController = TextEditingController();

  late SecondPageEntity secondPageEntity;

  void secondStepData() {
    if (fixedPrice) {
      secondPageEntity = SecondPageEntity.normalProduct(
        sellingPrice: double.parse(sellingPriceController.text),
        buyingPrice: double.parse(purcahesPriceController.text),
        quantity: int.parse(currentStockController.text),
        minimumOrderQuantity: minimumOrderController.text.isNotEmpty
            ? int.parse(minimumOrderController.text)
            : 1, // Default value if the text is empty,
      );
    } else {
      secondPageEntity = SecondPageEntity.auctionProduct(
        startSalary: double.parse(startPriceController.text),
        endSalary: double.parse(endPriceController.text),
        depositPercentage: double.parse(depositPercentageController.text),
        place: choseLocationController.text,
        endDate: endDateController.text,
        lastPaymentDate: startDateController.text,
      );
    }
  }

//**************thired page */
  final TextEditingController productReceivingWarehouse =
      TextEditingController();
//*********** *////

  //**** #############*/
  void changeFixedPrice(bool value) {
    // emit(AddAdsLoading());
    fixedPrice = value;
    log('fixed in cubit $fixedPrice');
    // emit(AddAdsSuccess());
  }

  void changeCurrentStep(int index) {
    emit(AddAdsLoading());
    currentStep = index;
    emit(AddAdsSuccess());
  }
}
