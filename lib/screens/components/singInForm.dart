import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SingInForm extends StatelessWidget {
  const SingInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child:  Image.asset("assets/samples/ui/rive_app/images/icon_email.png"),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
            ),
            const Text(
              "Password",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child:  Image.asset("assets/samples/ui/rive_app/images/icon_lock.png"),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 25),
              child: ElevatedButton.icon(
                onPressed: (){

                },
                icon:  const Icon(
                  CupertinoIcons.arrow_right,
                  color: Color(0xFFFE0037),
                ),
                label: const Text(
                  "Sing In",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF77D8B),
                    minimumSize: const Size(double.infinity, 56),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),

                        )
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}