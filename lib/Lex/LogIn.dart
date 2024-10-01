import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'SignUp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("LEX",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/lex1.jpeg"),fit: BoxFit.cover)
            ),
          ),
          //////////
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Card(
                elevation: 1,
                color: Colors.white38.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          width: 230,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: const Center(child: Text("LOG IN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration:  InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: const Icon(Icons.email,color: Colors.black,size: 28,),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration:  InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: const Icon(Icons.password,color: Colors.black,size: 28,),
                        ),
                        obscureText: true,
                      ),
                      // const SizedBox(height: 20,),
                      // TextFormField(
                      //   decoration: const InputDecoration(
                      //     labelText: 'confirm password',
                      //     border: OutlineInputBorder(),
                      //     suffixIcon: Icon(Icons.password),
                      //   ),
                      //
                      //   obscureText: true,
                      // ),

                      const SizedBox(height: 20,),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("New to platform?",style: TextStyle(color: Colors.black,fontSize: 18),),
                            InkWell(


                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                                },

                                child: const Text("\tSign Up",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),



                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                      }, child: const Text("Click to go",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
