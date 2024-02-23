import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist2_item_widget] screen.
class Userprofilelist2ItemModel {
  Userprofilelist2ItemModel({
    this.computerText,
    this.supplierName,
    this.price,
    this.discount,
    this.id,
  }) {
    computerText = computerText ?? "Computer";
    supplierName = supplierName ?? "Supplier Name";
    price = price ?? "700";
    discount = discount ?? "DA";
    id = id ?? "";
  }

  String? computerText;

  String? supplierName;

  String? price;

  String? discount;

  String? id;
}
