import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/widgets/custom_elevated_button.dart';
import 'package:acuamattic_store/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordlabelController = TextEditingController();

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
                      "Iniciar Sesión",
                      style: CustomTextStyles.headlineSmallInterBlack900,
                    ),
                  ),
                ),
                CustomTextFormField(
                  controller: emailController,
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
                    controller: passwordlabelController,
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
                  text: "Iniciar Sesión",
                  margin: getMargin(
                    top: 56,
                    right: 65,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleMediumArialWhiteA700,
                  alignment: Alignment.centerRight,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      right: 22,
                    ),
                    child: Text(
                      "Registrarse",
                      style: CustomTextStyles.titleMediumInterLightblueA400
                          .copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
