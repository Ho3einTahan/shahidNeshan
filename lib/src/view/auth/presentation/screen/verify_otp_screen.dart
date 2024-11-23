import 'package:flutter/material.dart';

import '../../../../config/theme.dart';
import '../widget/tools_methode.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

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
                  Text('کد یکبار مصرف', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.primaryColor, fontSize: 24, fontWeight: FontWeight.w700)),
                  Text('کد یکبار مصرفی که برای ۰۹۳۶۸۳۶۹۲۹۸ پیامک شده را وارد کنید',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.colorScheme.secondaryContainer, fontSize: 14, fontWeight: FontWeight.w400)),
                  _buildOtpTextField(),
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

  Widget _buildOtpTextField() {
    return Container(
      height: 52,
      margin: const EdgeInsets.only(top: 40, bottom: 24),
      padding: const EdgeInsets.only(bottom: 22),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(5, (index) {
            return const SizedBox(
              width: 48,
              child: TextField(
                readOnly: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    counterText: '',
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
                keyboardType: TextInputType.number,
                maxLength: 1,
              ),
            );
          }),
        ),
      ),
    );
  }
}
