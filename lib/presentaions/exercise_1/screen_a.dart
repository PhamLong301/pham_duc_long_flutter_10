import 'package:flutter/material.dart';
import 'package:pham_duc_long_flutter_10/presentaions/exercise_1/screen_b.dart';
import 'package:pham_duc_long_flutter_10/presentaions/exercise_2/home_rent.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  int logCount = 0;
  TextEditingController userInput = TextEditingController();
  TextEditingController passInput = TextEditingController();

  void loginFunction() {
    if (userInput.text == 'phamduclong' && passInput.text == '30012002') {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeRentScreen(),
          ));
    } else if (userInput.text == 'phamduclong' ||
        passInput.text == '30012002') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Tài Khoản hoặc Mật khẩu của bạn không đúng'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
      ));
    } else {
      logCount++;
      if (passInput.text != '30012002' && logCount >= 3) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Mật khẩu nhập sai quá 3 lần'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                cursorColor: Colors.blue,
                controller: userInput,
                decoration: const InputDecoration(
                  labelText: 'User',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                  )),
                ),
              ),
              TextFormField(
                cursorColor: Colors.blue,
                obscureText: true,
                controller: passInput,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1,
                  )),
                ),
              ),
              ElevatedButton(
                  onPressed: loginFunction, child: const Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
