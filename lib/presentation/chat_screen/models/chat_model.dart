import '../../../core/app_export.dart';
import 'ellipselist_item_model.dart';
import 'userprofilelist_item_model.dart';

class ChatModel {
  List<EllipselistItemModel> ellipselistItemList = [
    EllipselistItemModel(ellipse: ImageConstant.imgEllipse180),
    EllipselistItemModel(ellipse: ImageConstant.imgEllipse181),
    EllipselistItemModel(ellipse: ImageConstant.imgEllipse182)
  ];

  List<UserprofilelistItemModel> userprofilelistItemList = [
    UserprofilelistItemModel(
        userName: "name",
        okayText: "Okay !",
        timeText: "12:14",
        userName1: "name ",
        greetingText: "Have a great day guys ! ",
        timeText1: "10:14"),
    UserprofilelistItemModel(
        userName: "name",
        okayText: "Okay !",
        timeText: "12:14",
        userName1: "name",
        greetingText: "Have a great day guys ! ",
        timeText1: "10:14")
  ];
}
