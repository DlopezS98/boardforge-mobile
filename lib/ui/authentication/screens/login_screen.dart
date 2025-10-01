import 'package:auto_route/auto_route.dart';
import 'package:boardforge_app/ui/authentication/logic/login_validator.dart';
import 'package:boardforge_app/ui/core/routes/app_router.gr.dart';
import 'package:boardforge_app/ui/core/widgets/rounded_input_field.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Map<String, String> formData = {};

  final formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: formState,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login Screen'),
              SizedBox(height: 20),
              RoundedInputField(
                placeholder: "Email address",
                onChanged: (value) {
                  setState(() {
                    formData['email'] = value;
                  });
                },
                validator: LoginValidator.validateEmail,
              ),
              const SizedBox(height: 10),
              RoundedInputField(
                validator: LoginValidator.validatePassword,
                placeholder: "Password",
                onChanged: (value) {
                  setState(() {
                    formData['password'] = value;
                  });
                },
                isPassword: true,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    AutoRouter.of(context).push(const MainLayoutRoute());
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?", style: TextStyle(fontSize: 12, color: Colors.deepPurple)),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () => AutoRouter.of(context).push(SignupRoute()),
                      child: const Text('Sign up', style: TextStyle(color: Colors.blueAccent, fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
