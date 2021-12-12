import 'package:flutter/material.dart';
import 'package:login_ui/src/login/components/widget_button.dart';
import 'package:login_ui/src/login/components/widget_input.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

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
            _buildEmail(),
            const SizedBox(height: 10),
            _buildPass(),
            const SizedBox(height: 20),
            _buildButtonLogin(),
            const SizedBox(height: 20),
            _buildButtonGoogle()
          ],
        ),
      ),
    ));
  }

  Widget _buildImage() {
    return SizedBox(
      height: 180,
      child: Image.network(
          'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj'),
    );
  }

  Widget _buildEmail() {
    return WidgetInput(
      name: 'Enail',
      obscureText: false,
      nameController: emailController,
    );
  }

  Widget _buildPass() {
    return WidgetInput(
      name: 'Password',
      obscureText: true,
      nameController: passWordController,
    );
  }

  Widget _buildButtonLogin() {
    return WidgetButton(
      colos: Colors.grey[300]!,
      name: 'Login',
      onTap: () {
        bool checkLogin = checkValidLogin();
        if (checkLogin) {
          print('Chuyen huong sang Home');
        } else {
          print('Tai khoan khong hop le');
        }
      },
    );
  }

  Widget _buildButtonGoogle() {
    return WidgetButton(
      colos: Colors.red[500]!,
      name: 'Google',
      onTap: () {
        print('google');
      },
    );
  }

  checkValidLogin() {
    String email = emailController.value.text;
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
    if (email.isEmpty) {
      return false;
    } else if (email.length < 10) {
      return false;
    } else if (emailValid == false) {
      return false;
    }
    return true;
  }
}