import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.image,
    this.title,
    this.supplierName,
    this.price,
    this.currency,
    this.image1,
    this.label,
    this.quantity,
    this.rating,
    this.ratingText,
    this.favorite,
    this.id,
  }) {
    image = image ?? ImageConstant.imgTrenchClassiqu;
    title = title ?? "Tranch Coat";
    supplierName = supplierName ?? "Supplier Name";
    price = price ?? "1000";
    currency = currency ?? "DA";
    image1 = image1 ?? ImageConstant.imgTelevision;
    label = label ?? "Qty ";
    quantity = quantity ?? "3";
    rating = rating ?? ImageConstant.imgSignal;
    ratingText = ratingText ?? "4.5";
    favorite = favorite ?? ImageConstant.imgFavorite;
    id = id ?? "";
  }

  String? image;

  String? title;

  String? supplierName;

  String? price;

  String? currency;

  String? image1;

  String? label;

  String? quantity;

  String? rating;

  String? ratingText;

  String? favorite;

  String? id;
}
