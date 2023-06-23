
import 'package:flutter/material.dart';

class excercise_tile extends StatelessWidget {
  final icon;
  final String excerciseName;
  final String numberOfExcercise;
  final color;

  const excercise_tile({
    Key? key,
    required this.icon,
    required this.excerciseName,
    required this.numberOfExcercise,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: color,
                      child: Icon(icon, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(excerciseName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                      Text(numberOfExcercise.toString())
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
