import '../../../core/app_export.dart';
import 'productcard_item_model.dart';

class OrderHistoryPageModel {
  List<ProductcardItemModel> productcardItemList = [
    ProductcardItemModel(
        image: ImageConstant.imgTrenchClassiqu,
        title: "Tranch Coat",
        supplierName: "Supplier Name",
        price: "1000",
        currency: "DA",
        image1: ImageConstant.imgTelevision,
        label: "Qty ",
        quantity: "3",
        rating: ImageConstant.imgSignal,
        ratingText: "4.5",
        favorite: ImageConstant.imgFavorite),
    ProductcardItemModel(
        image: ImageConstant.imgTrenchClassiqu,
        title: "Tranch Coat",
        supplierName: "Supplier Name",
        price: "1000",
        currency: "DA",
        image1: ImageConstant.imgTelevision,
        label: "Qty ",
        quantity: "3",
        favorite: ImageConstant.imgFavorite)
  ];
}
