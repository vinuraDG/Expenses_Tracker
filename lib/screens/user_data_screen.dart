import 'package:expenz/constant/colors.dart';
import 'package:expenz/constant/constant.dart';
import 'package:expenz/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {

  bool _rememberMe = false;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();


  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          
          padding:  EdgeInsets.all(kdefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter Your \nPersonal Details",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please Enter Your Name";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Name",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),

                  
                      ),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please Enter Your Email";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Email",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),

                  
                      ),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                   SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please Enter a Valid Password";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Password",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),

                  
                      ),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                   SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    obscureText: true,
                    controller: _confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please Enter a Same Password";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),

                  
                      ),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                   SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text("Remember Me for the next time",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kGrey,
                      ),),
                      
                      Expanded(
                        child: CheckboxListTile(
                          activeColor: kMainColor,
                          value: _rememberMe,
                          onChanged: (value){
                            setState(() {
                          _rememberMe = value!;
                                            });
                                          },
                                          ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()){
                        String Name = _nameController.text;
                        String Email = _emailController.text;
                        String Password = _passwordController.text;
                        String ConfirmPassword = _confirmPasswordController.text;

                        print("$Name,$Email,$Password,$ConfirmPassword");
                      }
                    },
                    child: CustomBotton(
                      buttonName: "Next",
                      buttonColor: kMainColor,
                    ),
                  )
                  
                ],
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}