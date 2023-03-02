import 'package:flutter/material.dart';
import 'package:flutter_app1/register_screen.dart';
import 'package:flutter_app1/animated_list.dart';
import 'components/input.dart';
import 'components/curve.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              //the curve   //app bar title

              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: Color.fromARGB(255, 156, 39, 176),
                  height: size.height / 3,
                  child: Center(
                      child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height / 24,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),

              SizedBox(height: size.height / 10),

              // Email address
              MyInputForm(
                controller: emailController,
                lableText: 'Email',
                prefixIcon: Icons.email,
                padding: 10.0,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (emailController.text.contains('@') == false ||
                      emailController.text.contains('.') == false) {
                    return 'please enter your valid email';
                  }
                  return null;
                },
              ),
              // password
              // MyInputForm(
              //   lableText: 'Password',
              //   prefixIcon: Icons.lock,
              //   suffixIcon: Icons.remove_red_eye,
              //   padding: 10.0,
              //   keyboardType: TextInputType.visiblePassword,
              //   obscureText: true,
              // ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: isPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.remove_red_eye),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your Password';
                    } else if (value.length < 8) {
                      return 'password must be at least 8 charactars';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: size.height / 10),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    debugPrint(emailController.text);
                    debugPrint(passwordController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AnimatedListScreen();
                    }));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 156, 39, 176),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 160, vertical: 15),
                  // ignore: prefer_const_constructors
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Login'),
              ),
              SizedBox(height: size.height / 50),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.purple,
                    width: 2.0,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const RegisterScreen();
                  }));
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
