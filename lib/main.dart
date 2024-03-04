import 'package:flutter/material.dart';
import 'package:metagram/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const loginPage(),
    );
  }
}

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex:5),
                Image(image: AssetImage("assets/image/logo.png"),
                  height:80,
                  color: Colors.white,),
                SizedBox(height: 50,),
                SizedBox(
                  height:42 ,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 13),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        hintText: "Phone number, email or username",
                        hintStyle: TextStyle(fontSize: 13, color: Colors.grey)
                    ),
                  ),),
                SizedBox(height: 50),
                SizedBox( height:42 ,
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 13),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 13, color: Colors.grey)
                    ),
                    obscureText: true,
                  ),),
                SizedBox(height: 20),
                const SizedBox(height:30),
                const Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: SizedBox()),
                    Text("Forgot Password?",style:TextStyle(color:Colors.blue,))
                  ],
                ),
                const SizedBox(height:30),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height:42,
                      width:double.infinity,
                      decoration:const ShapeDecoration(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        color:Colors.red,
                      ),
                      child:const Text("Log In",style:TextStyle(color: Colors.white, fontSize: 16),)
                  ),
                ),
                const Spacer(flex:5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style:TextStyle(color:Colors.white)),
                    Text(" SignUp",style:TextStyle(color:Colors.blue)),
                  ],
                ),
                const Spacer(flex:2)
              ],),
          ),
        ),
      ),

    );
  }
}