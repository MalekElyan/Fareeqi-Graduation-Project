import 'package:flutter/material.dart';
import 'package:project/core/constant/app_colors.dart';
import 'package:project/signupPage/imageuploder.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final nameController = TextEditingController(text: 'أحمد العتيبي');
  final usernameController = TextEditingController(text: '@ahmed_al3tibi');
  final emailController = TextEditingController(text: 'ahmed@zu.edu.jo');
  final majorController = TextEditingController(text: 'هندسة برمجيات');
  final universityController = TextEditingController(text: 'جامعة الزيتونة');
  final passionController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    majorController.dispose();
    universityController.dispose();
    passionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScreenLight,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 170,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryGreen,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(1),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(color: AppColors.backgroundScreenLight),
                ),
              ],
            ),

            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      _headerCircleButton(
                        icon: Icons.close,
                        onTap: () => Navigator.pop(context),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            'تعديل الملف',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      _saveButton(),
                    ],
                  ),

                  const SizedBox(height: 22),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 22,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundCard,
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: AppColors.borderCard),
                    ),
                    child: Column(
                      children: [
                        const ImageUploader(),
                        const SizedBox(height: 8),
                        Text(
                          'أحمد العتيبي',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'ahmed_al3tibi@',
                          style: TextStyle(
                            color: AppColors.textHint,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  _sectionTitle('المعلومات الأساسية'),
                  const SizedBox(height: 10),

                  _formCard(
                    children: [
                      editableField(label: 'الاسم', controller: nameController),
                      editableField(
                        label: 'المستخدم',
                        controller: usernameController,
                      ),
                      editableField(
                        label: 'البريد',
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  _sectionTitle('المعلومات الأكاديمية'),
                  const SizedBox(height: 10),

                  _formCard(
                    children: [
                      editableField(
                        label: 'التخصص',
                        controller: majorController,
                      ),
                      editableField(
                        label: 'الجامعة',
                        controller: universityController,
                      ),
                      editableField(
                        label: 'الشغف',
                        controller: passionController,
                        hint: 'أضف مجال اهتمامك...',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerCircleButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: AppColors.overlayNavButton,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white24),
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }

  Widget _saveButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.overlayBadge,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white24),
      ),
      child: const Text(
        'حفظ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.textHint,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _formCard({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundCard,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.borderCard),
      ),
      child: Column(children: children),
    );
  }

  Widget editableField({
    required String label,
    required TextEditingController controller,
    String? hint,
    TextInputType keyboardType = TextInputType.text,
    bool isLast = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(bottom: BorderSide(color: AppColors.borderRow)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 95,
            child: Text(
              label,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: AppColors.textFieldLabel,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                  color: AppColors.textPlaceholder,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
