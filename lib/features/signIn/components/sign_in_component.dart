import 'package:flutter/material.dart';
import 'package:tixzilla/features/home/containers/home_screen_container.dart';
import 'package:tixzilla/features/signup/containers/signup_container.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/widgets/common/custom_button.dart';
import 'package:tixzilla/widgets/common/fade_page_transition.dart';
import 'package:tixzilla/widgets/common/signin_signup_textfields.dart';
import 'package:tixzilla/widgets/common/signin_signup_label_widget.dart';

class SignInComponent extends StatelessWidget {
  const SignInComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: appcolor.background,
        body: Container(
          decoration: BoxDecoration(
            color: appcolor.background,
            /*
            Make a feature where there is a list of these backgrounds of famous movies
            and each are assigned to a unique ID or something and when the splash screen runs,
            it is asked to pick any of those backgrounds randomly and is displayed, thus having
            different backgrounds.
             */
            image: DecorationImage(
              image: AssetImage("assets/images/background2.jpeg"),
              fit: BoxFit.cover,
              opacity: 0.7,
            ),
          ),
        ),
        bottomSheet: BottomSheet(
          backgroundColor: Colors.transparent,
          onClosing: () {},
          builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: appcolor.textfieldBackground,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("assets/images/tixzilla_logo.png", height: 60),
                      SizedBox(height: 10),
                      SigninSignUpLabel(
                        align: AlignmentDirectional.topStart,
                        child: Text(
                          "Email or Phone",
                          style: Fontstyles.interBold(context),
                        ),
                      ),
                      SizedBox(height: 5),
                      SigninSignupTextfields(
                        hinttext: "Email or Phone",
                        suffixIcon: Icon(Icons.email),
                      ),
                      SizedBox(height: 10),
                      SigninSignUpLabel(
                        align: AlignmentDirectional.topStart,
                        child: Text(
                          "Password",
                          style: Fontstyles.interBold(context),
                        ),
                      ),
                      SizedBox(height: 5),
                      SigninSignupTextfields(
                        hinttext: "Password",
                        suffixIcon: Icon(Icons.password),
                      ),
                      SigninSignUpLabel(
                        align: AlignmentDirectional.topEnd,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot password?",
                            style: Fontstyles.interBold(context),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      CustomButton(
                        text: "Sign In",
                        onTap: () {
                          // Log In
                          Navigator.pushReplacement(
                            context,
                            CustomFadeTransition(route: HomeScreenContainer()),
                          );
                        },
                      ),

                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Divider(color: appcolor.teritiaryColor),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New around these parts?",
                            style: Fontstyles.inter600w(context),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                CustomFadeTransition(
                                  route: SignUpContainer(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600,
                                color: appcolor.secondaryGradient1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
