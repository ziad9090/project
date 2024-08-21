import 'package:flutter/material.dart';


class profilepage extends StatefulWidget {

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
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
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Center(child: Container(
            margin: EdgeInsets.only(right: 80),
            child: Text("profile"),
          ),)
        ),
        body: Container(
            margin: EdgeInsets.only(top: 5 ),
            child: ListView(
                children: [
                  Center(
                      child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0 , left: 120 ),
                          child:  const Align(
                            alignment: Alignment.topLeft,
                            child:Positioned(

                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage("assets/imgs/sobhan-joodi-ZgOwzl9YQJU-unsplash (1)_prev_ui 2.png"),
                                backgroundColor: Color.fromRGBO(223, 239, 255, 1),
                              ),
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 15
                      ),

                      const Text("Alisson Becker" ,style: TextStyle(fontSize: 25 , fontFamily:"Airbnb Cereal App" ,fontWeight:FontWeight.w500   ),),
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
                            const Text("Full Name" , style: TextStyle(fontSize: 13 ,fontFamily: "Airbnb Cereal App" , fontWeight:FontWeight.w500 ),),
                            SizedBox(
                              height: 10,
                            ),

                            TextFormField(

                              controller: usernamecontroller,
                              decoration:  const InputDecoration(

                                fillColor: Colors.white12 ,
                                filled: true,
                                contentPadding: EdgeInsets.only(left: 20),
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