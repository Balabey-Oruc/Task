import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class TaskCard extends StatelessWidget {
  TaskCard({this.firstBoxColour, this.title, this.subtitle});

  final Color firstBoxColour;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    bool someBooleanValue = true;
    return Padding(
      padding: EdgeInsets.only(
        top: 8,
      ),
      child: Row(
        children: [
          Container(
            height: 66,
            width: 9.24,
            decoration: BoxDecoration(
              color: firstBoxColour,
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          ),
          SizedBox(
            height: 66,
            width: 6.16,
          ),
          Expanded(
            child: Container(
              height: 66,
              // width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: ListTile(
                title: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: CircularCheckBox(
                    value: someBooleanValue,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    onChanged: (bool x) {
                      someBooleanValue = !someBooleanValue;
                    }
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
