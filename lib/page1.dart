import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tooooodoooooapppppp/appcolor.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  bool taskornot=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
              child: Text(
                DateFormat.yMMMMd().format(DateTime.now()),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Today",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
            SizedBox(
              height: 100,
              child: DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: Colors.orange,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    // _selectedValue = date;
                  });
                },
              ),
            ),
taskornot==true?const notask():const task()
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orange,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
class notask extends StatelessWidget {
  const notask({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/img_2.png",),
        ),
        const Center(child:  Text("What do you to do today?",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
        ),)),
        const Padding(
          padding:  EdgeInsets.all(16),
          child:  Center(child:  Text("Tap + and add your task",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),)),
        ),

      ],
    );
  }
}
class task extends StatelessWidget {
  const task({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Task 1"),
      subtitle: Text("jjhg"),
      trailing: ,
    );

  }
}
