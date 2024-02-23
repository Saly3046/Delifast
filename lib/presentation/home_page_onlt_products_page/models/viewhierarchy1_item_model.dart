import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.computerText,
    this.supplierName,
    this.price,
    this.currency,
    this.id,
  }) {
    computerText = computerText ?? "Computer";
    supplierName = supplierName ?? "Supplier Name";
    price = price ?? "700";
    currency = currency ?? "DA";
    id = id ?? "";
  }

  String? computerText;

  String? supplierName;

  String? price;

  String? currency;

  String? id;
}
