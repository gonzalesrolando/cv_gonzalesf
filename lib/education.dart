// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Educational Attainment',
          ),
        ),
        body: Column(
          children: [
            Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 15),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'EDUCATIONAL ATTAINMENT',
                        style: TextStyle(
                          fontSize: 20,
                          foreground: Paint()
                            ..style = PaintingStyle.fill
                            ..strokeWidth = 5
                            ..color = Colors.blueGrey[600]!,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'TERTIARY:\nBachelor of Science and Information Technology \nPhilippine College of Science and Technology \n2018-Present',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '\nSECONDARY:\nCalasiao Comprehensive National High School \nMalong st. Pob West Calasiao Pangasinan\n2017-2018',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '\nELEMENTARY:\nlongos Elementary School \nBarangay Longos Calasiao, Pangasinan\n2011-2012',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ]
        ));
  }
}

