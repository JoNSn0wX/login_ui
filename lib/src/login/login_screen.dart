import 'package:flutter/material.dart';
import 'package:login_ui/src/login/components/widget_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Column(
                children: [
                  _buildImage(),
                  const SizedBox(height: 20),
                 
                  const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.login),
                        border: OutlineInputBorder(), labelText: 'Login'),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                       prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),
                  const SizedBox(height: 20),
                  _buildButtonLogin(),
                  const SizedBox(height: 20),
                  _buildButtonGoogle()
                ],
              ),
            )));
  }
}

Widget _buildImage() {
  return SizedBox(
    height: 100,
    child: Image.network(
        'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj'),
  );
}

Widget _buildButtonLogin() {
  return WidgetButton(
    name: "Login",
    colors: Colors.black12,
    onTap: () {
      print('login');
    },
  );
}

Widget _buildButtonGoogle() {
  return WidgetButton(
    name: "Google",
    colors: Colors.red,
    onTap: () {
      print('google');
    },
  );
}
