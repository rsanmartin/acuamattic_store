import 'package:acuamattic_store/presentation/login_screen/email_confirmation_screen.dart';
import 'package:acuamattic_store/presentation/login_screen/login_screen.dart';
import 'package:acuamattic_store/presentation/login_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/scheduler.dart';
import 'package:acuamattic_store/theme/theme_helper.dart';
//import 'package:acuamattic_store/routes/app_routes.dart';
import 'package:acuamattic_store/amplifyconfiguration.dart';
//import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'acuamattic_app',
      debugShowCheckedModeBanner: false,
      //initialRoute: AppRoutes.appNavigationScreen,
      //routes: AppRoutes.routes,
      home: AmplifyAuth(),
    );
  }
}

class AmplifyAuth extends StatefulWidget {
  AmplifyAuth({Key? key}) : super(key: key);

  @override
  _AmplifyAuthState createState() => _AmplifyAuthState();
}

class _AmplifyAuthState extends State<AmplifyAuth> {
  bool _amplifyConfigured = false;
  //final _amplifyInstance = Amplify();

  Future<void> _configureAmplify() async {
    try {
      AmplifyAuthCognito auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);
      await Amplify.configure(amplifyconfig);

      setState(() => _amplifyConfigured = true);
    } catch (e) {
      print(e);
      setState(() => _amplifyConfigured = false);
    }
    setState(() => _amplifyConfigured = true);

    print('_amplifyConfigured: $_amplifyConfigured');
  }

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
    //return SignUpScreen();
    /*return EmailConfirmationScreen(
      email: 'rsanmartin@iuvity.com',
    );*/
  }
}
