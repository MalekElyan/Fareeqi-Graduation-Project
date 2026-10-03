import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/auth/controllersignup.dart';
import 'package:project/core/class/handlingdataview.dart';
import 'package:project/signupPage/headersignup.dart';
import 'package:project/signupPage/imageuploder.dart';
import 'package:project/signupPage/textfiled.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/core/functions/validinput.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ControllersignupImp());
    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: GetBuilder<ControllersignupImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest!,
          widget: ListView(
            children: [
              const Headersignup(),
              const SizedBox(height: 20),
              const ImageUploader(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: controller.formstate,
                  child: Column(
                    children: [
                      CustomTextfiledAuth(
                        labeltext: "الاسم الكامل",
                        hinttext: "ادخل اسمك الكامل",
                        mycontroller: controller.name,
                        valid: (val) {
                          return validInput(val!, 3, 20, "name");
                        },
                        isNumber: false,
                      ),
                      const SizedBox(height: 15),
                      CustomTextfiledAuth(
                        labeltext: "اسم المستخدم",
                        hinttext: "ادخل اسم المستخدم",
                        mycontroller: controller.username,
                        valid: (val) {
                          return validInput(val!, 3, 20, "username");
                        },
                        isNumber: false,
                      ),
                      const SizedBox(height: 15),
                      CustomTextfiledAuth(
                        labeltext: "البريد الإلكتروني",
                        hinttext: "example@email.com",
                        mycontroller: controller.email,
                        valid: (val) {
                          if (val == null || val.isEmpty) {
                            return "البريد مطلوب";
                          }
                          if (!val.contains("@")) {
                            return "بريد غير صالح";
                          }
                          return null;
                        },
                        isNumber: false,
                      ),
                      const SizedBox(height: 15),
                      buildDropdown(),
                      const SizedBox(height: 15),
                      CustomTextfiledAuth(
                        labeltext: "كلمة السر",
                        hinttext: "************",
                        iconData: Icons.lock_outline,
                        mycontroller: controller.password,
                        valid: (val) {
                          return validInput(val!, 3, 30, "password");
                        },
                        isNumber: false,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          backgroundColor: AppColors.primaryGreen,
                          foregroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                          minimumSize: const Size(double.infinity, 56),
                        ),
                        onPressed: () async {
                          await controller.SignUp();
                        },
                        child: const Text(
                          "التالي",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdown() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: DropdownButtonFormField<String>(
        dropdownColor: AppColors.white,
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          labelText: "نوع الحساب",
          labelStyle: const TextStyle(
            color: AppColors.textSecondary,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: AppColors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(color: AppColors.borderLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              color: AppColors.primaryGreen,
              width: 1.4,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
        ),
        iconEnabledColor: AppColors.primaryGreen,
        items: ["طالب", "معلم", "إداري"]
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e,
                  style: const TextStyle(color: AppColors.textSecondary),
                ),
              ),
            )
            .toList(),
        onChanged: (value) {},
      ),
    );
  }
}
