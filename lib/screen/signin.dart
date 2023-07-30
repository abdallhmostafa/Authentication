// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics:const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        "SIGNUP",
                        style: TextStyle(letterSpacing: 3.0,
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SvgPicture.asset(
                        "assets/icons/signup.svg",
                        width: 250.0,
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: 300.0,
                        height: 45.0,
                        padding:const  EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(20, 255, 0, 248),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child:const  TextField(
                          autocorrect: true,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(

                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person,color: Colors.purple,),
                              hintText: "ex123@gmail.com",
                              labelStyle: TextStyle(color: Colors.black54)

                          ),),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: 300.0,
                        height: 45.0,
                        padding:const  EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color:const Color.fromARGB(20, 255, 0, 248),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child:const  TextField(
                          autocorrect: true,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          decoration: InputDecoration(

                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock,color: Colors.purple,size: 20.0,),
                              suffixIcon: Icon(Icons.visibility,color: Colors.purple,size: 20.0),
                              labelStyle: TextStyle(color: Colors.black54)

                          ),),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context, '/signup');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors
                                .purple),
                            fixedSize: MaterialStateProperty.all(const Size(
                                300, 45)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),

                          ),
                          child: const Text(
                            "SIGNUP",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0),
                          )),
                      const SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already Have an Account ?"),
                         GestureDetector(
                           onTap: (){Navigator.popAndPushNamed(context, '/login');}
                           , child: const Text("Sign In",style: TextStyle(color:Colors.purple ),
                         ),),
                         /* ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0.0),
                                  shadowColor: MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                              onPressed: (){
                                Navigator.popAndPushNamed(context, '/login');
                              },
                              child:const Text("Sign In",style: TextStyle(color:Colors.purple ),)),
                              */



                        ],
                      ),
                      const SizedBox(height: 10.0,),

                      SizedBox(
                        width: 270,
                        child: Row(
                          children: const[
                            Expanded(child: Divider(color: Colors.purple,thickness: 1.0,)),
                            SizedBox(width: 5,),

                            Text("OR"),
                            SizedBox(width: 5,),
                            Expanded(
                                child: Divider(color: Colors.purple,thickness: 1.0,)),

                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              padding:const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.purple,width: 1.5),

                              ),
                              child: SvgPicture.asset(
                                "assets/icons/facebook.svg",
                                width: 20.0,
                                color: Colors.purple,

                              ),
                            ),
                          ),
                          const SizedBox(width: 20.0,),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              padding:const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                border: Border.all(color: Colors.purple,width: 1.5),


                              ),
                              child: SvgPicture.asset(
                                "assets/icons/twitter.svg",
                                width: 20.0,
                                color: Colors.purple,

                              ),
                            ),
                          ),
                          const SizedBox(width: 20.0,),


                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              padding:const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                border: Border.all(color: Colors.purple,width: 1.5),

                              ),
                              child: SvgPicture.asset(
                                "assets/icons/google-plus.svg",
                                width: 20.0,
                                color: Colors.purple,

                              ),
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 0.0,
                  top: 0.0,
                  child: Image.asset(
                    "assets/images/signup_top.png",
                    width: 100.0,
                  )),
              Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: 80.0,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
