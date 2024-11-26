// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/core/utils/error_snackbar.dart';
import 'package:shahid_neshan/src/core/widget/bottom_navigation_widget.dart';
import '../../../../config/theme.dart';
import '../widget/tools_methode.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String phoneNumber;
  VerifyOtpScreen({super.key, required this.phoneNumber});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  
  final TextEditingController otpController = TextEditingController();

  @override
  void didChangeDependencies()async {
    super.didChangeDependencies();
    await Future.delayed(const Duration(seconds: 2), ()=> setState(()=> otpController.text = '۲۷۹۵۲۰'));
  }


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
                  Text('کد یکبار مصرفی که برای ${widget.phoneNumber} پیامک شده را وارد کنید',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: CustomTheme.theme.colorScheme.secondaryContainer, fontSize: 14, fontWeight: FontWeight.w400)),
                  _buildOtpTextField(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: CustomTheme.theme.primaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), minimumSize: const Size(double.infinity, 48)),
                        onPressed: () {
                          if(otpController.text.isEmpty || otpController.text.length < 6){
                            showErrorSnackBar(context, otpController.text.isEmpty ? 'لطفا کد تایید را وارد کنید' : 'کد تایید نمی تواند کمتر از 6 رقم باشد');
                          }
                          else {
                            context.navigate(const BottomNavigationWidget());
                          }
                        },
                        child:  Text("ورود", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.end,
                      children: [
                        ...List.generate(10, (index) => buildVirtualKeyboard(context, ((index + 1) % 10).toString(), otpController, 6)),
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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextField(
            controller: otpController,
            readOnly: true,
            textAlignVertical: TextAlignVertical.bottom,
            style: const TextStyle(fontSize: 20),
            decoration:  InputDecoration(
              hintText: 'کد تایید',
              hintStyle:const TextStyle(fontSize: 16, color: Color(0xffBFBFBF)),
              hintTextDirection: TextDirection.rtl,
              border:const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xffD5D5D5))),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              contentPadding:const EdgeInsets.only(bottom: 10, right: 10),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }
}
