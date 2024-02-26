import 'package:eventsap/Views/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _globalKey=GlobalKey();

  bool _visible=true;

  TextEditingController mobileNoController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: AssetImage("Assets/images/background.jpg")),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:18.0),
            child: Row(
              children: [
                Container(
                  width: 270,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: mobileNoController,
                    decoration: const InputDecoration(
                      labelText: "Mobile Number",
                      hintText: "Mobile Number",
                      labelStyle: TextStyle(
                        color: Colors.black
                      ),
                    ),
                    validator: (value){
                      if(value==null||value.trim().isEmpty){
                        return "Field required";
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 270,
                  child: TextFormField(
                    obscureText: _visible,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: "Enter Password",
                      hintText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    validator: (value){
                      if(value==null||value.trim().isEmpty){
                        return "Field required";
                      }
                    },
                  ),
                ),
                IconButton(onPressed: (){
                  setState(() {
                    _visible=!_visible;
                  });
                }, icon: Icon(_visible?Icons.visibility_off:Icons.visibility))
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Forgot Password ?"),
            const SizedBox(width: 70,)
          ],
          ),
          const SizedBox(height: 15,),
          InkWell(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage())),
            child: Container(
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10,),
              Text("Dont have an account? ",),
              Text("Create Account",style: TextStyle(color: CupertinoColors.systemBlue.withOpacity(0.8)),)
            ],
          ),
        ],
      ),
    );
  }
}
