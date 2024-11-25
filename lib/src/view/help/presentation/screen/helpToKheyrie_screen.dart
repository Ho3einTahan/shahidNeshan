import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';
import 'package:shahid_neshan/src/core/extenstion/navigation_extension.dart';
import 'package:shahid_neshan/src/core/utils/convert_english_to_persian.dart';

class HelpToKheyrieScreen extends StatefulWidget {
  const HelpToKheyrieScreen({super.key});

  @override
  State<HelpToKheyrieScreen> createState() => _HelpToKheyrieScreenState();
}

class _HelpToKheyrieScreenState extends State<HelpToKheyrieScreen> {
  String? selectedKheyrie;
  String? selectedPrice;
  final TextEditingController priceController = TextEditingController();
  bool isLikedAppbar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomTheme.theme.colorScheme.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, right: 10, left: 10),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () => context.navigateBack(), icon: const Icon(Icons.arrow_forward)),
              Expanded(
                  child: Text(
                'کمک به خیریه به نیت شهدا',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: MediaQuery.of(context).size.width > 360 ? 20 : 16),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              )),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share, color: Colors.black),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isLikedAppbar = !isLikedAppbar;
                    });
                  },
                  icon: Icon(isLikedAppbar ? Icons.favorite : Icons.favorite_border, color: isLikedAppbar ? Colors.red : Colors.black)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('کمک به خیریه به نیت شهدا', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20)),
                  IconButton(onPressed: () => context.navigateBack(), icon: const Icon(Icons.arrow_forward)),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(right: 14, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('انتخاب خیریه', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16)),
                  const SizedBox(width: 4),
                  Image.asset("assets/icon/appbar_icon.png"),
                ],
              ),
            ),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _buildChooseKheyrieCard(context, "بنیاد امید کاشان", "kheyrie_logo_1"),
                _buildChooseKheyrieCard(context, "موسسه مهر مطهر", "kheyrie_logo_2"),
                _buildChooseKheyrieCard(context, "بنیاد نیکوکاری رومیکا", "kheyrie_logo_3"),
                _buildChooseKheyrieCard(context, "موسسه خیریه کوثر نور", "kheyrie_logo_4"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14, top: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('مبلغ کمک', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16)),
                  const SizedBox(width: 4),
                  Image.asset("assets/icon/appbar_icon.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildHelpPriceCard(context, "۱۰٬۰۰۰"),
                  _buildHelpPriceCard(context, "۲۰٬۰۰۰"),
                  _buildHelpPriceCard(context, "۵۰٬۰۰۰"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                child: TextField(
                  controller: priceController,
                  inputFormatters: [PersianNumberInputFormatter()],
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    prefixIcon: _buildMinusButton(),
                    suffixIcon: _buildPlusButton(),
                    hintText: 'مبلغ را وارد کنید...',
                    hintTextDirection: TextDirection.rtl,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14, top: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('به نیت شهید', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16)),
                  const SizedBox(width: 4),
                  Image.asset("assets/icon/appbar_icon.png"),
                ],
              ),
            ),
            Container(
              height: 55,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const TextField(
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(suffixIcon: Icon(Icons.search, color: Colors.grey), hintText: 'جستوجوی شهید...', hintTextDirection: TextDirection.rtl),
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _buildShahidCard('شهید اکبر  زجاجی', 'zojaji'),
                _buildShahidCard('شهید عباس کریمی', 'karimi'),
                _buildShahidCard('شهید علی آقا معمار', 'memar'),
                _buildShahidCard('شهید علی فارسی', 'farsi'),
                _buildShahidCard('شهید رجایی کاشانی', 'rejaee'),
                _buildShahidCard('شهید محمد باهنر', 'bahonar'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: _buildHelpToKheyrieButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChooseKheyrieCard(BuildContext context, String kheyrieName, String image) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedKheyrie = kheyrieName;
        });
      },
      child: Container(
        width: 175,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: selectedKheyrie == kheyrieName ? CustomTheme.theme.primaryColor : Colors.transparent),
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            const SizedBox(width: 4),
            Image.asset("assets/images/$image.png"),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                kheyrieName,
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHelpPriceCard(BuildContext context, String price) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPrice = price;
        });
        priceController.text = price;
      },
      child: Container(
        width: 110,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: selectedPrice == price ? CustomTheme.theme.primaryColor : Colors.transparent),
        ),
        child: Center(
          child: Text(
            '$price تومان',
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildPlusButton() {
    return InkWell(
      onTap: () {
        if (priceController.text.isEmpty) {
          priceController.text = '1000';
        } else {
          double currentValue = double.parse(persianToEnglishDigits(priceController.text.replaceAll('٬', '')));
          currentValue += 1000;
          priceController.text = currentValue.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}٬');
        }
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: CustomTheme.theme.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(child: Icon(Icons.add, color: Colors.white, size: 28)),
      ),
    );
  }

  Widget _buildMinusButton() {
    return InkWell(
      onTap: () {
        if (priceController.text.isNotEmpty) {
          double currentValue = double.parse(persianToEnglishDigits(priceController.text.replaceAll('٬', '')));
          if (currentValue >= 1000) {
            currentValue -= 1000;
            priceController.text = currentValue.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}٬');
          }
        }
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(color: CustomTheme.theme.primaryColor, borderRadius: BorderRadius.circular(12)),
        child: const Center(child: Icon(Icons.remove, color: Colors.white, size: 28)),
      ),
    );
  }

  Widget _buildShahidCard(String shahidName, String image) {
    return Container(
      width: 170,
      height: 50,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(shahidName, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14)),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: Image.asset('assets/images/shahid_images/$image.png', fit: BoxFit.cover,width: 40,)),
        ],
      ),
    );
  }

  Widget _buildHelpToKheyrieButton() {
    return Container(
      height: 45,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(color: CustomTheme.theme.primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text('کمک به خیریه', style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16, color: Colors.white))),
    );
  }
}

String persianToEnglishDigits(String input) {
  const persianDigits = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
  const englishDigits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

  for (int i = 0; i < persianDigits.length; i++) {
    input = input.replaceAll(persianDigits[i], englishDigits[i]);
  }
  return input;
}
