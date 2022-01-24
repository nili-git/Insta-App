import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_app/screens/home_screen.dart';
import 'package:insta_app/services/auth_service.dart';
import 'package:insta_app/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
        children: [
           Container(//color: Colors.white,
            child: topSection(context)),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: bottomSection(context),
            ),
               
              
            ],
            ),
        ),
    );
  }
  Widget topSection(context){
    return  Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            FlutterLogo(
               size: 120.0,
               style:FlutterLogoStyle.stacked, 
               ),

            SizedBox( height: 16.0),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Expanded(
                     child: InkWell(
                       onTap: () {
                              showDialog(
                              context: context,
                               builder: (context) => Dialog(
                               child: LoginForm(),
                    ),
                  );

                        //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        //    return HomeScreen();
                        //  }));
                       },
                       child: Container(
                       height: 50.0, 
                       child: Center(child: Text('Login In',
                       style: TextStyle(color: Colors.black),
                       ),),
                       decoration: BoxDecoration(
                        color: Colors.white,
                         border: Border.all(color: Colors.white,),
                         borderRadius: BorderRadius.circular(25.0),
                       ),
                      ),
                     ),
                 ),

                 SizedBox( width: 10.0,),

                Expanded(
                   child: Container(
                     height: 50.0,      
                     child: Center(
                       child: Text('Sign UP',
                     style: TextStyle(
                       color: Colors.white),
                     ),),
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.white,),
                       borderRadius: BorderRadius.circular(25.0),
                     ),
                   ),
                 ),
               ],
             ),
            ],
    );
  }

  Widget bottomSection(BuildContext context) {
    return  Column(
              children:[ Text('Or via social media',
               style: TextStyle(
                 color: Colors.grey.withOpacity(0.8),
                 ),),
            
            SizedBox( height: 10.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                   height: 50.0,
                   width: 50.0,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle,
                    
                   ),
                   child: 
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                   //  child: Image.asset('assets/images/img1.png',),
                  child: SvgPicture.asset('assets/images/img1.png',),
                   ),
                  ),
                ),
              SizedBox( width: 20.0),
                    InkWell(
                  onTap: () async {
                final user = await AuthService.signInWithGoogle();
                if (user != null) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomeScreen(
                      user: user,
                    );
                  }));
                } else {
                  print("error logging in");
                }
              },

                  child: Container(
                   height: 40.0,
                   width: 40.0,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle,
                   ),
                   child: 
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SvgPicture.asset('assets/images/img2.png',),
                   ),
                  ),
                ),
              ],
            ),
            ],
            );

  }
}