import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/features/Signin/signin_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void checkLogin(BuildContext context) {
  Future.delayed(
      const Duration(
        milliseconds: 100,
      ), () {
    User? currentUser = Supabase.instance.client.auth.currentUser;
    if (!(currentUser != null && (currentUser.appMetadata['role'] == 'shop'))) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        ),
      );
    }
  });
}
