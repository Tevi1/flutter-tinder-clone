import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dating/values/values.dart';
import 'package:flutter_dating/widgets/custom_button.dart';
import 'package:flutter_dating/widgets/custom_divider.dart';
import 'package:flutter_dating/widgets/custom_text_form_field.dart';
import 'package:flutter_dating/widgets/spaces.dart';
import 'package:flutter_dating/routes/router.gr.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: heightOfScreen * 0.15),
                Expanded(
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        Text(
                          StringConst.SIGN_IN,
                          textAlign: TextAlign.center,
                          style: textTheme.displayMedium,
                        ),
                        SpaceH20(),
                        _buildForm()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      context.router.push(SignUpScreenRoute()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(StringConst.DONT_HAVE_AN_ACCOUNT,
                          style: textTheme.headlineSmall?.copyWith(
                            color: AppColors.blackShade9,
                            fontWeight: FontWeight.w600,
                          )),
                      SpaceW16(),
                      Text(
                        StringConst.REGISTER,
                        style: textTheme.headlineSmall?.copyWith(
                          color: AppColors.lightBlue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SpaceH20(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildForm() {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: <Widget>[
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.EMAIL_ADDRESS,
          border: Borders.outlineBorder,
          enabledBorder: Borders.outlineEnabledBorder,
          focusedBorder: Borders.outlineFocusedBorder,
          labelStyle: Styles.customTextStyle2(),
          hintTextStyle: Styles.customTextStyle2(),
          textStyle: Styles.customTextStyle2(),
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.PASSWORD,
          obscured: true,
          border: Borders.outlineBorder,
          enabledBorder: Borders.outlineEnabledBorder,
          focusedBorder: Borders.outlineFocusedBorder,
          labelStyle: Styles.customTextStyle2(),
          hintTextStyle: Styles.customTextStyle2(),
          textStyle: Styles.customTextStyle2(),
        ),
        SpaceH8(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              StringConst.FORGOT_PASSWORD,
              style: textTheme.headlineSmall?.copyWith(
                color: AppColors.lightBlue,
              ),
            ),
          ],
        ),
        SpaceH20(),
        CustomButton(
          title: StringConst.SIGN_IN,
          textStyle: textTheme.headlineMedium?.copyWith(color: AppColors.white),
          color: AppColors.pinkShade2,
          onPressed:()=> context.router.push(HomePageRoute()),
        ),
        SpaceH16(),
        _buildSeparator(),
        SpaceH16(),
        CustomButton(
          title: StringConst.SIGN_IN_WITH_GOOGLE,
          textStyle: textTheme.headlineMedium,
          hasIcon: true,
          color: AppColors.white,
          onPressed: ()=> context.router.push(HomePageRoute()),
          // icon: Image.asset(
          //   ImagePath.GOOGLE_LOGO,
          //   height: Sizes.HEIGHT_25,
          //   width: Sizes.WIDTH_25,
          // ),
        ),
      ],
    );
  }

  Widget _buildSeparator() {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.MARGIN_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CustomDivider(color: AppColors.black),
          ),
          SpaceW8(),
          Text(StringConst.OR, style: textTheme.headlineMedium),
          SpaceW8(),
          Expanded(child: CustomDivider(color: AppColors.black)),
        ],
      ),
    );
  }
}
