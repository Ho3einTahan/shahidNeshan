import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommentCardWidget extends StatefulWidget {
  final List<String> images;

  const CommentCardWidget({super.key, required this.images});

  @override
  State<CommentCardWidget> createState() => _CommentCardWidgetState();
}

class _CommentCardWidgetState extends State<CommentCardWidget> {
  bool liked = false;
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/woman.png'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
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
                            TextSpan(text: "شهید صیاد شیرازی", style: TextStyle(color: Theme.of(context).primaryColor)),
                          ]))
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.more_horiz_sharp,
                      color: Color(0xff333333),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 8
          ),
          Text.rich(TextSpan(style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 14), children: const [
            TextSpan(text: "امروز رفتم سر مزار"),
            TextSpan(text: "#شهید_صیاد_شیرازی ... ", style: TextStyle(color: Color(0xff3981EC))),
            TextSpan(text: "حال و هوای خیلی خوبی داشت"),
            TextSpan(text: "سر راه به نیت شهید شیرازی صدقه دادم."),
            // TextSpan(text: " شیرازی صدقه دادم. امروز رفتم سر مزار شهید صیاد شیرازی")
          ])),
          widget.images.isNotEmpty
              ? Container(
                  margin: const EdgeInsets.only(top: 8),
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.images.length,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.only(left: 12),
                            child: ClipRRect(borderRadius: BorderRadius.circular(6), child: Image.asset(widget.images[index])),
                          )),
                )
              : Container(
                  height: 48,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "مشاهده بیشتر",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).primaryColor),
                  )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () => setState(() => liked = !liked),
                      icon: SvgPicture.asset(
                        liked ? 'assets/icon/save_button.svg' : 'assets/icon/like.svg',
                        width: 20,
                      )),
                  IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/icon/share-one.svg')),
                ],
              ),
              IconButton(onPressed: () => setState(() => saved = !saved), icon: SvgPicture.asset(saved ? 'assets/icon/Vector-1.svg' : 'assets/icon/Vector.svg'))
            ],
          )
        ],
      ),
    );
  }
}
