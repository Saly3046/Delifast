import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/page_de_supplier_model.dart';
import '../models/ellipse_item_model.dart';
import '../models/userprofilelist2_item_model.dart';

/// A provider class for the PageDeSupplierScreen.
///
/// This provider manages the state of the PageDeSupplierScreen, including the
/// current pageDeSupplierModelObj

// ignore_for_file: must_be_immutable
class PageDeSupplierProvider extends ChangeNotifier {
  PageDeSupplierModel pageDeSupplierModelObj = PageDeSupplierModel();

  @override
  void dispose() {
    super.dispose();
  }
}
