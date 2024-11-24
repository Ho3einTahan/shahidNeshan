import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shahid_neshan/src/view/explore/presentaion/screen/explore_screen.dart';
import 'package:shahid_neshan/src/view/home/presentaion/screen/home_screen.dart';
import 'package:shahid_neshan/src/view/location/presentaion/screen/location_screen.dart';
import 'package:shahid_neshan/src/view/profile/presentaion/screen/profile_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({ super.key });

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  
  int _selected = 0;
  
  final List<Widget> screens = const [ HomeScreen(), ExploreScreen(), LocationScreen(), ProfileScreen() ];
  final List<String> titles = [ 'خانه', 'کاوش', 'اطراف من', 'حساب' ];
  final List<String> icons = ['home.svg', 'heart.svg', 'local.svg', 'user.svg'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selected, children: screens,),
      bottomNavigationBar: SizedBox(
        height: 61,
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
          items:  List.generate(4, (index) => 
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
    );
  }
}
