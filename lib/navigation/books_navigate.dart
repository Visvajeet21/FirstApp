// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const SchoolDashboard());
// }
//
// class SchoolDashboard extends StatelessWidget {
//   const SchoolDashboard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Books'),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 'Welcome, Student Learning Kit',
//                 style: Theme.of(context).textTheme.headline5,
//               ),
//             ),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 3,
//                 mainAxisSpacing: 16,
//                 crossAxisSpacing: 16,
//                 padding: const EdgeInsets.all(16),
//                 children: [
//                   _buildCard(context, 'Class 9', Icons.people, onPressed: () {}),
//                   _buildCard(context, 'Class 10', Icons.school, onPressed: () {}),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildCard(BuildContext context, String title, IconData icon,
//       {VoidCallback? onPressed}) {
//     return InkWell(
//         onTap: onPressed,
//         child: Card(
//             elevation: 4,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   icon,
//                   size: 48,
//                   color: Theme.of(context).primaryColor,
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   title,
//                   style: Theme.of(context).textTheme.headline6,
//                 ),
//               ],
//             ),
//         ),
//         );
//     }
// }

import 'package:first_app/navigation/navigation2.dart';
import 'package:first_app/navigation/navigation3.dart';
import 'package:flutter/material.dart';
import 'package:first_app/components/background_image.dart';
import 'package:first_app/screens/home_screen.dart';
import 'package:first_app/navigation/navigation1.dart';


class SchoolDashboard extends StatelessWidget {
  const SchoolDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.deepPurple[900],
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Image.asset('student_learning_kit-master/assets/images/Learn It.png',
                fit: BoxFit.scaleDown,
                scale: 3,),

              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const HomeScreen()));
                  },
                ),
              ],
            ),

            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'CLASS 9',
                    style: TextStyle(fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),

                const SizedBox(height:28),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 16,
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildCard(context, 'Maths', Icons.format_list_numbered_outlined, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const MathsDashboard()));
                      }),
                      _buildCard(context, 'Science', Icons.science, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ScienceDashboard()));
                      }),
                      _buildCard(context, 'Social Science', Icons.people_alt, onPressed: () {

                      }),
                      _buildCard(context, 'English', Icons.abc, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const EnglishDashboard()));
                      }),
                      _buildCard(context, 'Programming', Icons.people,
                          onPressed: () {}),

                    ],
                  ),
                ),
                const SizedBox(height: 28),


              ],

            ),


          ),
        ),
      ],
    );
  }
  Widget _buildCard(BuildContext context, String title, IconData icon,
      {VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child:SizedBox(
        height: 100,
        width: 200,

        child: Card(
          elevation: 4,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48,
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

