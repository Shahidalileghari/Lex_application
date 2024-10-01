import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'LogIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

                          child: const Center(child: Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),

                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration:  InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.black),

                            ),
                            suffixIcon: const Icon(Icons.person)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration:  InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            suffixIcon: Icon(Icons.email)
                        ),
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration:  InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          suffixIcon: Icon(Icons.password),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20,),
                      TextFormField(
                        decoration:  InputDecoration(
                          labelText: 'confirm password',
                          border: OutlineInputBorder(

                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),

                          ),

                          suffixIcon: Icon(Icons.password),
                        ),

                        obscureText: true,
                      ),

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
                            const Text("Already a user?",style: TextStyle(color: Colors.black,fontSize: 18),),
                            InkWell(

                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                                },
                                child: const Text("\t Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),



                      ElevatedButton(

                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));

                          }, child: const Text("Click to go",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),))
                    ],
                  ),
                ),
              ),
            ),
          )

        ],
      ),

    );
  }
}
