import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';

import '../widget/tools_methode.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Image.asset("images/shahidNeshan.png"),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('ورود یا ثبت نام', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.primaryColor, fontSize: 24, fontWeight: FontWeight.w700)),
                  Text('جهت ورود به شهید نشان شماره موبایل خود را وارد کنید',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.colorScheme.secondaryContainer, fontSize: 14, fontWeight: FontWeight.w400)),
                  Container(
                    height: 52,
                    margin: const EdgeInsets.only(top: 40, bottom: 24),
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: const OutlineInputBorder(),
                        prefixIconConstraints: const BoxConstraints(minWidth: 90),
                        prefixIcon: Image.asset("assets/icon/flag.png"),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: CustomTheme.theme.primaryColor, minimumSize: const Size(double.infinity, 48)),
                        onPressed: () {},
                        child: const Text("ورود", style: TextStyle(fontSize: 19))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      alignment: WrapAlignment.end,
                      children: [
                        ...List.generate(10, (index) => buildVirtualKeyboard(context, ((index + 1) % 10).toString())),
                        buildVirtualKeyboardRemoveButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
