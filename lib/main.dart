import 'package:flutter/material.dart';

void main(){
  runApp(LOGIN());
}
class LOGIN extends StatefulWidget {
  @override
  _LOGINState createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
  var b = Colors.black;
  var w = Colors.white;
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.login),
          title: Text("SIGN IN BANKY",),
          centerTitle: true,
        ),
        body: Container(
          color: b,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      labelText: "Your Name",
                      labelStyle: TextStyle(fontSize: 20, color: w),
                      hintText: "write your name Here",
                      hintStyle: TextStyle(fontSize: 15, color: w),
                      prefixIcon: Icon(Icons.person_outline, color: w,),
                    ),
                    style: TextStyle(color: w),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixText: "   @gmail.com    ",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.blue),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      labelText: "Your Email",
                      labelStyle: TextStyle(fontSize: 20, color: w),
                      hintText: "write your Email Here",
                      hintStyle: TextStyle(fontSize: 15, color: w),
                      prefixIcon: Icon(Icons.alternate_email, color: w,),
                    ),
                    style: TextStyle(color: w),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 20, color: w),
                        hintText: "write your password Here",
                        hintStyle: TextStyle(fontSize: 15, color: w),
                        prefixIcon: Icon(Icons.lock_outline_sharp, color: w,),
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible? Icons.visibility_off_outlined: Icons.visibility_outlined, color: w,),
                          onPressed: (){
                            setState((){
                              passwordVisible = !passwordVisible;
                            });
                          },
                        )
                    ),
                    style: TextStyle(color: w),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordVisible,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixText: "+20   ",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(fontSize: 20, color: w),
                        hintText: "write your phone number Here",
                        hintStyle: TextStyle(fontSize: 15, color: w),
                        prefixIcon: Icon(Icons.phone, color: w,)
                    ),
                    style: TextStyle(color: w),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.invert_colors_on_outlined, color: b, size: 50,),
          backgroundColor: w,
          onPressed: () => setState((){
            b = b==Colors.black? Colors.white:Colors.black;
            w = w==Colors.black? Colors.white:Colors.black;
          }),
        ),
      ),
    );
  }
}
