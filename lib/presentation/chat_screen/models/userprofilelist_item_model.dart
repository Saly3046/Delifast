import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userName,
    this.okayText,
    this.timeText,
    this.userName1,
    this.greetingText,
    this.timeText1,
    this.id,
  }) {
    userName = userName ?? "name";
    okayText = okayText ?? "Okay !";
    timeText = timeText ?? "12:14";
    userName1 = userName1 ?? "name ";
    greetingText = greetingText ?? "Have a great day guys ! ";
    timeText1 = timeText1 ?? "10:14";
    id = id ?? "";
  }

  String? userName;

  String? okayText;

  String? timeText;

  String? userName1;

  String? greetingText;

  String? timeText1;

  String? id;
}
