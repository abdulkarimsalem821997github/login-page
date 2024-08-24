import 'package:flutter/material.dart';
import '../widget/primary_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_page/widget/custom_text_field.dart';



class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80.0),
                Text(
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Please sign in to continue',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 32.0),
                const CustomTextField(label: 'Email'),
                const SizedBox(height: 16.0),
                const CustomTextField(label: 'Password', isPassword: true),
                const SizedBox(height: 32.0),
                PrimaryButton(
                  text: 'Login',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Implement your login logic here

                      // Show success toast
                      Fluttertoast.showToast(
                        msg: "Login Successful",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
                  },
                ),
                TextButton(
                  onPressed: () {
                    // Implement forgot password logic
                  },
                  child: const Text('Forgot Password?'),
                ),
                const SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        // Navigate to signup page
                      },
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
