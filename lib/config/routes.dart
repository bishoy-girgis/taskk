import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/service%20category/ChooseCraftsMan.dart';

import '../modules/Booking/booking-page.dart';
import '../modules/craftsman/notification_screen.dart';
import '../modules/customer/editProfile/edit_profile.dart';
import '../modules/customer/editProfile/homepage.dart';
import '../modules/customer/editProfile/profile_page.dart';
import '../modules/customer/editProfile/reset_password.dart';
import '../modules/service category/ServiceCategory.dart';
import '../modules/welcome/loading-page.dart';
import '../modules/craftsman/home/crafs-home.dart';
import '../shared/components/crafsman-footer.dart';


class Routes {
  static const String profilePage = 'profilePage';
  static const String profileIndex = 'profileIndex';
  static const String homePage = 'homePage';
  static const String editProfilePage = 'editProfile';
  static const String resetPasswordPage = 'resetPassword';
  static const String notificationPage = 'notificationPage';
  static const String craftsManDetails = 'craftsManDetails';
  static const String loadingPage = '/';
  static const String bookingPage = 'BookingPage';
  static const String serviceCregory = 'ServiceCregory';
  static const String chooseCraftsMan = 'chooseCraftsMan';
  static const String crafsHomePage = 'CrafsHomePage';
  static const String crafsFooter = 'CrafsFooter';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loadingPage:
        return MaterialPageRoute(builder: (context) => const LoadingPage());
      case Routes.profilePage:
        return MaterialPageRoute(builder: (context) => ProfilePage());
      case Routes.editProfilePage:
        return MaterialPageRoute(builder: (context) => const EditProfile());
      case Routes.homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case Routes.resetPasswordPage:
        return MaterialPageRoute(builder: (context) => const ResetPassword());
      case Routes.profileIndex:
        //return MaterialPageRoute(builder: (context) => const Profile());
      case Routes.notificationPage:
        return MaterialPageRoute(builder: (context) => NotificationPage());
      case Routes.craftsManDetails:
        //return MaterialPageRoute(
           // builder: (context) => const CraftsManDetails()
           // );
      case Routes.bookingPage:
        return MaterialPageRoute(builder: (context) => const BookingPage());
      case Routes.chooseCraftsMan:
        return MaterialPageRoute(builder: (context) =>  ChooseCraftsManPage());
      case Routes.serviceCregory :
        return MaterialPageRoute(builder: (context) => const ServiceCregory());
      case Routes.crafsHomePage :
        return MaterialPageRoute(builder: (context) => const CrafsHomePage());
      case Routes.crafsFooter :
        return MaterialPageRoute(builder: (context) => const CrafsFooter());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}


/*import 'package:flutter/material.dart';
import 'package:sanai3ey/modules/craftsman_details/craftsman_details.dart';

import '../modules/eman_ezz/edit_profile.dart';
import '../modules/eman_ezz/home_page.dart';
import '../modules/eman_ezz/notification_screen.dart';
import '../modules/eman_ezz/profile_index.dart';
import '../modules/eman_ezz/profile_page.dart';
import '../modules/eman_ezz/reset_password.dart';
import '../modules/welcome/loading-page.dart';
import '../modules/welcome/welcome-Page.dart';
import '../modules/auth/login/login-page.dart';
import '../modules/auth/register-page.dart';*/


/*class Routes {
  static const String profilePage = 'profilePage';
  static const String profileIndex = 'profileIndex';
  static const String homePage = 'HomePage';
  static const String LoadingPage = '/';
  static const String editProfilePage = 'editProfile';
  static const String resetPasswordPage = 'resetPassword';
  static const String notificationPage = 'notificationPage';
  static const String craftsManDetails = 'craftsManDetails';
}
class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.LoadingPage: // Loading Page
        return MaterialPageRoute(builder: (context) => const LoadingPage());
      case 'RegisterPage':
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      case 'LoginPage':
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case 'welcomePage':
        return MaterialPageRoute(builder: (context) => const WelcomePage());
      case Routes.profilePage:
        return MaterialPageRoute(builder: (context) => ProfilePage());
      case Routes.editProfilePage:
        return MaterialPageRoute(builder: (context) => const EditProfile());
      case Routes.homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case Routes.resetPasswordPage:
        return MaterialPageRoute(builder: (context) => const ResetPassword());
      case Routes.profileIndex:
        return MaterialPageRoute(builder: (context) => const Profile());
      case Routes.notificationPage:
        return MaterialPageRoute(builder: (context) => NotificationPage());
      case Routes.craftsManDetails:
        return MaterialPageRoute(
            builder: (context) => const CraftsManDetails());
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}*/