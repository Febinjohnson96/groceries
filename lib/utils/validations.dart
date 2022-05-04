import 'package:get/get.dart';

const String invalidUserName = "Please Enter a Valid user name";
const String invalidMobile = "Please Enter a valid mobile number";

bool isValidUserName(String userName) {
  return RegExp(r"^[A-Za-z][A-Za-z0-9_ ]{1,29}$").hasMatch(userName);
}

bool isValidMobile(String mobile) {
  return GetUtils.isPhoneNumber(mobile);
}
