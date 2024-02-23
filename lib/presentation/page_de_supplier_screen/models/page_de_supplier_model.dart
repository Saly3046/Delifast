import '../../../core/app_export.dart';
import 'ellipse_item_model.dart';
import 'userprofilelist2_item_model.dart';

class PageDeSupplierModel {
  List<EllipseItemModel> ellipseItemList = [
    EllipseItemModel(ellipse: ImageConstant.imgEllipse18043x43),
    EllipseItemModel(ellipse: ImageConstant.imgEllipse18143x43),
    EllipseItemModel(ellipse: ImageConstant.imgEllipse18243x43)
  ];

  List<Userprofilelist2ItemModel> userprofilelist2ItemList = [
    Userprofilelist2ItemModel(
        computerText: "Computer",
        supplierName: "Supplier Name",
        price: "700",
        discount: "DA")
  ];
}
