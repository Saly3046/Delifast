import '../../../core/app_export.dart';

/// This class is used in the [ellipselist_item_widget] screen.
class EllipselistItemModel {
  EllipselistItemModel({
    this.ellipse,
    this.id,
  }) {
    ellipse = ellipse ?? ImageConstant.imgEllipse180;
    id = id ?? "";
  }

  String? ellipse;

  String? id;
}
