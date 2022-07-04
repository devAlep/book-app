import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _togglePassword() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffCAD5E2),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Please sign in to continue',
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              TextField(
                cursorColor: Colors.black,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                cursorHeight: 22.0,
                decoration: InputDecoration(
                  label: const Text('Email'),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.grey.shade600,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  border: const OutlineInputBorder(),
                  focusColor: Colors.grey.shade500,
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextField(
                cursorColor: Colors.black,
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _isPasswordVisible ? false : true,
                cursorHeight: 22.0,
                decoration: InputDecoration(
                  label: const Text('Password'),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _togglePassword();
                    },
                    child: _isPasswordVisible
                        ? Icon(
                      Icons.lock_open,
                      color: Colors.grey.shade600,
                    )
                        : Icon(
                      Icons.lock,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  border: const OutlineInputBorder(),
                  focusColor: Colors.grey.shade500,
                  focusedBorder: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    if (_emailController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter both email and password'),
                        ),
                      );
                      return;
                    }
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (_) => WelcomePage(
                    //       email: _emailController.text,
                    //       password: _passwordController.text,
                    //     ),
                    //   ),
                    // );
                  },
                  child: Container(
                    width: 120.0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22.0,
                      vertical: 12.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        32.0,
                      ),
                      gradient: LinearGradient(colors: [
                        Colors.amber,
                        Colors.orange.shade700,
                      ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                          size: 18.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
