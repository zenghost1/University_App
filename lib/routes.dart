import 'package:nsutxapp/homescreen/home.dart';
import 'package:nsutxapp/loginscreen/login.dart';

var appRoutes = {
  '/': (context) => const LoginScreen(),
  '/home': (context) => const HomeScreen(),
};
