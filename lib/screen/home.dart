import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                  left: 0.0,
                  top: 0.0,
                  child: Image.asset(
                    "assets/images/main_top.png",
                    width: 100.0,
                  )),
              Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: 80.0,
                  )),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      "WELCOME TO EDU",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      width: 250.0,
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                          fixedSize: MaterialStateProperty.all(const Size(300, 45)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),

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

                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                          fixedSize: MaterialStateProperty.all(const Size(300, 45)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),

                        ),
                        child: const Text(
                          "SIGNUP",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0),
                        )),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
