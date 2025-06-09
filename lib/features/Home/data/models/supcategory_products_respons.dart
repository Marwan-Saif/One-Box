class SupcategoryProductsResponsModel {
  List<ProductData>? data;
  PaginationLinks? links;
  Meta? meta;

  SupcategoryProductsResponsModel({this.data, this.links, this.meta});

  SupcategoryProductsResponsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ProductData>[];
      for (var v in json['data']) {
        data!.add(ProductData.fromJson(v));
      }
    }
    links =
        json['links'] != null ? PaginationLinks.fromJson(json['links']) : null;
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
  }
}

class ProductData {
  int? id;
  String? name;
  String? description;
  String? returnExchangePolicy;
  String? sku;
  String? category;
  String? categorySup;
  String? customer;
  dynamic auctionId;
  String? country;
  String? state;
  String? imagePath;
  String? createdAt;
  String? updatedAt;

  ProductData({
    this.id,
    this.name,
    this.description,
    this.returnExchangePolicy,
    this.sku,
    this.category,
    this.categorySup,
    this.customer,
    this.auctionId,
    this.country,
    this.state,
    this.imagePath,
    this.createdAt,
    this.updatedAt,
  });

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    returnExchangePolicy = json['return_exchange_policy'];
    sku = json['sku'];
    category = json['category'];
    categorySup = json['categorySup'];
    customer = json['customer'];
    auctionId = json['auction_id'];
    country = json['country'];
    state = json['state'];
    imagePath = json['image_path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
}

class PaginationLinks {
  String? first;
  String? last;
  dynamic prev;
  dynamic next;

  PaginationLinks({this.first, this.last, this.prev, this.next});

  PaginationLinks.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<MetaLink>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    if (json['links'] != null) {
      links = <MetaLink>[];
      for (var v in json['links']) {
        links!.add(MetaLink.fromJson(v));
      }
    }
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }
}

class MetaLink {
  String? url;
  String? label;
  bool? active;

  MetaLink({this.url, this.label, this.active});

  MetaLink.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }
}
