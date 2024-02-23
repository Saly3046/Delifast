import '../../../core/app_export.dart';

/// This class is used in the [homepageclientlist_item_widget] screen.
class HomepageclientlistItemModel {
  HomepageclientlistItemModel({
    this.fbbca,
    this.id,
  }) {
    fbbca = fbbca ?? ImageConstant.img83f0bb6c3a844;
    id = id ?? "";
  }

  String? fbbca;

  String? id;
}
