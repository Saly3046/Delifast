import '../../../core/app_export.dart';

/// This class is used in the [box4section_item_widget] screen.
class Box4sectionItemModel {
  Box4sectionItemModel({
    this.status,
    this.isSelected,
  }) {
    status = status ?? "Supplier";
    isSelected = isSelected ?? false;
  }

  String? status;

  bool? isSelected;
}
