import '../../../core/app_export.dart';

/// This class is used in the [ellipse_item_widget] screen.
class EllipseItemModel {
  EllipseItemModel({
    this.ellipse,
    this.id,
  }) {
    ellipse = ellipse ?? ImageConstant.imgEllipse18043x43;
    id = id ?? "";
  }

  String? ellipse;

  String? id;
}
