import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel({
    this.boutiqueGomezText1,
    this.boutiqueGomezText2,
    this.lsGomezEsiDzText1,
    this.lsGomezEsiDzText2,
    this.boutiqueGomezHasText,
    this.didYouLikeThisText1,
    this.didYouLikeThisText2,
    this.refuseText,
    this.id,
  }) {
    boutiqueGomezText1 = boutiqueGomezText1 ?? "boutique gomez";
    boutiqueGomezText2 = boutiqueGomezText2 ?? "boutique gomez";
    lsGomezEsiDzText1 = lsGomezEsiDzText1 ?? "ls_gomez@esi.dz";
    lsGomezEsiDzText2 = lsGomezEsiDzText2 ?? "ls_gomez@esi.dz";
    boutiqueGomezHasText = boutiqueGomezHasText ??
        "boutique gomez has offered you 70000 DA\nfor 7 trench coats. ";
    didYouLikeThisText1 = didYouLikeThisText1 ?? "Did you like this offer ?";
    didYouLikeThisText2 = didYouLikeThisText2 ?? "Did you like this offer ?";
    refuseText = refuseText ?? "refuse";
    id = id ?? "";
  }

  String? boutiqueGomezText1;

  String? boutiqueGomezText2;

  String? lsGomezEsiDzText1;

  String? lsGomezEsiDzText2;

  String? boutiqueGomezHasText;

  String? didYouLikeThisText1;

  String? didYouLikeThisText2;

  String? refuseText;

  String? id;
}
