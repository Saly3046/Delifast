import 'package:flutter/material.dart';
import '../presentation/my_order_history_page_screen/my_order_history_page_screen.dart';
import '../presentation/iphone_11_pro_max_two_screen/iphone_11_pro_max_two_screen.dart';
import '../presentation/iphone_11_pro_max_four_screen/iphone_11_pro_max_four_screen.dart';
import '../presentation/iphone_11_pro_max_five_screen/iphone_11_pro_max_five_screen.dart';
import '../presentation/iphone_11_pro_max_six_screen/iphone_11_pro_max_six_screen.dart';
import '../presentation/iphone_11_pro_max_seven_screen/iphone_11_pro_max_seven_screen.dart';
import '../presentation/order_history_page_screen/order_history_page_screen.dart';
import '../presentation/home_page_client_container_screen/home_page_client_container_screen.dart';
import '../presentation/page_de_produit_screen/page_de_produit_screen.dart';
import '../presentation/checkout_screen/checkout_screen.dart';
import '../presentation/iphone_11_pro_max_eleven_screen/iphone_11_pro_max_eleven_screen.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/notification_page_for_client_screen/notification_page_for_client_screen.dart';
import '../presentation/chat_bot_pana_one_screen/chat_bot_pana_one_screen.dart';
import '../presentation/tracking_my_orders_page_screen/tracking_my_orders_page_screen.dart';
import '../presentation/profile_client_pov_interne_screen/profile_client_pov_interne_screen.dart';
import '../presentation/home_page_onlt_products_tab_container_screen/home_page_onlt_products_tab_container_screen.dart';
import '../presentation/page_de_supplier_screen/page_de_supplier_screen.dart';
import '../presentation/chatone_screen/chatone_screen.dart';
import '../presentation/profile_pov_visitor_screen/profile_pov_visitor_screen.dart';
import '../presentation/chatthree_screen/chatthree_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String myOrderHistoryPageScreen =
      '/my_order_history_page_screen';

  static const String iphone11ProMaxTwoScreen = '/iphone_11_pro_max_two_screen';

  static const String iphone11ProMaxFourScreen =
      '/iphone_11_pro_max_four_screen';

  static const String iphone11ProMaxFiveScreen =
      '/iphone_11_pro_max_five_screen';

  static const String iphone11ProMaxSixScreen = '/iphone_11_pro_max_six_screen';

  static const String iphone11ProMaxSevenScreen =
      '/iphone_11_pro_max_seven_screen';

  static const String orderHistoryPageScreen = '/order_history_page_screen';

  static const String homePageClientPage = '/home_page_client_page';

  static const String homePageClientContainerScreen =
      '/home_page_client_container_screen';

  static const String pageDeProduitScreen = '/page_de_produit_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String iphone11ProMaxElevenScreen =
      '/iphone_11_pro_max_eleven_screen';

  static const String chatScreen = '/chat_screen';

  static const String notificationPageForClientScreen =
      '/notification_page_for_client_screen';

  static const String chatBotPanaOneScreen = '/chat_bot_pana_one_screen';

  static const String trackingMyOrdersPageScreen =
      '/tracking_my_orders_page_screen';

  static const String profileClientPovInterneScreen =
      '/profile_client_pov_interne_screen';

  static const String homePageOnltProductsPage =
      '/home_page_onlt_products_page';

  static const String homePageOnltProductsTabContainerScreen =
      '/home_page_onlt_products_tab_container_screen';

  static const String pageDeSupplierScreen = '/page_de_supplier_screen';

  static const String chatoneScreen = '/chatone_screen';

  static const String profilePovVisitorScreen = '/profile_pov_visitor_screen';

  static const String chatthreeScreen = '/chatthree_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        myOrderHistoryPageScreen: MyOrderHistoryPageScreen.builder,
        iphone11ProMaxTwoScreen: Iphone11ProMaxTwoScreen.builder,
        iphone11ProMaxFourScreen: Iphone11ProMaxFourScreen.builder,
        iphone11ProMaxFiveScreen: Iphone11ProMaxFiveScreen.builder,
        iphone11ProMaxSixScreen: Iphone11ProMaxSixScreen.builder,
        iphone11ProMaxSevenScreen: Iphone11ProMaxSevenScreen.builder,
        orderHistoryPageScreen: OrderHistoryPageScreen.builder,
        homePageClientContainerScreen: HomePageClientContainerScreen.builder,
        pageDeProduitScreen: PageDeProduitScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        iphone11ProMaxElevenScreen: Iphone11ProMaxElevenScreen.builder,
        chatScreen: ChatScreen.builder,
        notificationPageForClientScreen:
            NotificationPageForClientScreen.builder,
        chatBotPanaOneScreen: ChatBotPanaOneScreen.builder,
        trackingMyOrdersPageScreen: TrackingMyOrdersPageScreen.builder,
        profileClientPovInterneScreen: ProfileClientPovInterneScreen.builder,
        homePageOnltProductsTabContainerScreen:
            HomePageOnltProductsTabContainerScreen.builder,
        pageDeSupplierScreen: PageDeSupplierScreen.builder,
        chatoneScreen: ChatoneScreen.builder,
        profilePovVisitorScreen: ProfilePovVisitorScreen.builder,
        chatthreeScreen: ChatthreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone11ProMaxFourScreen.builder
      };
}
