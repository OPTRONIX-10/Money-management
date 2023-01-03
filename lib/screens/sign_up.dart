import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee_intern_task/screens/login.dart';

class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);
   
   TextEditingController _username = TextEditingController();
   TextEditingController _email = TextEditingController();
   TextEditingController _password = TextEditingController();
   TextEditingController _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Sign up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35
                ),
                ),
                const SizedBox(height: 15,),
                const Text("Create an account, It's free",
                  style: TextStyle(
                    color: Color.fromARGB(255, 109, 109, 109),
                    fontSize: 17
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(right: 280),
                  child: const Text('Username',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _username,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username'
                    )
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  padding: const EdgeInsets.only(right: 320),
                  child: const Text('Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                    )
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  padding: const EdgeInsets.only(right: 290),
                  child: const Text('Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    )
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  padding: const EdgeInsets.only(right: 215),
                  child: const Text('Confirm Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _confirmpassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(onPressed:(){}, icon: const Icon(Icons.remove_red_eye))
                    )
                  ),
                  
                ),
                const SizedBox(height: 18,),
                SizedBox(height: 65, width: 350,
                  child: 
                  ElevatedButton(onPressed: (){},
                  style: ButtonStyle(
                    //elevation: MaterialStateProperty.all(15),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.black)
                    ))
                  ), 
                  child: const Text('Sign up',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),)),
                  const SizedBox(height: 22,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Text("Already have an account?",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 109, 109, 109)),),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>  Loginpage())));
                  }, child: const Text('Login',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),))
                ],),
          ],),
        ),
      ),
    );
  }
}