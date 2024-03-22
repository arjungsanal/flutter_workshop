import 'package:flutter/material.dart';
import 'package:flutter_workshop/components/square_tile.dart';
import 'package:flutter_workshop/components/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Image.asset('lib/assets/logo.png' , height: 100,),   
              // const Icon(
              //   Icons.assured_workload_outlined,
              //   size: 100,
              // ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome 私の友人 :)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(97, 97, 97, 1),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const MyTextField(hintText: "Username", obscure: false),
              const SizedBox(
                height: 25,
              ),
              const MyTextField(
                hintText: "Password",
                obscure: true,
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Color.fromRGBO(97, 97, 97, 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {Navigator.pop(context);},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        foregroundColor: Colors.white,//change background color of button
                        backgroundColor: Colors.orange[800],          
                  ),
                  child: const  Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 130, vertical: 15),
                    child: Text("LogIn", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    ),
                  )
                  ),
                 const SizedBox(height: 50,),

               const Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 25),
                   child: Row(children: [
                      Expanded(child: Divider(thickness: 1, color: Colors.grey,)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or Continue with"),
                      ),
                    Expanded(child: Divider(thickness: 1,color: Colors.grey,)),
                   ],),
                 ),

                const SizedBox(height: 50,),

                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'lib/assets/google.png'),
                    SizedBox(width: 25,),
                    SquareTile(imagePath: 'lib/assets/apple.png'),
                  ],
                 ),

                const  SizedBox(height: 50,),

                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member ?"),
                    SizedBox(width: 5,),
                    Text("Register Now",
                    style: TextStyle( 
                      color: Color.fromARGB(255, 0, 52, 163),
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                 )





            ],
          ),
        ),
      ),
    );
  }
}
