import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_colors.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 40,
          ),
          decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage(
            AppImages.introBg,
           ),
           fit: BoxFit.fill),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.15),
        ),
        Padding(
           padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 40,
          ),
          child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ),
                ),
                Spacer(),
                Text('Enjoy Listening To Music',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Satoshi',
                  decoration: TextDecoration.none,
                  color: Colors.white
                ),),
                SizedBox(height: 20,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: AppColors.grey,
                  decoration: TextDecoration.none,
                   fontFamily: 'Satoshi',
                ),
                textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                BasicAppButton(
                Onpressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context)=> ChooseModePage()));
                }, 
                buttonText: 'Get Started')
                
              ],
            ),
        ),
      ],
    );
   
  }
}