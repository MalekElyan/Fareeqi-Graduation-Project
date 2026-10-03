class AppLink {
  static const String server = "http://192.168.1.134/corsesphp/backend";
  static const String test = "$server/test.php";
  static const String imageststatic = "https://192.168.1.134/corsesphp/upload";

  static const String resendCode = "$server/auth/resendcode.php";

  /////////////            Auth         //////////////
  static const String signUp = "$server/auth/signup.php";
  static const String verifycodesignup = "$server/auth/verifycode.php";
  static const String login = "$server/auth/login.php";

  /////////////            forgetpassword         //////////////

  static const String cheackemail = "$server/forgetpassword/cheackemail.php";
  static const String verifycode = "$server/forgetpassword/verifycode.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";

  /////////////            main pages         //////////////
  static const String homepage = "$server/forgetpassword/cheackemail.php";

  //========================== Image ============================
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
}
