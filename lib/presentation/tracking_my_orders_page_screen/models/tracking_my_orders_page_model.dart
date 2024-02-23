import '../../../core/app_export.dart';
import 'productcard1_item_model.dart';

class TrackingMyOrdersPageModel {
  List<Productcard1ItemModel> productcard1ItemList = [
    Productcard1ItemModel(
        image: ImageConstant.imgTrenchClassiqu,
        title: "Tranch Coat",
        supplierName: "Supplier Name",
        price: "1000",
        discount: "DA",
        televisionImage: ImageConstant.imgTelevision,
        quantity: "Qty ",
        quantityValue: "3",
        favoriteImage: ImageConstant.imgFavorite),
    Productcard1ItemModel(image: ImageConstant.imgTrenchClassiqu),
    Productcard1ItemModel(image: ImageConstant.imgTrenchClassiqu),
    Productcard1ItemModel(image: ImageConstant.imgTrenchClassiqu),
    Productcard1ItemModel(
        image: ImageConstant.imgTrenchClassiqu,
        title: "Tranch Coat",
        supplierName: "Supplier Name",
        price: "1000",
        discount: "DA",
        televisionImage: ImageConstant.imgTelevision,
        quantity: "Qty ",
        quantityValue: "3",
        favoriteImage: ImageConstant.imgFavorite)
  ];
}
