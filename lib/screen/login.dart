import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

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
                        "LOGIN",
                        style: TextStyle(letterSpacing: 3.0,
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SvgPicture.asset(
                        "assets/icons/login.svg",
                        width: 300.0,
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
                            Navigator.pushNamed(context, '/login');
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
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0),
                          )),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't Have an Account ?"),
                          GestureDetector(
                            onTap: (){Navigator.popAndPushNamed(context, '/signup');}
                            , child: const Text("Sign Up",style: TextStyle(color:Colors.purple ),
                          ),),
                           /* ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0.0),
                                shadowColor: MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                              onPressed: (){
                                Navigator.popAndPushNamed(context, '/signup');
                              },
                              child:const Text("Sign Up",style: TextStyle(color:Colors.purple ),)), */

                        ],
                      )

                    ],
                  ),
                ),
              ),
              Positioned(
                  left: 0.0,
                  top: 0.0,
                  child: Image.asset(
                    "assets/images/main_top.png",
                    width: 100.0,
                  )),
              Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Image.asset(
                    "assets/images/login_bottom.png",
                    width: 100.0,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
