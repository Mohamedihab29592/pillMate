import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/features/auth/presenation/widgets/Custom_authentication_button.dart';

import '../../../../core/components/custom_text_field.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 72,
            ),
            SizedBox(
                width: 80,
                height: 95,
                child: Image.asset('assets/images/pillMateLogo.PNG')),
            const SizedBox(
              height: 10,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 172,
                  height: 23,
                  child: Text(
                    'Welcome To PillMate',
                    style: Theme.of(context).textTheme.bodyLarge
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              prefixIcon: 'assets/images/user.png',
              hintText: 'Enter Yor Email',

            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: 'assets/images/lock.png',
              hintText: 'Enter Your Password',
              obscureText: true,
              suffixIcon: 'assets/images/eye-slash.png',

            ),
            const SizedBox(
              height: 10,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    navigateReplacement(context: context, route: Routes.forgetPassword);
                  },
                  child: Text(
                    'Forget password ?',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
             CustomButton(onTap: (){
               navigateAndKill(context: context, route: Routes.layOut);
             }, text: "Login"),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 114.5,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xffDADADA),
                  ),
                ),
                Text(
                  'Or Login With',
                  style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 114.5,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xffDADADA),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomAuthenticationButton(
                image: 'assets/images/Facebook.png',
                text: 'Continue With Facebook'),
            const SizedBox(
              height: 15,
            ),
            const CustomAuthenticationButton(
                image: 'assets/images/Google.png',
                text: 'Continue With Google'),
            const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have An Account? ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff224A46),
                  ),
                ),
                InkWell(
                  onTap: (){
                    navigateReplacement(context: context, route: Routes.register);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff224A46),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
