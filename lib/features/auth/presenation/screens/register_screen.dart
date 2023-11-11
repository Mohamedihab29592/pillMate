import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';


import '../../../../core/components/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 106,
            ),
            SizedBox(
              width: 80,
              height: 110,
              child: Image.asset('assets/images/pp.png'),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              prefixIcon: 'assets/images/user.png',
              hintText: 'Moamen',

            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: 'assets/images/sms.png',
              hintText: 'moamenelsayed@gmail.com',

            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: 'assets/images/call.png',
              hintText: '01011277063',

            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: 'assets/images/location.png',
              hintText: 'Mansoura, Ahmed Maher',

            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: 'assets/images/lock.png',
              hintText: 'Moamen@142004',
              suffixIcon: 'assets/images/eye.png',

            ),
            const SizedBox(height: 10),
            CustomTextField(
              prefixIcon: 'assets/images/lock.png',
              hintText: '*************',
              suffixIcon: 'assets/images/eye-slash.png',

            ),
            const SizedBox(
              height: 20,
            ),
             CustomButton(text: 'Register', onTap: () {  },),
            const SizedBox(
              height: 10,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have An Account? ',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff666666),
                      fontWeight: FontWeight.w600,),
                ),
                InkWell(
                  onTap: (){
                    navigateAndKill(context: context, route: Routes.login);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff224A46),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}