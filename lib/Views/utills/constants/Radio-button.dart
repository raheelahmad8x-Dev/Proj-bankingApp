import 'package:flutter/material.dart';


class RadioButt extends StatefulWidget {
  const RadioButt({super.key});

  @override
  State<RadioButt> createState() => _RadioButtState();
}

class _RadioButtState extends State<RadioButt> {
  String course='flutter';
  String courseSelects='flutter';
  String gender='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:
        Column(
          children: [
            Row(
              children: [
                Text('C++ programming'),
                Spacer(),
                Radio(
                    value: 'cpp',
                    groupValue: course,
                    onChanged: (value)
                    {
                      course=value!;
                      setState(() {
                
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text('Flutter Dev'),
                Spacer(),
                Radio(
                    value: 'flutter',
                    groupValue: course,
                    onChanged: (value)
                    {
                      courseSelects=value!;
                      setState(() {

                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text('male'),
                Spacer(),
                Radio(
                    value: 'male',
                    groupValue:gender,
                    onChanged: (value)
                    {
                      gender=value!;
                      setState(() {

                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text('Female'),
                Spacer(),
                Radio(
                    value: 'female',
                    groupValue:gender,
                    onChanged:(value)
                    {
                      gender=value!;
                      setState(() {
                      });
                    }),
              ],
            ),
          ],
        )
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isswitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:
      Switch(
          value:isswitched,
          onChanged:(value)
          {
            isswitched=value;
            setState(() {

            });
          }
      )
      ),
    );
  }
}
