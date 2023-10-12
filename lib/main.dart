import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:webai/dates.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime _selectedDate = DateTime.now();

  var Date = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
              height: 100.0,
              alignment: Alignment.center,
              child: Container(
                width: 350,
                child: Column(
                  children: [
                    Text(
                      "How old are you",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Age in years. this will help us to personalize an excersise program plan that will suit you.",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          // Container(
          //   padding: EdgeInsets.only(top: 80),
          //   height: MediaQuery.of(context).size.height * 0.6,
          //   child: ListWheelScrollView.useDelegate(
          //     itemExtent: 60,
          //     perspective: 0.005,
          //     diameterRatio: 1.2,
          //     magnification: 1.99,
          //     physics: FixedExtentScrollPhysics(),
          //     childDelegate: ListWheelChildBuilderDelegate(
          //       childCount: 31,
          //       builder: (context, index) {
          //         return MyDates(
          //           mins: index,
          //         );
          //       },
          //     ),
          //   ),
          // ),
          Container(
              padding: EdgeInsets.only(top: 80),
              height: MediaQuery.of(context).size.height * 0.45,
              child: NumberPicker(
                itemWidth: 100,
                itemHeight: 100,
                // step: 5,
                haptics: true,
                minValue: 1,
                maxValue: 99,
                value: Date,
                zeroPad: true,
                infiniteLoop: true,
                onChanged: (value) {
                  setState(() {
                    Date = value;
                  });
                },
                textStyle: TextStyle(color: Colors.grey[700], fontSize: 40),
                selectedTextStyle:
                    TextStyle(color: Colors.purple, fontSize: 60),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.purple,
                            style: BorderStyle.solid,
                            width: 5),
                        bottom: BorderSide(
                            color: Colors.purple,
                            style: BorderStyle.solid,
                            width: 5))),
              )),

          // Showcase second image source
          // SizedBox(
          //   height: 250,
          //   child: ScrollDatePicker(
          //     selectedDate: _selectedDate,
          //     locale: Locale('ko'),
          //     scrollViewOptions: DatePickerScrollViewOptions(
          //       year: ScrollViewDetailOptions(
          //         label: '년',
          //         margin: const EdgeInsets.only(right: 8),
          //       ),
          //       month: ScrollViewDetailOptions(
          //         label: '월',
          //         margin: const EdgeInsets.only(right: 8),
          //       ),
          //       day: ScrollViewDetailOptions(
          //         label: '일',
          //       )
          //     ),
          //     onDateTimeChanged: (DateTime value) {
          //       setState(() {
          //         _selectedDate = value;
          //       });
          //     },
          //   ),
          // ),
          Container(
            width: 350,
            padding: EdgeInsets.only(left: 15, top: 180),
            child: Row(
              children: [
                SizedBox(
                  height: 120,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute<void>(
                    //     builder: (BuildContext context) => const EditUser(),
                    // ),
                    // );
                    // addImage();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 211, 182, 18),
                      shape: StadiumBorder(),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40)),
                  child: Text(
                    "   Back   ",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute<void>(
                    //     builder: (BuildContext context) => const EditUser(),
                    // ),
                    // );
                    // addImage();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 211, 182, 18),
                      shape: StadiumBorder(),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40)),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
