import 'package:flutter/material.dart';
import 'package:cv_gonzales/education.dart';
import 'package:cv_gonzales/Certificates.dart';
import 'package:cv_gonzales/Skills.dart';
import 'package:cv_gonzales/main.dart';


import 'AboutMe.dart';

// final Uri _url = Uri.parse('https://www.linkedin.com/in/harshit-sahu-1015a0178/?originalSubdomain=in');

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          const SizedBox(
            height: 45,
            width: double.infinity,
          ),

          const CircleAvatar(

            radius: 85,
            backgroundImage: AssetImage('assets/images/'
                'gonzales.jpeg'),

          ),

          const SizedBox(
            height: 18,
            width: double.infinity,
          ),

          const Text(
            'ROLANDO GONZALES JR',
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          Expanded(
            child: SingleChildScrollView(

              scrollDirection: Axis.vertical,

              child: Column(

                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const AboutMe()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.man,
                              color: Colors.amber,
                            ),
                            title: Text(
                              'About Me',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const Skills()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.stacked_line_chart_outlined,
                              color: Colors.amber,
                            ),
                            title: Text(
                              'Skills',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const Education()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.grade,
                              color: Colors.amber,
                            ),
                            title: Text(
                              'Education ',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const Certificates()
                      )
                      );
                    },
                    child: const SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Card(
                        elevation: 7,
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.personal_injury_outlined,
                              color: Colors.amber,
                            ),
                            title: Text(
                              'Certificates',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const HomeRoute()));
                    },
                    icon: const Icon(
                      // <-- Icon
                      Icons.logout,
                    ),
                    label: const Text('Logout'), // <-- Text
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.redAccent,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                    ),
                  ),
                ],
              ),


            ),
          ),
        ],
      ),


      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.push(context, MaterialPageRoute(
      //       builder: (context)=>  Page2())
      //   );
      //   }
      // )

    );
  }

}