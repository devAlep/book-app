import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';

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
                style: TextStyle(
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'Please sign in to continue',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              TextField(
                controller: _emailController,
                cursorColor: Colors.white60,
                keyboardType: TextInputType.emailAddress,
                cursorHeight: 22.0,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  label: const Text('Email'),
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.white60,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white60,
                    ),
                  ),
                  focusColor: Colors.white60,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white60,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextField(
                cursorColor: Colors.white60,
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _isPasswordVisible ? false : true,
                cursorHeight: 22.0,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  label: const Text('Password'),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _togglePassword();
                    },
                    child: _isPasswordVisible
                        ? const Icon(
                            Icons.lock_open,
                            color: Colors.white60,
                          )
                        : const Icon(
                            Icons.lock,
                            color: Colors.white60,
                          ),
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white60,
                  ),
                  border: const OutlineInputBorder(),
                  focusColor: Colors.grey.shade500,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white60,
                    ),
                  ),
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => HomePage(
                        ),
                      ),
                    );
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
                      color: const Color(0xff207398)

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
