import 'package:stacked_web/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked_web/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked_web/ui/views/home/home_view.dart';
import 'package:stacked_web/ui/views/startup/startup_view.dart';
import 'package:stacked_web/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_web/services/http_service.dart';
import 'package:stacked_web/services/course_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: StartupView, initial: true),
    CustomRoute(page: HomeView),
    // @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    LazySingleton(classType: HttpService),
    LazySingleton(classType: CourseService),
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
