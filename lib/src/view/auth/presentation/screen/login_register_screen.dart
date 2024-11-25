import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/core/constans/sizes.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/core/utils/convert_english_to_persian.dart';
import 'package:shahid_neshan/src/view/auth/presentation/screen/verify_otp_screen.dart';

import '../widget/tools_methode.dart';

class LoginRegisterScreen extends StatelessWidget {
  LoginRegisterScreen({super.key});

  final TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Padding(
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
                    _buildPhoneNumberInput(context,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: CustomTheme.theme.primaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,minimumSize: const Size(double.infinity, 48)),
                          onPressed: () {
                              if(otpController.text.isEmpty || otpController.text.length < 10) {
                                AnimatedSnackBar.material(
                                  otpController.text.isEmpty ? 'لطفا شماره وارد کنید' : 'شماره تلفن نمی تواند کمتر از 10 رقم باشد',
                                  type: AnimatedSnackBarType.error,
                                  borderRadius: BorderRadius.circular(10),
                                  desktopSnackBarPosition: DesktopSnackBarPosition.topCenter,
                                ).show(context);
                              } else {
                                context.navigate(VerifyOtpScreen(phoneNumber: otpController.text,));
                              }
                          },
                          child:  Text("ورود", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),)),
                    ),
                    Container(
                      width: Sizes.width(context),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 8,
                        alignment: WrapAlignment.end,
                        children: [
                          ...List.generate(10, (index) => buildVirtualKeyboard(context, ((index + 1) % 10).toString(), otpController, 10)),
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
      ),
    );
  }

  Widget _buildPhoneNumberInput(BuildContext context ) {
    return Center(
      child: Container(
        height: 52,
        margin: const EdgeInsets.only(top: 40, bottom: 24),
        alignment: Alignment.center,
        child: TextFormField(
          controller: otpController,
          readOnly: true,
          textAlignVertical: TextAlignVertical.top,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 19),
          inputFormatters: [ PersianNumberInputFormatter() ],
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: const OutlineInputBorder(),
            prefixIconConstraints: const BoxConstraints(minWidth: 90),
            prefixIcon: Image.asset("assets/icon/flag.png"),
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}

