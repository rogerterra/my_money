import 'package:mymoney/src/shared/model/user_model.dart';

class AuthenticatedUser {
  static Future<UserModel> getUserData() async {
    UserModel userData = UserModel(
        fullName: "Admin",
        email: "admin@equipegodfellas.com",
        id: "ac943ggf-a466-65fg-904c-5a46727047b5");

    return userData;
  }
}