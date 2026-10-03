import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/auth/login_controller.dart';
import 'package:project/core/class/handlingdataview.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/core/functions/alertexitapp.dart';
import 'package:project/core/functions/validinput.dart';
import 'package:project/view/widget/auth/custombuttonauth.dart';
import 'package:project/signupPage/textfiled.dart';
import 'package:project/view/widget/auth/login/login_header.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());

    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest!,
            widget: SafeArea(
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const LoginHeader(),
                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 12),
                          Text(
                            "مرحباً بك مجدداً",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(
                                  color: const Color(0xff1F2937),
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "سجل دخولك للوصول إلى فريقك الدراسية",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff6B7280),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 35),

                          CustomTextfiledAuth(
                            labeltext: "الرقم الجامعي / البريد",
                            hinttext: "@std-edu.jo",
                            iconData: Icons.person_outline,
                            mycontroller: controller.email,
                            valid: (val) {
                              return validInput(val!, 3, 100, "email");
                            },
                            isNumber: false,
                          ),

                          const SizedBox(height: 20),

                          GetBuilder<LoginControllerImp>(
                            builder: (_) => CustomTextfiledAuth(
                              labeltext: "كلمة المرور",
                              hinttext: "***********",
                              iconData: controller.isshowpassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              mycontroller: controller.password,
                              obscureText: controller.isshowpassword,
                              onTapIcon: () {
                                controller.showPassword();
                              },
                              valid: (val) {
                                return validInput(val!, 3, 30, "password");
                              },
                              isNumber: false,
                            ),
                          ),

                          const SizedBox(height: 27),

                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.goToForgetPassword();
                                },
                                child: const Text(
                                  "نسيت كلمة المرور؟",
                                  style: TextStyle(
                                    color: Color(0xff157347),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  GetBuilder<LoginControllerImp>(
                                    builder: (_) => Switch(
                                      value: false,
                                      onChanged: (value) {},
                                      activeColor: Colors.white,
                                      activeTrackColor: const Color(0xff157347),
                                    ),
                                  ),
                                  const Text(
                                    "تذكرني",
                                    style: TextStyle(
                                      color: Color(0xff374151),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            height: 62,
                            child: CustomButtomAuth(
                              text: "تسجيل الدخول",
                              onPressed: () {
                                controller.login();
                              },
                            ),
                          ),

                          const SizedBox(height: 35),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "ليس لديك حساب؟ ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff6B7280),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.goToSignUp();
                                },
                                child: const Text(
                                  "إنشاء حساب",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff157347),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
