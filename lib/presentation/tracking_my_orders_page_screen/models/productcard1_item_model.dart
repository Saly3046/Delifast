import '../../../core/app_export.dart';

/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {
  Productcard1ItemModel({
    this.image,
    this.title,
    this.supplierName,
    this.price,
    this.discount,
    this.televisionImage,
    this.quantity,
    this.quantityValue,
    this.favoriteImage,
    this.id,
  }) {
    image = image ?? ImageConstant.imgTrenchClassiqu;
    title = title ?? "Tranch Coat";
    supplierName = supplierName ?? "Supplier Name";
    price = price ?? "1000";
    discount = discount ?? "DA";
    televisionImage = televisionImage ?? ImageConstant.imgTelevision;
    quantity = quantity ?? "Qty ";
    quantityValue = quantityValue ?? "3";
    favoriteImage = favoriteImage ?? ImageConstant.imgFavorite;
    id = id ?? "";
  }

  String? image;

  String? title;

  String? supplierName;

  String? price;

  String? discount;

  String? televisionImage;

  String? quantity;

  String? quantityValue;

  String? favoriteImage;

  String? id;
}
