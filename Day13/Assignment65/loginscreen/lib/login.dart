import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
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
              const SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}
