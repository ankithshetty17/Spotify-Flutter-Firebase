import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_colors.dart';
import 'package:spotify/presentation/auth/pages/signin.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Stack(
      children: [
        BasicAppBar(),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(AppVectors.topPattern),
        ),
        Align(
         alignment: Alignment.bottomRight,
         child: SvgPicture.asset(AppVectors.bottomPattern),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(AppImages.authBg),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            horizontal: 40
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                SizedBox(height: 20),
                Text('Enjoy Listening To Music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Satoshi',
                  decoration: TextDecoration.none,
                  color: context.isDarkMode ? Colors.white : Colors.black
                ),),
                SizedBox(height: 20),
                 Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: AppColors.grey,
                  decoration: TextDecoration.none,
                   fontFamily: 'Satoshi',
                ),
                textAlign: TextAlign.center,),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Expanded(
                      flex: 1,
                       child: BasicAppButton(Onpressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> SignUp()));
                       }, 
                       buttonText: 'Register'),
                     ),
                      SizedBox(height: 20,),
                      Expanded(
                        flex: 1,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> SigninPage()));
                        },
                         child: Text('Signin',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: context.isDarkMode ? Colors.white : Colors.black
                         ),)),
                      )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
    );
  }
}