import 'package:driver_app/features/home_feature/presentation/views/home_view.dart';
import 'package:driver_app/features/home_feature/presentation/views/notification_screen.dart';
import 'package:driver_app/features/order_feature/presentation/view/filter_result_screen.dart';
import 'package:driver_app/features/order_feature/presentation/view/order_detail_screen.dart';
import 'package:driver_app/features/order_feature/presentation/view/order_filtration.dart';
import 'package:driver_app/features/order_feature/presentation/view/order_view.dart';
import 'package:driver_app/features/order_feature/presentation/view/report_issue_screen.dart';
import 'package:driver_app/features/providers_feature/presentation/view/providers_view.dart';
import 'package:driver_app/features/side_menu_feature/presentation/view/profile_screen.dart';
import 'package:driver_app/features/side_menu_feature/presentation/view/terms_and_conditions.dart';
import 'package:driver_app/features/support_feature/presentation/view/support_view.dart';
import 'package:driver_app/root_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/login_feature/presentation/view/login_view.dart';
import '../../features/splash_feature/presentation/view/splash_view.dart';
import '../component/custom_issue_sent_screen.dart';
import '../component/page_transition.dart';

abstract class AppRoute
{
  static const kLoginView = '/loginView';
  static const kHomeView = '/homeView';
  static const kOrderView = '/orderView';
  static const kSupportView = '/supportView';
  static const kProviderView = '/providerView';
  static const kRootScreen ='/rootScreen';
  static const kOrderDetailScreen ='/orderDetailsScreen';
  static const kProfileScreen ='/profileScreen';
  static const kOrderFiltrationScreen ='/OrderFiltrationScreen';
  static const kFilterResultScreen ='/FilterResultScreen';
  static const kReportIssueScreen ='/reportIssueScreen';
  static const kSuccessScreen='/successScreen';
  static const kNotificationScreen = '/notificationScreen';
  static const kTermsScreen='/termsScreen';
  static final router =GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder:(context,state)=>const SplashView(),
        ),
        GoRoute(
          path: kLoginView,
          builder:(context,state)=>const LoginView(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const LoginView(),
          ),
        ),
        GoRoute(
          path: kHomeView,
          builder:(context,state)=>const HomeView(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const HomeView(),
          ),
        ),
        GoRoute(
          path: kOrderView,
          builder:(context,state)=>const OrderView(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const OrderView(),
          ),
        ),
        GoRoute(
          path: kProviderView,
          builder:(context,state)=>const ProvidersView(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const ProvidersView(),
          ),
        ),
        GoRoute(
          path: kSupportView,
          builder:(context,state)=>const SupportView(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const SupportView(),
          ),
        ),
        GoRoute(
          path: kRootScreen,
          builder:(context,state)=>const RootScreen(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const RootScreen(),
          ),
        ),
        GoRoute(
          path: kOrderDetailScreen,
          builder:(context,state)=>const OrderDetailScreen(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const OrderDetailScreen(),
          ),
        ),
        GoRoute(
          path: kProfileScreen,
          builder:(context,state)=>const ProfileScreen(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const ProfileScreen(),
          ),
        ),
        GoRoute(
          path: kOrderFiltrationScreen,
          builder:(context,state)=>const OrderFiltrationScreen(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const OrderFiltrationScreen(),
          ),
        ),
        GoRoute(
          path: kFilterResultScreen,
          builder:(context,state)=>const FilterResultScreen(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const FilterResultScreen(),
          ),
        ),
        GoRoute(
          path: kReportIssueScreen,
          builder:(context,state)=>const ReportIssueScreen(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const ReportIssueScreen(),
          ),
        ),
        GoRoute(
          path: kSuccessScreen,
          builder:(context,state)=>const CustomIssueSentSuccess(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const CustomIssueSentSuccess(),
          ),
        ),
        GoRoute(
          path: kNotificationScreen,
          builder:(context,state)=>const NotificationScreen(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const NotificationScreen(),
          ),
        ),
        GoRoute(
          path: kTermsScreen,
          builder:(context,state)=>const TermsAndConditions(),
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const TermsAndConditions(),
          ),
        ),
      ]
  );
}

