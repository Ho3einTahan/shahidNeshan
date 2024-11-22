import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {

  TextEditingController numberController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:[
          Expanded(
            // flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo.png'),
          )),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ورود یا ثبت نام'),
                  Text('جهت ورود به شهید نشان شماره موبایل خود را وارد کنید '),
                  SizedBox(height: 10,),
                  TextField(
                    controller: numberController,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('ورود'))
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              
              padding: const EdgeInsets.only(left: 10, right: 10 , top:5),
              child: GridView.builder(
              itemCount: 12,
              shrinkWrap: true,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.5,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3),
              itemBuilder: (context, index) =>
                  oneNumberItemWidget(index)),
            ),
          )
        ]
      )
    );
  }

  Widget oneNumberItemWidget(int index) => index == 9 
    ? const SizedBox.shrink() 
    : Container(
      decoration: BoxDecoration(
        color: index == 11 ? const Color(0xffCDDBE7) : Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(4),

      ),
      child: InkWell(
            onTap: () {
              if(index == 11){
                if(numberController.text.isNotEmpty)
                  numberController.text = numberController.text.substring(0, numberController.text.length - 1);
              }
              else{
                String data()=> switch(index){
                  10 => '0',
                  _ => ( index + 1 ).toString() };
                numberController.text += data();
              }
              setState(() {});
            },
            child: Center(
              child: Text(
                switch(index){
                  10 => '0',
                  9  => '*',
                  11 => '#',
                  _ => ( index + 1 ).toString()
                },
                style:  TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),
    );
}