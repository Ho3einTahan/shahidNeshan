import 'package:flutter/material.dart';

import '../../../../config/theme.dart';
import '../widget/tools_methode.dart';

class VerifyOtpScreen extends StatelessWidget {
  VerifyOtpScreen({super.key});

  final TextEditingController otpController = TextEditingController();

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
                      spacing: 20,
                      runSpacing: 10,
                      alignment: WrapAlignment.end,
                      children: [
                        ...List.generate(10, (index) => buildVirtualKeyboard(context, ((index + 1) % 10).toString(), otpController)),
                        buildVirtualKeyboardRemoveButton(context, otpController),
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
    return Center(
      child: Container(
        height: 52,
        margin: const EdgeInsets.only(top: 40, bottom: 24),
        alignment: Alignment.center,
        child: TextField(
          controller: otpController,
          readOnly: true,
          textAlignVertical: TextAlignVertical.bottom,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: 'کد تایید',
            hintStyle: TextStyle(fontSize: 16),
            hintTextDirection: TextDirection.rtl,
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
