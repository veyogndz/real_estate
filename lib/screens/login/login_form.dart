import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/back_button.dart';
import 'package:real_estate/atomic_design/molecule/texts_button.dart';
import 'package:real_estate/atomic_design/molecule/usedButton.dart';
import 'package:real_estate/screens/account_setup/location_empty.dart';
import 'package:real_estate/screens/login/faq_support.dart';
import 'package:real_estate/screens/register/register_form.dart';
import 'package:real_estate/util/util_colors.dart';
import '../../atomic_design/molecule/gf_button.dart';
import '../../atomic_design/molecule/long_text_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late FirebaseAuth auth;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEmpty = false;
  bool isEmptyLock = false;
  bool obscureText = true;
  String variables = "Show password";
  bool isCorrect = true;

  @override
  void initState() {
    super.initState();
    auth = FirebaseAuth.instance;
    auth.authStateChanges().listen((User? user) {
      if (user == null) {
        debugPrint('User oturumu kapalı');
      } else {
        debugPrint(
            'User oturum açık ${user.email} ve email durumu ${user.emailVerified}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 29.w, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: isEmpty == false
                    ? SizedBox(
                        width: 408.w,
                        height: 142.h,
                        child: Image.asset("assets/life.png"),
                      )
                    : BackButtons(
                        onPress: () {
                          Get.back();
                        },
                        color: UtilColor.gfButton,
                        stepChild: Image.asset(
                          "assets/arrow_back.png",
                          width: 16.w,
                          height: 15.56.h,
                        ),
                      ),
              ),
              SizedBox(height: 41.h),
              Row(
                children: [
                  LatoText(
                      variable: "Let's ",
                      size: 25.r,
                      weight: FontWeight.w800,
                      colors: UtilColor.greyDark),
                  LatoText(
                      variable: "Sign In",
                      size: 25.r,
                      weight: FontWeight.w800,
                      colors: UtilColor.textColor),
                ],
              ),
              SizedBox(height: 20.h),
              LatoText(
                  variable: "quis nostrud exercitation ullamco laboris nisi ut",
                  size: 12.r,
                  weight: FontWeight.w400,
                  colors: UtilColor.greyDark),
              SizedBox(height: 34.h),
              SizedBox(
                  child: isCorrect == false
                      ? Container(
                          width: 327.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: UtilColor.greyDark,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: LatoText(
                                variable: "your password is incorrect",
                                size: 12.r,
                                weight: FontWeight.w500,
                                colors: Colors.white),
                          ),
                        )
                      : null),
              SizedBox(height: 13.h),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 9.5.w),
                    decoration: BoxDecoration(
                        color: UtilColor.gfButton,
                        borderRadius: BorderRadius.circular(10.r)),
                    width: 327.w,
                    height: 65.h,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(21.r),
                          border: InputBorder.none,
                          hintText: isEmpty == true ? "" : "Email",
                          prefixIcon: isEmpty == false
                              ? Image.asset("assets/email_blue.png")
                              : null,
                          suffixIcon: isEmpty == true
                              ? Image.asset("assets/email_blue.png")
                              : null),
                      onTap: () {
                        isEmpty = true;
                        setState(() {});
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 17.h),
                  Container(
                    padding: EdgeInsets.only(top: 9.5.w),
                    decoration: BoxDecoration(
                        color: UtilColor.gfButton,
                        borderRadius: BorderRadius.circular(10.r)),
                    width: 327.w,
                    height: 65.h,
                    child: TextFormField(
                      obscureText: obscureText,
                      controller: passwordController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(21.r),
                          border: InputBorder.none,
                          hintText: isEmptyLock == true ? "" : "Password",
                          prefixIcon: isEmptyLock == false
                              ? Image.asset("assets/lock.png")
                              : null,
                          suffixIcon: isEmptyLock == true
                              ? Image.asset("assets/lock.png")
                              : null),
                      onTap: () {
                        isEmptyLock = true;
                        setState(() {});
                      },
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextsButton(
                          variable: "Forgot password?", onPressed: () {}),
                      TextsButton(
                        variable: variables,
                        onPressed: () {
                          if (obscureText == true) {
                            obscureText = false;
                            variables = "hide password";
                          } else if (obscureText == false) {
                            obscureText = true;
                            variables = "Show password";
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  width: 278.w,
                  height: 62.h,
                  child: isEmpty == true
                      ? UsedButton(
                          onPressed: () {
                            loginUserEmailAndPassword();

                            Get.to(LocationEmpty());
                          },
                          stepChild: Text(
                            "Login",
                            style: TextStyle(fontSize: 16.r),
                          ),
                        )
                      : const SizedBox(),
                ),
              ),
              SizedBox(height: 11.h),
              SizedBox(
                width: 327.w,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        thickness: 0.5.h,
                        color: UtilColor.dividerColor,
                      ),
                    ),
                    LatoText(
                        variable: "    OR    ",
                        size: 12.r,
                        weight: FontWeight.w600,
                        colors: Colors.grey),
                    Expanded(
                      child: Divider(
                        thickness: 0.5.h,
                        color: UtilColor.dividerColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GfButton(
                      onPressed: () {
                        Get.to(const FaqSupport());
                      },
                      variable: "assets/google.png"),
                  SizedBox(width: 5.w),
                  GfButton(onPressed: () {}, variable: "assets/facebook.png")
                ],
              ),
              SizedBox(height: 40.h),
              LongTextButton(
                variable: "Don’t have an account? ",
                color: UtilColor.greyDark,
                color2: UtilColor.textColor,
                variable2: "Register",
                fontSize: 12.r,
                fontWeight: FontWeight.w400,
                fontWeight2: FontWeight.w800,
                onPressed: () {
                  Get.to(RegisterForm());
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void loginUserEmailAndPassword() async {
    try {
      var _userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      print("ididid"+_userCredential.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
