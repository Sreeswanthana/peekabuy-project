import 'package:peeka/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:peeka/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:peeka/ui/views/home/home_view.dart';
import 'package:peeka/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:peeka/ui/views/login_sign/login_sign_view.dart';
import 'package:peeka/ui/views/login/login_view.dart';
import 'package:peeka/ui/views/sign/sign_view.dart';
import 'package:peeka/ui/views/home_page/home_page_view.dart';
import 'package:peeka/ui/views/favourite/favourite_view.dart';
import 'package:peeka/ui/views/shoppingcart/shoppingcart_view.dart';
import 'package:peeka/ui/views/account/account_view.dart';
import 'package:peeka/ui/views/dasboard/dasboard_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginSignView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignView),
    MaterialRoute(page: HomePageView),
    MaterialRoute(page: FavouriteView),
    MaterialRoute(page: ShoppingcartView),
    MaterialRoute(page: AccountView),
    MaterialRoute(page: DasboardView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
