import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/presentation/home_page/home_page.dart';
import 'package:acuamattic_store/widgets/custom_elevated_button.dart';
import 'package:acuamattic_store/widgets/custom_text_form_field.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class EmailConfirmationScreen extends StatelessWidget {
  final String email;

  EmailConfirmationScreen({Key? key, required this.email})
      : super(
          key: key,
        );

  //TextEditingController _emailController = TextEditingController();
  TextEditingController _confirmationCodeController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
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
                      "An email confirmation code is sent to $email. Please type the code to confirm your email.",
                      style: CustomTextStyles.headlineSmallInterBlack900,
                    ),
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
                    controller: _confirmationCodeController,
                    margin: getMargin(
                      left: 0,
                    ),
                    hintText: "Código de confirmación",
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
                      left: 16,
                      top: 12,
                      bottom: 12,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Confirmation Code.";
                      }

                      return null;
                    },
                  ),
                ),
                CustomElevatedButton(
                  height: getVerticalSize(50),
                  width: getHorizontalSize(218),
                  text: "Confirmar",
                  margin: getMargin(
                    top: 56,
                    right: 65,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleMediumArialWhiteA700,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    print('Presss: _createAccountOnPressed');
                    //_createAccountOnPressed(context);
                    _submitConfirmationCode(context);
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

  Future<void> _submitConfirmationCode(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      final confirmationCode = _confirmationCodeController.text;
      try {
        final SignUpResult response = await Amplify.Auth.confirmSignUp(
          username: email,
          confirmationCode: confirmationCode,
        );
        if (response.isSignUpComplete) {
          _gotoHomePageScreen(context);
        }
      } on AuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  void _gotoHomePageScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const HomePage()));
  }
}
