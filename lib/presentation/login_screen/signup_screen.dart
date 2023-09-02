import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/presentation/login_screen/email_confirmation_screen.dart';
import 'package:acuamattic_store/widgets/custom_elevated_button.dart';
import 'package:acuamattic_store/widgets/custom_text_form_field.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 28,
              top: 46,
              right: 28,
              bottom: 46,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage100,
                  height: getVerticalSize(140),
                  width: getHorizontalSize(242),
                  alignment: Alignment.center,
                  margin: getMargin(
                    top: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 41,
                    ),
                    child: Text(
                      "Crear cuenta",
                      style: CustomTextStyles.headlineSmallInterBlack900,
                    ),
                  ),
                ),
                CustomTextFormField(
                  controller: _emailController,
                  margin: getMargin(
                    top: 73,
                    right: 18,
                  ),
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
                  suffix: Container(
                    margin: getMargin(
                      left: 30,
                      top: 13,
                      bottom: 13,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgClose,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(44),
                  ),
                  contentPadding: getPadding(
                    left: 16,
                    top: 12,
                    bottom: 12,
                  ),
                ),
                Container(
                  width: getHorizontalSize(356),
                  margin: getMargin(
                    top: 22,
                    right: 18,
                  ),
                  decoration: AppDecoration.white,
                  child: CustomTextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    margin: getMargin(
                      left: 16,
                    ),
                    hintText: "Contraseña:",
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 13,
                        bottom: 13,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgClose,
                        onTap: () {
                          //add clear logic
                        },
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(44),
                    ),
                    contentPadding: getPadding(
                      top: 12,
                      bottom: 12,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: getVerticalSize(50),
                  width: getHorizontalSize(218),
                  text: "Registrarse",
                  margin: getMargin(
                    top: 56,
                    right: 65,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleMediumArialWhiteA700,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    print('Presss: _createAccountOnPressed');
                    _createAccountOnPressed(context);
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Metodos
  Future<void> _createAccountOnPressed(BuildContext context) async {
    //if (_formKey.currentState.validate()) {
    final email = _emailController.text;
    final password = _passwordController.text;
    try {
      var signUpResult = await Amplify.Auth.signUp(
          username: email,
          password: password,
          options: SignUpOptions(
            userAttributes: {CognitoUserAttributeKey.email: email},
          ));

      if (signUpResult.isSignUpComplete) {
        _gotToEmailConfirmationScreen(context, email);
      }
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message),
          duration: const Duration(seconds: 2),
        ),
      );
    }
    // TODO: Implment sign-up process
    // }
  }

  void _gotToEmailConfirmationScreen(BuildContext context, String email) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EmailConfirmationScreen(email: email),
      ),
    );
  }
}
