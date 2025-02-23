import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_button.dart';
import 'package:pick_n_pay_shop/common_widget/custom_text_formfield.dart';
import 'package:pick_n_pay_shop/util/value_validator.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Image(
                        height: 200,
                        width: 200,
                        image: AssetImage(
                          'assets/images/p&plogo.png',
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Shop Login",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15.0),
                  CustomTextFormField(
                      labelText: 'Email',
                      controller: _emailController,
                      validator: emailValidator),
                  const SizedBox(height: 15.0),
                  CustomTextFormField(
                      labelText: 'Password',
                      controller: _passwordController,
                      validator: notEmptyValidator),
                  const SizedBox(height: 40),
                  CustomButton(
                    inverse: true,
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   BlocProvider.of<LoginBloc>(context).add(
                      //     LoginEvent(
                      //       email: _emailController.text.trim(),
                      //       password: _passwordController.text.trim(),
                      //     ),
                      //   );
                      // }
                    },
                    label: 'Login',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
