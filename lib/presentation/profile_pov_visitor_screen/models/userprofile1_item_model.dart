import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userName,
    this.timeAgo,
    this.message,
    this.id,
  }) {
    userName = userName ?? "hennane ";
    timeAgo = timeAgo ?? "3 days ago ";
    message = message ??
        "Thanks for being a great driver!  and you drove safely and responsibly ";
    id = id ?? "";
  }

  String? userName;

  String? timeAgo;

  String? message;

  String? id;
}
