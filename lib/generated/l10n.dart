// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `One Box`
  String get app_name {
    return Intl.message(
      'One Box',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Step 1`
  String get step_1 {
    return Intl.message(
      'Step 1',
      name: 'step_1',
      desc: '',
      args: [],
    );
  }

  /// `Step 2`
  String get step_2 {
    return Intl.message(
      'Step 2',
      name: 'step_2',
      desc: '',
      args: [],
    );
  }

  /// `Step 3`
  String get step_3 {
    return Intl.message(
      'Step 3',
      name: 'step_3',
      desc: '',
      args: [],
    );
  }

  /// `Price Information`
  String get product_price_info {
    return Intl.message(
      'Price Information',
      name: 'product_price_info',
      desc: '',
      args: [],
    );
  }

  /// `Product Price`
  String get product_price {
    return Intl.message(
      'Product Price',
      name: 'product_price',
      desc: '',
      args: [],
    );
  }

  /// `Fixed Price`
  String get fixed_price {
    return Intl.message(
      'Fixed Price',
      name: 'fixed_price',
      desc: '',
      args: [],
    );
  }

  /// `Auction`
  String get auction_price {
    return Intl.message(
      'Auction',
      name: 'auction_price',
      desc: '',
      args: [],
    );
  }

  /// `Discounted Price`
  String get offer_price {
    return Intl.message(
      'Discounted Price',
      name: 'offer_price',
      desc: '',
      args: [],
    );
  }

  /// `Enter Text`
  String get input_text {
    return Intl.message(
      'Enter Text',
      name: 'input_text',
      desc: '',
      args: [],
    );
  }

  /// `Product SKU`
  String get sku {
    return Intl.message(
      'Product SKU',
      name: 'sku',
      desc: '',
      args: [],
    );
  }

  /// `Add Image`
  String get add_image {
    return Intl.message(
      'Add Image',
      name: 'add_image',
      desc: '',
      args: [],
    );
  }

  /// `Next Step`
  String get confirm_next {
    return Intl.message(
      'Next Step',
      name: 'confirm_next',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to show your number?`
  String get show_number {
    return Intl.message(
      'Do you want to show your number?',
      name: 'show_number',
      desc: '',
      args: [],
    );
  }

  /// `Is the product ready for delivery?`
  String get product_ready_for_delivery {
    return Intl.message(
      'Is the product ready for delivery?',
      name: 'product_ready_for_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get main {
    return Intl.message(
      'Home',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `My Auctions`
  String get auctions {
    return Intl.message(
      'My Auctions',
      name: 'auctions',
      desc: '',
      args: [],
    );
  }

  /// `Add Product`
  String get add_product {
    return Intl.message(
      'Add Product',
      name: 'add_product',
      desc: '',
      args: [],
    );
  }

  /// `My Buyers`
  String get customers {
    return Intl.message(
      'My Buyers',
      name: 'customers',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Enter Description`
  String get write_here {
    return Intl.message(
      'Enter Description',
      name: 'write_here',
      desc: '',
      args: [],
    );
  }

  /// `Choose Weight`
  String get choose_weight {
    return Intl.message(
      'Choose Weight',
      name: 'choose_weight',
      desc: '',
      args: [],
    );
  }

  /// `Choose Length`
  String get choose_length {
    return Intl.message(
      'Choose Length',
      name: 'choose_length',
      desc: '',
      args: [],
    );
  }

  /// `Choose Offer`
  String get chooseOffer {
    return Intl.message(
      'Choose Offer',
      name: 'chooseOffer',
      desc: '',
      args: [],
    );
  }

  /// `Product Receiving Warehouse`
  String get productReceivingWarehouse {
    return Intl.message(
      'Product Receiving Warehouse',
      name: 'productReceivingWarehouse',
      desc: '',
      args: [],
    );
  }

  /// `Enter Location`
  String get enterThePlace {
    return Intl.message(
      'Enter Location',
      name: 'enterThePlace',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Sale Price`
  String get salePrice {
    return Intl.message(
      'Sale Price',
      name: 'salePrice',
      desc: '',
      args: [],
    );
  }

  /// `Enter Price`
  String get enterPrice {
    return Intl.message(
      'Enter Price',
      name: 'enterPrice',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Price`
  String get purchasePrice {
    return Intl.message(
      'Purchase Price',
      name: 'purchasePrice',
      desc: '',
      args: [],
    );
  }

  /// `Current Stock Quantity`
  String get currentStockQuantity {
    return Intl.message(
      'Current Stock Quantity',
      name: 'currentStockQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Enter Quantity`
  String get enterQuantity {
    return Intl.message(
      'Enter Quantity',
      name: 'enterQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Order Limit`
  String get minimumOrderLimit {
    return Intl.message(
      'Minimum Order Limit',
      name: 'minimumOrderLimit',
      desc: '',
      args: [],
    );
  }

  /// `Auction Price:`
  String get auctionPrice {
    return Intl.message(
      'Auction Price:',
      name: 'auctionPrice',
      desc: '',
      args: [],
    );
  }

  /// `Initial Price`
  String get initialPrice {
    return Intl.message(
      'Initial Price',
      name: 'initialPrice',
      desc: '',
      args: [],
    );
  }

  /// `Final Price`
  String get finalPrice {
    return Intl.message(
      'Final Price',
      name: 'finalPrice',
      desc: '',
      args: [],
    );
  }

  /// `Deposit Percentage`
  String get depositPercentage {
    return Intl.message(
      'Deposit Percentage',
      name: 'depositPercentage',
      desc: '',
      args: [],
    );
  }

  /// `Choose Store`
  String get chooseStore {
    return Intl.message(
      'Choose Store',
      name: 'chooseStore',
      desc: '',
      args: [],
    );
  }

  /// `Store`
  String get store {
    return Intl.message(
      'Store',
      name: 'store',
      desc: '',
      args: [],
    );
  }

  /// `Expiration Date`
  String get expirationDate {
    return Intl.message(
      'Expiration Date',
      name: 'expirationDate',
      desc: '',
      args: [],
    );
  }

  /// `dd/mm/yyyy`
  String get ddmmyyyy {
    return Intl.message(
      'dd/mm/yyyy',
      name: 'ddmmyyyy',
      desc: '',
      args: [],
    );
  }

  /// `Last Date`
  String get lastDate {
    return Intl.message(
      'Last Date',
      name: 'lastDate',
      desc: '',
      args: [],
    );
  }

  /// `Enter Name`
  String get enterName {
    return Intl.message(
      'Enter Name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get productName {
    return Intl.message(
      'Product Name',
      name: 'productName',
      desc: '',
      args: [],
    );
  }

  /// `Choose Category`
  String get chooseCategory {
    return Intl.message(
      'Choose Category',
      name: 'chooseCategory',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Choose Subcategory`
  String get chooseSubCategory {
    return Intl.message(
      'Choose Subcategory',
      name: 'chooseSubCategory',
      desc: '',
      args: [],
    );
  }

  /// `Subcategory`
  String get subCategory {
    return Intl.message(
      'Subcategory',
      name: 'subCategory',
      desc: '',
      args: [],
    );
  }

  /// `Product Status`
  String get productStatus {
    return Intl.message(
      'Product Status',
      name: 'productStatus',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Choose Status`
  String get chooseStatus {
    return Intl.message(
      'Choose Status',
      name: 'chooseStatus',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Choose Country`
  String get chooseCountry {
    return Intl.message(
      'Choose Country',
      name: 'chooseCountry',
      desc: '',
      args: [],
    );
  }

  /// `Location / Region`
  String get locationRegion {
    return Intl.message(
      'Location / Region',
      name: 'locationRegion',
      desc: '',
      args: [],
    );
  }

  /// `Choose Region`
  String get chooseRegion {
    return Intl.message(
      'Choose Region',
      name: 'chooseRegion',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Choose City`
  String get chooseCity {
    return Intl.message(
      'Choose City',
      name: 'chooseCity',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Choose Location`
  String get chooseLocation {
    return Intl.message(
      'Choose Location',
      name: 'chooseLocation',
      desc: '',
      args: [],
    );
  }

  /// `Product SKU`
  String get productSKU {
    return Intl.message(
      'Product SKU',
      name: 'productSKU',
      desc: '',
      args: [],
    );
  }

  /// `Example: 12345`
  String get example12345 {
    return Intl.message(
      'Example: 12345',
      name: 'example12345',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Enter Description`
  String get enterDescription {
    return Intl.message(
      'Enter Description',
      name: 'enterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Exchange & Return Policy`
  String get exchangeReturnPolicy {
    return Intl.message(
      'Exchange & Return Policy',
      name: 'exchangeReturnPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Enter Text`
  String get enterText {
    return Intl.message(
      'Enter Text',
      name: 'enterText',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Free Delivery`
  String get free_delivery {
    return Intl.message(
      'Free Delivery',
      name: 'free_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Easy Return`
  String get easy_return {
    return Intl.message(
      'Easy Return',
      name: 'easy_return',
      desc: '',
      args: [],
    );
  }

  /// `Same Day Delivery`
  String get deliverinsameday {
    return Intl.message(
      'Same Day Delivery',
      name: 'deliverinsameday',
      desc: '',
      args: [],
    );
  }

  /// `About Product`
  String get about_product {
    return Intl.message(
      'About Product',
      name: 'about_product',
      desc: '',
      args: [],
    );
  }

  /// `Ratings`
  String get the_rating {
    return Intl.message(
      'Ratings',
      name: 'the_rating',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comments {
    return Intl.message(
      'Comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `Write your comment...`
  String get writeYourComment {
    return Intl.message(
      'Write your comment...',
      name: 'writeYourComment',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Fee`
  String get delivaryprice {
    return Intl.message(
      'Shipping Fee',
      name: 'delivaryprice',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Including Tax`
  String get includingTax {
    return Intl.message(
      'Including Tax',
      name: 'includingTax',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Complete Purchase`
  String get completePurchase {
    return Intl.message(
      'Complete Purchase',
      name: 'completePurchase',
      desc: '',
      args: [],
    );
  }

  /// `Wallet & Bills`
  String get wallet_and_bills {
    return Intl.message(
      'Wallet & Bills',
      name: 'wallet_and_bills',
      desc: '',
      args: [],
    );
  }

  /// `Order Management`
  String get order_management {
    return Intl.message(
      'Order Management',
      name: 'order_management',
      desc: '',
      args: [],
    );
  }

  /// `Payment Disputes`
  String get payment_disputes {
    return Intl.message(
      'Payment Disputes',
      name: 'payment_disputes',
      desc: '',
      args: [],
    );
  }

  /// `Shipping & Delivery`
  String get shipping_and_delivery {
    return Intl.message(
      'Shipping & Delivery',
      name: 'shipping_and_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Support Tickets`
  String get support_tickets {
    return Intl.message(
      'Support Tickets',
      name: 'support_tickets',
      desc: '',
      args: [],
    );
  }

  /// `Returns`
  String get returns {
    return Intl.message(
      'Returns',
      name: 'returns',
      desc: '',
      args: [],
    );
  }

  /// `Gifts`
  String get gifts {
    return Intl.message(
      'Gifts',
      name: 'gifts',
      desc: '',
      args: [],
    );
  }

  /// `Advertisements`
  String get advertisements {
    return Intl.message(
      'Advertisements',
      name: 'advertisements',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get chooseLanguage {
    return Intl.message(
      'Choose Language',
      name: 'chooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get arabic {
    return Intl.message(
      'English',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Next Step`
  String get nextStep {
    return Intl.message(
      'Next Step',
      name: 'nextStep',
      desc: '',
      args: [],
    );
  }

  /// `Previous Step`
  String get previousStep {
    return Intl.message(
      'Previous Step',
      name: 'previousStep',
      desc: '',
      args: [],
    );
  }

  /// `Brand: `
  String get brand {
    return Intl.message(
      'Brand: ',
      name: 'brand',
      desc: '',
      args: [],
    );
  }

  /// `Mileage: `
  String get mileage {
    return Intl.message(
      'Mileage: ',
      name: 'mileage',
      desc: '',
      args: [],
    );
  }

  /// `Material: `
  String get material {
    return Intl.message(
      'Material: ',
      name: 'material',
      desc: '',
      args: [],
    );
  }

  /// `Condition: `
  String get condition {
    return Intl.message(
      'Condition: ',
      name: 'condition',
      desc: '',
      args: [],
    );
  }

  /// `Auction Starts In`
  String get auction_starts_in {
    return Intl.message(
      'Auction Starts In',
      name: 'auction_starts_in',
      desc: '',
      args: [],
    );
  }

  /// `Auction Duration`
  String get auction_duration {
    return Intl.message(
      'Auction Duration',
      name: 'auction_duration',
      desc: '',
      args: [],
    );
  }

  /// `Auction Ends In`
  String get auction_ends_in {
    return Intl.message(
      'Auction Ends In',
      name: 'auction_ends_in',
      desc: '',
      args: [],
    );
  }

  /// `Auction End Date`
  String get auction_end_date {
    return Intl.message(
      'Auction End Date',
      name: 'auction_end_date',
      desc: '',
      args: [],
    );
  }

  /// `You have not placed a bid on this product yet`
  String get no_bids_yet {
    return Intl.message(
      'You have not placed a bid on this product yet',
      name: 'no_bids_yet',
      desc: '',
      args: [],
    );
  }

  /// `The current bid value for this item is a great opportunity`
  String get current_bid_value {
    return Intl.message(
      'The current bid value for this item is a great opportunity',
      name: 'current_bid_value',
      desc: '',
      args: [],
    );
  }

  /// `Current Bid Value:`
  String get current_bid_info {
    return Intl.message(
      'Current Bid Value:',
      name: 'current_bid_info',
      desc: '',
      args: [],
    );
  }

  /// `No Current Bids`
  String get no_bids_available {
    return Intl.message(
      'No Current Bids',
      name: 'no_bids_available',
      desc: '',
      args: [],
    );
  }

  /// `Bidder Name`
  String get bidder_name {
    return Intl.message(
      'Bidder Name',
      name: 'bidder_name',
      desc: '',
      args: [],
    );
  }

  /// `No Bidders`
  String get no_bidders {
    return Intl.message(
      'No Bidders',
      name: 'no_bidders',
      desc: '',
      args: [],
    );
  }

  /// `Region`
  String get region {
    return Intl.message(
      'Region',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Sale Type`
  String get sale_type {
    return Intl.message(
      'Sale Type',
      name: 'sale_type',
      desc: '',
      args: [],
    );
  }

  /// `Product Status`
  String get product_status {
    return Intl.message(
      'Product Status',
      name: 'product_status',
      desc: '',
      args: [],
    );
  }

  /// `Product Code`
  String get product_code {
    return Intl.message(
      'Product Code',
      name: 'product_code',
      desc: '',
      args: [],
    );
  }

  /// `Product Description`
  String get product_description {
    return Intl.message(
      'Product Description',
      name: 'product_description',
      desc: '',
      args: [],
    );
  }

  /// `Enter Bid`
  String get write_bid {
    return Intl.message(
      'Enter Bid',
      name: 'write_bid',
      desc: '',
      args: [],
    );
  }

  /// `Bidders`
  String get place_bid {
    return Intl.message(
      'Bidders',
      name: 'place_bid',
      desc: '',
      args: [],
    );
  }

  /// `Approximate Value`
  String get approximate_value {
    return Intl.message(
      'Approximate Value',
      name: 'approximate_value',
      desc: '',
      args: [],
    );
  }

  /// `Available Quantity`
  String get available_quantity {
    return Intl.message(
      'Available Quantity',
      name: 'available_quantity',
      desc: '',
      args: [],
    );
  }

  /// `Auction Type`
  String get auction_type {
    return Intl.message(
      'Auction Type',
      name: 'auction_type',
      desc: '',
      args: [],
    );
  }

  /// `Instant Purchase Price`
  String get instant_purchase_price {
    return Intl.message(
      'Instant Purchase Price',
      name: 'instant_purchase_price',
      desc: '',
      args: [],
    );
  }

  /// `Starting Bid Price`
  String get starting_bid_price {
    return Intl.message(
      'Starting Bid Price',
      name: 'starting_bid_price',
      desc: '',
      args: [],
    );
  }

  /// `Bid Increment Value`
  String get bid_increment_value {
    return Intl.message(
      'Bid Increment Value',
      name: 'bid_increment_value',
      desc: '',
      args: [],
    );
  }

  /// `Live Bidding`
  String get live_bidding {
    return Intl.message(
      'Live Bidding',
      name: 'live_bidding',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Bid`
  String get confirm_bid {
    return Intl.message(
      'Confirm Bid',
      name: 'confirm_bid',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdraw {
    return Intl.message(
      'Withdraw',
      name: 'withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Live Auction`
  String get live_auction {
    return Intl.message(
      'Live Auction',
      name: 'live_auction',
      desc: '',
      args: [],
    );
  }

  /// `My Auctions`
  String get my_auctions {
    return Intl.message(
      'My Auctions',
      name: 'my_auctions',
      desc: '',
      args: [],
    );
  }

  /// `Highest Price`
  String get highest_price {
    return Intl.message(
      'Highest Price',
      name: 'highest_price',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
