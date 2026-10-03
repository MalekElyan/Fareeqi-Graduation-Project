import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // ══════════════════════════════════════════════
  // PRIMARY — الألوان الأساسية

  /// الأخضر الرئيسي — للهيدر والأزرار والعناصر النشطة
  static const Color primaryGreen = Color(0xFF1B5E38);

  /// أخضر أفتح — مناسب للنهايات اللونية والـ gradient
  static const Color primaryGreenGradientEnd = Color(0xFF2D8A56);

  /// أخضر داكن جدًا — خلفيات الوضع الداكن
  static const Color primaryDark = Color(0xFF0D1F13);

  /// أخضر فاتح — عناصر ونصوص الـ dark mode
  static const Color primaryLight = Color(0xFF6ADB8A);

  // ══════════════════════════════════════════════
  // BACKGROUNDS — الخلفيات
  // ══════════════════════════════════════════════

  /// الخلفية الفاتحة الأساسية للشاشات
  static const Color backgroundScreenLight = Color(0xFFF7F9F7);

  /// خلفية الكروت والقوائم
  static const Color backgroundCard = Color(0xFFFFFFFF);

  /// لون إطار الجهاز في الموكب
  static const Color backgroundDevice = Color(0xFF0A0A0A);

  // ══════════════════════════════════════════════
  // AVATAR — ألوان الأفاتار
  // ══════════════════════════════════════════════

  /// خلفية الأفاتار
  static const Color avatarBackground = Color(0xFFC5E3CE);

  /// الإطار الخارجي للأفاتار
  static const Color avatarOutline = Color(0xFFE2F0E6);

  // ══════════════════════════════════════════════
  // TEXT — ألوان النصوص
  // ══════════════════════════════════════════════

  /// النص الأساسي للعناوين والقيم المهمة
  static const Color textPrimary = Color(0xFF0F1E13);

  /// النص الثانوي للفقرات والوصف
  static const Color textSecondary = Color(0xFF5A6E5A);

  /// نصوص التلميحات الخفيفة
  static const Color textHint = Color(0xFF888888);

  /// عنوان الحقول
  static const Color textFieldLabel = Color(0xFFBBBBBB);

  /// Placeholder والنصوص غير المفعلة
  static const Color textPlaceholder = Color(0xFFCCCCCC);

  // ══════════════════════════════════════════════
  // OVERLAY — طبقات شفافة
  // ══════════════════════════════════════════════

  /// طبقة شفافة لأزرار الهيدر
  static const Color overlayNavButton = Color(0x24FFFFFF);

  /// طبقة شفافة للـ badge أو زر الحفظ فوق الأخضر
  static const Color overlayBadge = Color(0x2EFFFFFF);

  /// طبقة زخرفية خفيفة جدًا
  static const Color overlayDecor = Color(0x0AFFFFFF);

  // ══════════════════════════════════════════════
  // BADGES & STATES — الحالات والشارات
  // ══════════════════════════════════════════════

  /// خلفية حالة "مطلوب"
  static const Color badgeNeededBackground = Color(0xFFFFF0E8);

  /// لون نص "مطلوب"
  static const Color badgeNeededText = Color(0xFFC9600A);

  /// حدود حالة "مطلوب"
  static const Color badgeNeededBorder = Color(0xFFFFD4B0);

  /// خلفية حالة "مكتمل"
  static const Color badgeDoneBackground = Color(0xFFEBF5EE);

  /// لون نص "مكتمل"
  static const Color badgeDoneText = Color(0xFF1B5E38);

  /// حدود حالة "مكتمل"
  static const Color badgeDoneBorder = Color(0xFFC8E6D0);

  /// خلفية حالة "معلق"
  static const Color statePendingBackground = Color(0xFFFFF8E6);

  /// لون نص أو رقم "معلق"
  static const Color statePendingText = Color(0xFFD4880A);

  /// خلفية حالة "مقبول"
  static const Color stateAcceptedBackground = Color(0xFFEAF6EE);

  /// لون نص أو رقم "مقبول"
  static const Color stateAcceptedText = Color(0xFF1A5C35);

  /// خلفية حالة "مرفوض"
  static const Color stateRejectedBackground = Color(0xFFFDEEED);

  /// الأحمر الأساسي للتنبيه أو الرفض
  static const Color colorRed = Color(0xFFC0392B);

  // ══════════════════════════════════════════════
  // BORDERS — الحدود والفواصل
  // ══════════════════════════════════════════════

  /// حدود الكروت والعناصر العامة
  static const Color borderCard = Color(0xFFE4EBE4);

  /// حدود الحقول والمدخلات
  static const Color borderInput = Color(0xFFE0E8E0);

  /// فواصل الصفوف داخل الكروت
  static const Color borderRow = Color(0xFFF2F5F2);

  // ══════════════════════════════════════════════
  // ACCENT — ألوان مساعدة
  // ══════════════════════════════════════════════

  /// ذهبي — للتقييم أو الإبراز
  static const Color accentGold = Color(0xFFD4880A);

  /// أزرق — للإحصاءات أو العناصر الثانوية
  static const Color accentBlue = Color(0xFF1A6AB5);

  // ══════════════════════════════════════════════
  // ICONS — ألوان الأيقونات
  // ══════════════════════════════════════════════

  /// خلفية أيقونة زرقاء
  static const Color iconBlueBg = Color(0xFFE6F0FB);

  /// خلفية أيقونة بنفسجية
  static const Color iconPurpleBg = Color(0xFFEEEDFE);

  /// لون الأيقونة البنفسجية
  static const Color iconPurple = Color(0xFF534AB7);

  /// خلفية أيقونة برتقالية
  static const Color iconOrangeBg = Color(0xFFFFF0E0);

  /// لون الأيقونة البرتقالية
  static const Color iconOrange = Color(0xFFC9700A);

  // ══════════════════════════════════════════════
  // DARK MODE — ألوان الوضع الداكن
  // ══════════════════════════════════════════════

  /// خلفية الحقول في الوضع الداكن
  static const Color darkFieldBackground = Color(0x0DFFFFFF);

  /// حدود الحقول في الوضع الداكن
  static const Color darkFieldBorder = Color(0x266ADB8A);

  /// حدود الحقل عند التحديد
  static const Color darkFieldBorderFocus = Color(0x806ADB8A);

  /// خلفية الحقل عند التحديد
  static const Color darkFieldBackgroundFocus = Color(0x0D6ADB8A);

  static const Color white = Colors.white;
  static const Color borderLight = Color(0xFFDDE5DF);
  static const Color primaryGreenSoft = Color(0xFFEAF4EE);
  static const Color primaryGreenBorder = Color(0xFFC9DECF);
  static const Color textMuted = Color(0xFFB0B7C3);
  static const Color warningBackground = Color(0xFFFFF8E8);
  static const Color warningBorder = Color(0xFFF1D999);
  static const Color warningIcon = Color(0xFFD4A11E);
  static const Color warningText = Color(0xFF7A5A12);
}
