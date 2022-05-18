import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/atomic_design/atom/lato_text.dart';
import 'package:real_estate/atomic_design/molecule/usedButton.dart';
import 'package:real_estate/controller/app_controller.dart';
import 'package:real_estate/models/payment_model.dart';
import 'package:real_estate/screens/login/login_form.dart';
import '../../atomic_design/molecule/texts_button.dart';
import '../../auth_helper/auht_helper_user.dart';
import '../../models/user_model.dart';
import '../../util/util_colors.dart';
String? emailControllerContent;

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEmpty = false;
  bool isEmptyLock = false;
  bool obscureText = true;
  String variables = "Show password";
  bool isCorrect = true;
  String uid = "";
  bool signUp = false;
  late FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FloatingActionButton(
                elevation: 0,
                onPressed: () {
                  Get.back();
                },
                backgroundColor: UtilColor.gfButton,
                child: Image.asset(
                  "assets/arrow_back.png",
                  width: 16.w,
                  height: 15.56.h,
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                children: [
                  LatoText(
                      variable: "Create your",
                      size: 25.r,
                      weight: FontWeight.w500,
                      colors: UtilColor.textColor),
                  LatoText(
                      variable: " account",
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
                  colors: UtilColor.textColor),
              SizedBox(height: 50.h),
              Container(
                padding: EdgeInsets.only(top: 9.5.w),
                decoration: BoxDecoration(
                    color: UtilColor.gfButton,
                    borderRadius: BorderRadius.circular(10.r)),
                width: 327.w,
                height: 65.h,
                child: TextFormField(
                  controller: userController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.r),
                      border: InputBorder.none,
                      hintText: isEmpty == true ? "" : "Full name",
                      prefixIcon: isEmpty == false
                          ? Image.asset("assets/profile.png")
                          : null,
                      suffixIcon: isEmpty == true
                          ? Image.asset("assets/profile.png")
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
                  controller: emailController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12.r),
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
                      contentPadding: EdgeInsets.all(12.r),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextsButton(variable: "Forgot password?", onPressed: () {}),
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
              SizedBox(height: 24.h),
              Center(
                child: UsedButton(
                  onPressed: () {
                    emailControllerContent = emailController.text;
                    print(emailControllerContent);
                    signupUserEmailAndPassword();
                    print("uid : "+ uid.toString());
                    Get.to(LoginForm());
                  },
                  stepChild: const Text("Register"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void signupUserEmailAndPassword() async {
    try {
      var _userCredential = await auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      signUp = true;
      uid = _userCredential.user!.uid;
      print(uid.toString());
      var _myUser = _userCredential.user;
      UserModel userModel = UserModel(
        email: emailController.text,
        password: passwordController.text,
        createDate: DateTime.now().toString(),
        userName: userController.text,
        unID: uid.toString(),
        houseType: [],
        paymentModel: [],
      );
      await AuthHelperUser().addUser(userModel, uid);
      if (_myUser!.emailVerified) {
        await _myUser.sendEmailVerification();
      } else {
        debugPrint('kullanıcın maili onaylanmış, ilgili sayfaya gidebilir.');
      }
      debugPrint(_userCredential.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
