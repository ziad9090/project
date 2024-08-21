
import 'package:flutter/material.dart';
import 'package:project/sign_with_google.dart';
import 'package:project/signinpage.dart';

import 'loginscreen.dart';

class creatacc extends StatefulWidget {
  const creatacc({super.key});

  @override
  State<creatacc> createState() => _creataccState();
}

class _creataccState extends State<creatacc> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();

  bool passwordVisible=false;
  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
            margin: EdgeInsets.only(top: 50 ),
            child: ListView(
                children: [
                  const Center(
                      child: Column(
                          children: [
                            Text("Create Account" ,style: TextStyle(fontSize: 22 , fontFamily:"Airbnb Cereal App" ,fontWeight:FontWeight.w500   ),),
                            Text("Let’s Create Account Together" ,style: TextStyle(fontSize: 12 , fontFamily:"Airbnb Cereal App" ,fontWeight:FontWeight.w500 , color: Colors.grey  ),),
                          ]

                      )
                  ),
                  Form(
                      key: _formKey,
                      child:Container(
                        margin: EdgeInsets.only(top: 30 , left: 20 , right: 20),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Your Name" , style: TextStyle(fontSize: 13 ,fontFamily: "Airbnb Cereal App" , fontWeight:FontWeight.w500 ),),
                            SizedBox(
                              height: 10,
                            ),

                            TextFormField(

                              controller: usernamecontroller,
                              decoration:  const InputDecoration(

                                fillColor: Colors.white12 ,
                                filled: true,
                                contentPadding: EdgeInsets.only(left: 20),
                                // hintText: "example@gmail.com",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(
                                      color:Colors.black12,
                                      width: 2,
                                      style: BorderStyle.solid),

                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    borderSide: BorderSide(
                                        color: Colors.blue
                                    )
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    borderSide: BorderSide(
                                        color: Colors.red,
                                        width: 5,
                                        style: BorderStyle.solid)),


                              ),
                              onChanged: (String value){
                                print("Show me $value");
                              },
                              onSaved: (String? value) {},
                              validator:  (String? value) {
                                return value == null ? "enter your data" : "";
                              },

                            ),
                            SizedBox(
                              height: 20,
                            ),


                            /////////////////////

                            Text("Email Address" , style: TextStyle(fontSize: 13 ,fontFamily: "Airbnb Cereal App" , fontWeight:FontWeight.w500 ),),
                            SizedBox(
                              height: 10,
                            ),

                            TextFormField(

                              controller: emailcontroller,
                              decoration:  const InputDecoration(

                                fillColor: Colors.white12 ,
                                filled: true,
                                contentPadding: EdgeInsets.only(left: 20),
                                // hintText: "example@gmail.com",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  borderSide: BorderSide(
                                      color:Colors.black12,
                                      width: 2,
                                      style: BorderStyle.solid),

                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    borderSide: BorderSide(
                                        color: Colors.blue
                                    )
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    borderSide: BorderSide(
                                        color: Colors.red,
                                        width: 5,
                                        style: BorderStyle.solid)),


                              ),
                              onChanged: (String value){
                                print("Show me $value");
                              },
                              onSaved: (String? value) {},
                              validator:  (String? value) {
                                return value == null ? "enter your data" : "";
                              },

                            ),
                            SizedBox(
                              height: 20,
                            ),


                            Text("Password" , style: TextStyle(fontSize: 13 ,fontFamily: "Airbnb Cereal App" , fontWeight:FontWeight.w500 ),),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: TextFormField(
                                obscureText: passwordVisible,
                                decoration: InputDecoration(
                                  fillColor: Colors.white12 ,
                                  contentPadding: EdgeInsets.all(5),
                                  // hintText: "example@gmail.com",
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50)),
                                    borderSide: BorderSide(
                                        color:Colors.black12,
                                        width: 2,
                                        style: BorderStyle.solid),

                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      borderSide: BorderSide(
                                          color: Colors.blue
                                      )
                                  ),
                                  errorBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50)),
                                      borderSide: BorderSide(
                                          color: Colors.red,
                                          width: 5,
                                          style: BorderStyle.solid)),

                                  suffixIcon: IconButton(
                                    icon: Icon(passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(
                                            () {
                                          passwordVisible = !passwordVisible;
                                        },
                                      );
                                    },
                                  ),
                                  alignLabelWithHint: false,
                                  filled: true,
                                ),
                                onChanged:(String value) {
                                  print("show $value");
                                },
                                validator: (String? value) {
                                  return value == null ? "enter your Pass" : "";
                                },
                                onSaved:  (String? value) {},

                              ),

                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 30),
                              width: double.infinity,
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>signin())
                                );
                              },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue, // Background color
                                ),
                                child:
                                Text("Sign In" , style: TextStyle(color: Colors.white),),

                              ),
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(top: 30),
                              width: double.infinity,
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>googlesign())
                                );
                              },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white, // Background color
                                  ),
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/imgs/Google_Icons-09-512.webp',
                                        height: 30,
                                        width: 40,// Height of the logo
                                      ),
                                      Text("Sign In with google" , style: TextStyle(color: Colors.black, fontSize: 15 , fontWeight: FontWeight.w500),),
                                    ],
                                  )
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only( top: 50 , left: 30 , ),
                                child:
                                Center(
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => loginpage()),
                                        );
                                      },
                                      child:Row(
                                        children: [
                                          Text("Already have an account?? " , style: TextStyle(fontSize: 10 , color: Colors.grey),),
                                          Text('Sign in', style: TextStyle(fontSize: 10, color: Colors.black , fontWeight: FontWeight.w500),),
                                        ],
                                      )
                                  ),
                                )
                            ),
                          ],
                        ),

                      )
                  )
                ]

            )


        )

    );
  }
}
