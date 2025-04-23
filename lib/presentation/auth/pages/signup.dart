import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/domain/usecases/auth/signup.dart';
import 'package:spotify/presentation/auth/pages/signin.dart';
import 'package:spotify/presentation/root/pages/rootpage.dart';
import 'package:spotify/service_locator.dart';

class SignUp extends StatelessWidget {
   SignUp({super.key});
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
              _passwordFeild(context),
               SizedBox(height: 20,),
               BasicAppButton(Onpressed: () async{
                var result = await sl<SignupUseCase>().call(
                params: CreateUserReq(
                  fullName: _fullname.text.toString(), 
                  email: _email.text.toString(), 
                  password: _password.text.toString())
                );
                result.fold(
                  (l){
                    var snackbar = SnackBar(content: Text(l));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  }, 
                  (r){
                    Navigator.pushAndRemoveUntil(context, 
                    MaterialPageRoute(builder:(context)=>Rootpage()), 
                    (root)=>false
                    );

                  });
               }, 
               buttonText: 'Create Account'),
              
            ],
          ),
        ),
      ),
    );
  }
  Widget _registerText(BuildContext context){
    return Text(
      'Register',
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
    controller: _fullname,
    decoration: InputDecoration(
      hintText: 'Full Name'
    ).applyDefaults(
      Theme.of(context).inputDecorationTheme
    ),
  );
}

Widget _emailFeild(BuildContext context){
  return TextField(
    controller: _email,
    decoration: InputDecoration(
      hintText: 'Enter Email'
    ).applyDefaults(
      Theme.of(context).inputDecorationTheme
    ),
  );
}

Widget _passwordFeild(BuildContext context){
  return TextField(
    controller: _password,
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
           Text('Dont have an account?',
           style: TextStyle(
            color: context.isDarkMode ? Colors.white : Colors.black,
            fontSize: 14,
           ),),
           TextButton(onPressed: (){
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>SigninPage()));
           }, 
           child: Text('Signin',
           style: TextStyle(color: Colors.blue),))
      ],
    ),
  );
}
}