import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/menu_bar/notifications.dart';
import 'drawer/profile.dart';
import 'loginscreen.dart';
import 'menu_bar/favorite.dart';

class signin extends StatefulWidget {
  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> logos = [
    {
      'image': 'assets/icons/png-transparent-nike-logo-movement-brands-black-thumbnail.png',
      'name': 'Nike',
    },
    {
      'image': 'assets/icons/png-transparent-puma-logo-puma-logo-adidas-swoosh-brand-adidas-text-carnivoran-sneakers-thumbnail.png',
      'name': 'Puma',
    },
    {
      'image': 'assets/icons/png-clipart-under-armour-logo-united-states-under-armour-t-shirt-logo-brand-armour-company-text-thumbnail.png',
      'name': 'Under Armour',
    },
    {
      'image': 'assets/icons/png-transparent-puma-logo-puma-logo-adidas-swoosh-brand-adidas-text-carnivoran-sneakers-thumbnail.png',
      'name': 'Adidas',
    },
    {
      'image': 'assets/icons/png-transparent-adidas-originals-t-shirt-logo-brand-adidas-angle-text-retail-thumbnail.png',
      'name': 'Converse',
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 249, 250, 1.0),

      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(padding: const EdgeInsets.only(right: 16.0),
          child:CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.grey),
              onPressed: () {
                // Handle your icon button press
              },
            ),
          ),
            )

        ],
        title: Container(
          margin: EdgeInsets.only(top: 10 , right: 20),
          child: Column(
            children: [
              Text("      Store location" ,style: TextStyle(color: Colors.black, fontSize: 12)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/location.jpg',
                    height: 30,
                    width: 40,// Height of the logo
                  ),
                  Text("Mondolibug, Sylhet" , style: TextStyle(color: Colors.black, fontSize: 15 , fontWeight: FontWeight.w500),),
                ],
              )
            ],
          ),
        )

      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(26, 37, 48, 1), // Set the drawer background color to green
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50 , left: 13 ),
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
                Container(
                  margin: EdgeInsets.only(left: 20 , top:15),
                  child: const Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Hey,👋" , style: TextStyle(fontSize:15 , color: Colors.grey),),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Alisson Becker" , style: TextStyle(fontSize:20 , color: Colors.white)),
                      )

                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: const Text('Profile' , style: TextStyle(color: Colors.white , fontSize: 14) ,),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>profilepage()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Home Page', style: TextStyle(color: Colors.white , fontSize: 14)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag_outlined,
              ),
              title: const Text('My Cart', style: TextStyle(color: Colors.white , fontSize: 14)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
              ),
              title: const Text('Favorite', style: TextStyle(color: Colors.white , fontSize: 14)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => favorite()),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.local_shipping_outlined,
              ),
              title: const Text('Orders', style: TextStyle(color: Colors.white , fontSize: 14)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_active_outlined,
              ),
              title: const Text('Notifications', style: TextStyle(color: Colors.white , fontSize: 14)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => notifications()),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),

            Divider(
              indent: 20,
              endIndent: 100,
            ),

            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Sign Out', style: TextStyle(color: Colors.white , fontSize: 14)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>loginpage()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
           Container(
             width: 330,
             child: TextFormField(

               decoration:  const InputDecoration(
                 prefixIcon: Icon(Icons.search),
                 hintText: "Looking for shoes" ,
                 fillColor: Colors.white ,
                 hintStyle:TextStyle(fontSize: 15 , color: Colors.grey) ,
                 filled: true,
                 contentPadding: EdgeInsets.only(left: 20),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(50)),
                   borderSide: BorderSide(

                       color:Colors.transparent,
                       width: 2,
                       style: BorderStyle.solid),

                 ),

                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(50)),
                     borderSide: BorderSide(
                         color: Colors.blueAccent,
                         width: 2
                     )
                 ),

               ),

             ),
           ),
            SizedBox(height: 20),

            Container(
              width: 330,
              height: 40,
              child:  Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: logos.length,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.blue.shade100 : Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: isSelected ? Colors.blue : Colors.grey.shade300,
                              width: 1.5,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                logos[index]['image'],
                                width: 30,
                                height: 30,
                              ),
                              if (isSelected)
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    logos[index]['name'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue.shade700,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Expanded(
                child: Stack (
              clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(
                      top:445,
                        child: SvgPicture.asset("assets/imgs/Vector 1789.svg", semanticsLabel: 'My SVG Image',width: double.infinity, ),
                    ),
                    Positioned(
                      top: 420,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration:  BoxDecoration(
                            color: Color.fromRGBO(91, 158, 225, 1),
                            shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 15,
                          ),
                        ],

                        ),
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(bottom: 0),
                        child: Icon(Icons.shopping_bag_outlined , color: Colors.white, size: 30,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 450),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.home_outlined, color: Colors.blue ,size: 30,),

                            onPressed: () {}
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite_border, color: Colors.grey),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => favorite()),
                              );
                            },
                          ),
                         const SizedBox(
                           width: 40,
                         ),
                          IconButton(
                            icon: Icon(Icons.notifications_none, color: Colors.grey),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => notifications()),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.person_outline, color: Colors.grey),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => profilepage()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                  ],
            ))
          ],
        ),
      )
    );
  }
}
