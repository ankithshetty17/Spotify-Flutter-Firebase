import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/presentation/auth/pages/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signinText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height:30 ,
          width: 30,
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _registerText(context),
              SizedBox(height: 50,),
              _fullNameFeild(context),
              SizedBox(height: 20,),
              _emailFeild(context),
                SizedBox(height: 20,),
               BasicAppButton(Onpressed: (){}, 
               buttonText: 'Signin'),
              
            ],
          ),
        ),
      ),
    );
  }
  Widget _registerText(BuildContext context){
    return Text(
      'Signin',
      style: TextStyle(
        color: context.isDarkMode ? Colors.white : Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
      textAlign: TextAlign.center,
    );
  }

Widget _fullNameFeild(BuildContext context){
  return TextField(
    decoration: InputDecoration(
      hintText: 'Full Name'
    ).applyDefaults(
      Theme.of(context).inputDecorationTheme
    ),
  );
}

Widget _emailFeild(BuildContext context){
  return TextField(
    decoration: InputDecoration(
      hintText: 'Enter Email'
    ).applyDefaults(
      Theme.of(context).inputDecorationTheme
    ),
  );
}



Widget _signinText(BuildContext context){
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 30
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
           Text('Not a member?',
           style: TextStyle(
            color: context.isDarkMode ? Colors.white : Colors.black,
            fontSize: 14,
           ),),
           TextButton(onPressed: (){
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=> SignUp()));
           }, 
           child: Text('Register Now',
           style: TextStyle(color: Colors.blue),))
      ],
    ),
  );
  }
}