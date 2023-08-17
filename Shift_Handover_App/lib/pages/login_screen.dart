import 'package:flutter/material.dart';
//import 'package:namer_app/widgets/dropdownbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Form(
        key: _formfield,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60),
            child: Text('CHECK IN',
                style: TextStyle(
                    color: Color(0xff4e33e6),
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 27,
                  color: Color(0xFF475269),
                ),
                SizedBox(width: 10),
                Container(
                  width: 250,
                  child: TextFormField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                  )),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                Icon(
                  Icons.people,
                  size: 27,
                  color: Color(0xFF475269),
                ),
                SizedBox(width: 10),
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Staff ID",
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return "Enter correct name";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                Icon(
                  Icons.alarm,
                  size: 27,
                  color: Color(0xFF475269),
                ),
                SizedBox(width: 10),
                //DropDownBar(),
                Container(
                  width: 250,
                  child: TextFormField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Shift - Morning/Night",
                  )),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  )
                ]),
            child: Row(
              children: [
                Icon(
                  Icons.lock,
                  size: 27,
                  color: Color(0xFF475269),
                ),
                SizedBox(width: 10),
                Container(
                  width: 250,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: passToggle,
                    controller: passController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      } else if (passController.text.length < 6) {
                        return "Password Length Should be more than 6 characters";
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: Text("Forget Password",
                  style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "homePage");
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff4e33e6),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff4e33e6).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1),
                ],
              ),
              child: Text('Sign In',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: 1,
                  )),
            ),
          )
        ]),
      ))),
    );
  }
}
