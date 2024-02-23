import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/page_de_produit_model.dart';

/// A provider class for the PageDeProduitScreen.
///
/// This provider manages the state of the PageDeProduitScreen, including the
/// current pageDeProduitModelObj

// ignore_for_file: must_be_immutable
class PageDeProduitProvider extends ChangeNotifier {
  PageDeProduitModel pageDeProduitModelObj = PageDeProduitModel();

  @override
  void dispose() {
    super.dispose();
  }
}
