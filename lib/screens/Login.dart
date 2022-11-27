import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _PhoneCntrllr = TextEditingController();
  final _PassCntrllr = TextEditingController();
  final _LoinFormKey = GlobalKey<FormState>();
  void _onsubmit() {
    if (_LoinFormKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Form(
        key: _LoinFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Нэвтрэх хэсэг",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Тавтай морил",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Эхлээд нэвтэрнэ үү?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Утасны дугаар хоосон байж болохгүй";
                    } else {
                      return null;
                    }
                  },
                  controller: _PhoneCntrllr,
                  decoration: InputDecoration(
                    label: Text("Утасны дугаар"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.9),
                        width: 1,
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Нууц үг хоосон байж болохгүй";
                    } else {
                      return null;
                    }
                  },
                  controller: _PassCntrllr,
                  decoration: InputDecoration(
                    label: Text("Нууц үг"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.9),
                        width: 1,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  obscureText: true,
                  maxLength: 9,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: _onsubmit,
                child: Text("Нэвтрэх"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
