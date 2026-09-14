import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isCheck = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      //   backgroundColor: Colors.blue,
      //   foregroundColor: Colors.white,
      // ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/background.jpg",
                width: double.infinity,
                height: double.infinity,
            fit: BoxFit.fill,),
          ),
          Positioned(
            bottom: 20,
            right: 100,
            child: Text("Login Form",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30
              ),),
          ),
          Center(
            child: Container(
              width: 450,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.white,
                      width: 2
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child: Column(
                  children: [
                    Text("Welcome Back!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20
                    ),),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Email",
                              style: TextStyle(
                                color: Colors.white
                              )
                          ),
                          TextSpan(text: " *",
                              style: TextStyle(
                              color: Colors.red
                          )),
                        ]
                      )),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hint: Text("abdullah@gmail.com"),
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.white
                          )
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Password",
                                    style: TextStyle(
                                        color: Colors.white
                                    )
                                ),
                                TextSpan(text: " *",
                                    style: TextStyle(
                                        color: Colors.red
                                    )),
                              ]
                          )),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      obscureText: isVisible,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hint: Text("*********"),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      hintStyle: TextStyle(
                          color: Colors.white
                      ),
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        )
                    ),
                      onTap: (){
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: isCheck,
                                onChanged: (value){
                                  setState(() {
                                    isCheck = value!;
                                  });
                                }
                            ),
                            Text("Remember me",
                              style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                    ),)
                          ],
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text("Forget Password?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),))
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                          onPressed: (){
                          if(emailController.text.isEmpty){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Email is Required")));
                            return;
                          }
                          if(passwordController.text.isEmpty){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Password is Required")));
                            return;
                          }
                          if(passwordController.text.length < 8){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Password must be more than 8 digits")));
                            return;
                          }
                          if(isCheck == false){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Accept Term and Conditions")));
                            return;
                          }
                          else{
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text("Login Successful")));
                            return;
                          }
                          },
                          child: Text("Login")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),),
                        TextButton(onPressed: (){}, child: Text("Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
