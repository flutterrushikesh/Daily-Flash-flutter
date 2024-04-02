import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPasswordText = false;

  bool showText() {
    if (!showPasswordText) {
      return true;
    } else {
      return false;
    }
  }

  Icon changeVisibility() {
    if (!showPasswordText) {
      return const Icon(Icons.visibility_off);
    } else {
      return const Icon(Icons.visibility);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to login"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVkPP9v3ilNNwxQm_y5kccoVL1s-HX0TZbrA&usqp=CAU',
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: userNameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  label: Text("Enter username"),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter username";
                  } else if (value.length < 6 || value.length > 20) {
                    return "Username must be in 6 to 20 characters";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                obscureText: showText(),
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  label: const Text("Enter password"),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {});
                      showPasswordText = !showPasswordText;
                    },
                    icon: changeVisibility(),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter password";
                  } else if (value.length < 8 || value.length > 20) {
                    return "password should be 8 to 20 character";
                  } else if (!RegExp(
                          r'(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[^a-zA-Z0-9\s]).{8,}')
                      .hasMatch(value)) {
                    return 'Password must at least 1 uppercase letter, 1 number and \n1 special character (@# etc.).';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  bool loginValidate = formkey.currentState!.validate();
                  if (loginValidate) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login successful"),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please provide all details"),
                      ),
                    );
                  }
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  minimumSize: MaterialStatePropertyAll(Size(200, 50)),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
