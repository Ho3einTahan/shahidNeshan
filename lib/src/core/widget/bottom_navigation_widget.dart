import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/home_screen.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/list_shahid_screen.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/location_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selected = 0;

  final List<Widget> screens = const [HomeScreen(), LocationScreen(), ListShahidScreen(needNavigationBackIcon: false)];
  final List<String> titles = ['خانه', 'اطراف من', 'شهدای کاشان'];
  final List<String> icons = ['home.svg', 'local.svg', 'view-grid-list.svg'];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: IndexedStack(index: _selected, children: screens,),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xffE6E6E6),width: 1),
            )
          ),
          height: 62,
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _selected,
            backgroundColor: Theme.of(context).colorScheme.onError,
            onTap: (value) => setState(()=> _selected = value),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            selectedFontSize: 0,
            showUnselectedLabels: false,
            useLegacyColorScheme: false,
            items:  List.generate(3, (index) => 
              BottomNavigationBarItem(
                activeIcon: SizedBox(
                  height: 61,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 7, ),
                        width: 65,
                        height: 3,
                        color: Theme.of(context).primaryColor,
                      ),
                      SvgPicture.asset('assets/icon/${icons[index]}', color: Theme.of(context).primaryColor,width: 24, height: 24,),
                      const SizedBox(height: 4,),
                      Text(titles[index], style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12,color: Theme.of(context).primaryColor),)
                    ],
                  ),
                ),
                label: '',
                backgroundColor: Colors.white,
                icon: Column(
                  children: [
                    SvgPicture.asset('assets/icon/${icons[index]}', width: 24, height: 24,),
                    const SizedBox(height: 4),
                    Text(titles[index], style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 12,color: const Color(0xff959595)),)
                  ],
                ))),
          ),
        ),
      ),
    );
  }
}
