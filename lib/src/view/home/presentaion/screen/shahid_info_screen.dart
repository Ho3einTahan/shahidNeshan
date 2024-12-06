import 'package:flutter/material.dart';
import 'package:shahid_neshan/src/config/theme.dart';

import '../../../../core/constans/sizes.dart';
import '../../../../core/widget/custom_appbar_widget.dart';

class ShahidInfoScreen extends StatefulWidget {
  ShahidInfoScreen({
    super.key,
    required this.shahidName,
    required this.image,
    required this.description,
    required this.age,
    required this.mahalTavallod,
    required this.mahalShahadat,
    required this.vasiatNameh,
  });

  String image;
  String age;
  String vasiatNameh;
  String mahalShahadat;
  String mahalTavallod;
  String description;
  String shahidName;

  @override
  State<ShahidInfoScreen> createState() => _ShahidInfoScreenState();
}

class _ShahidInfoScreenState extends State<ShahidInfoScreen> {
  final List<bool> isLiked = List.generate(3, (index) => false);
  final List<bool> isSaved = List.generate(3, (index) => false);
  bool isLikedAppbar = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppbarWidget(
          title: widget.shahidName,
          action: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border, color: Colors.black),
            ),
          ],
          leadingWidth: Sizes.width(context) * 0.7,
          needNavigationBackIcon: true,
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        widget.image,
                        height: 320,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(flex: 4, child: _buildShahidInfoCard('محل شهادت:', widget.mahalShahadat)),
                      const SizedBox(width: 8),
                      Expanded(flex: 4, child: _buildShahidInfoCard('محل تولد:', widget.mahalTavallod)),
                      const SizedBox(width: 8),
                      Expanded(flex: 2, child: _buildShahidInfoCard('سن:', widget.age)),
                    ],
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, top: 12, bottom: 12),
                  child: Row(
                    children: [
                      Image.asset("assets/icon/appbar_icon.png"),
                      const SizedBox(width: 4),
                      Text(
                        'خلاصه زندگی نامه',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(widget.description, textAlign: TextAlign.justify),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, top: 12, bottom: 12),
                  child: Row(
                    children: [
                      Image.asset("assets/icon/appbar_icon.png"),
                      const SizedBox(width: 4),
                      Text(
                        'خلاصه زندگی نامه',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(widget.vasiatNameh, textAlign: TextAlign.justify),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14, top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/icon/appbar_icon.png"),
                      const SizedBox(width: 4),
                      Text('به نیت این شهید', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20)),
                      const Spacer(),
                      
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => _buildCommentBanner(index),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShahidInfoCard(String title, String subTitle) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xffCDDBE7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12, color: const Color(0xff5A87AF)),
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, color: const Color(0xff074B87)),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentBanner(int index) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      margin: const EdgeInsets.only(left: 10, right: 20, bottom: 20, top: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              Image.asset('assets/images/woman.png'),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'فاطمه احمدی',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
                  ),
                  Text.rich(TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 12,
                          ),
                      children: [
                        const TextSpan(text: "به نیت "),
                        TextSpan(text: widget.shahidName, style: TextStyle(color: Theme.of(context).primaryColor)),
                      ]))
                ],
              )
            ],
          ),
          Text.rich(TextSpan(style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14), children: [
            const TextSpan(text: "امروز رفتم سر مزار"),
            TextSpan(text: "#${widget.shahidName} ... ", style: const TextStyle(color: Color(0xff3981EC))),
            const TextSpan(text: "حال و هوای خیلی خوبی داشت"),
            TextSpan(text: "سر راه به نیت ${widget.shahidName} صدقه دادم."),
            const TextSpan(text: " شیرازی صدقه دادم. امروز رفتم سر مزار شهید صیاد شیرازی")
          ])),
          TextButton(
            onPressed: () {},
            child: Text(
              'مشاهده بیشتر',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14, color: CustomTheme.theme.primaryColor),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isLiked[index] = !isLiked[index];
                  });
                },
                icon: Icon(isLiked[index] ? Icons.favorite : Icons.favorite_border, size: 22, color: isLiked[index] ? Colors.red : const Color(0xff555555)),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.share, size: 22, color: Color(0xff555555)),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    isSaved[index] = !isSaved[index];
                  });
                },
                icon: Icon(
                  isSaved[index] ? Icons.bookmark : Icons.bookmark_border,
                  size: 22,
                  color: isSaved[index] ? Colors.black : const Color(0xff555555),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
