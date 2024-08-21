// import 'package:flutter/cupertino.dart';
//
// class recoverypass extends StatefulWidget {
//   const recoverypass({super.key});
//
//   @override
//   State<recoverypass> createState() => _recoverypassState();
// }
//
// class _recoverypassState extends State<recoverypass> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


import 'package:flutter/material.dart';
import 'package:project/recoverpass.dart';
import 'package:project/sign_with_google.dart';
import 'package:project/signinpage.dart';

import 'creat_account.dart';

class recoverypass extends StatefulWidget {
  const recoverypass({super.key});

  @override
  State<recoverypass> createState() => _recoverypassState();
}

class _recoverypassState extends State<recoverypass> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
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
            margin: EdgeInsets.only(top: 70 ),
            child: ListView(
                children: [
                  const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Recovery Password" ,style: TextStyle(fontSize: 22 , fontFamily:"Airbnb Cereal App" ,fontWeight:FontWeight.w500   ),),
                            SizedBox(
                              width: 300,
                              child:
                              Text("Please Enter Your Email Address To Recieve a Verification Code" ,style: TextStyle(fontSize: 11 , fontFamily:"Airbnb Cereal App" ,fontWeight:FontWeight.w500 , color: Colors.grey  ),),
                            )

                          ]

                      )
                  ),
                  Form(
                      key: _formKey,
                      child:Container(
                        margin: EdgeInsets.only(top: 50 , left: 20 , right: 20),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 60,
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
