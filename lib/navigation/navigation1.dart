import 'package:first_app/bookscreens/books_screen10.dart';
//import 'package:first_app/navigation/navigation1.dart';
import 'package:flutter/material.dart';
import 'package:first_app/components/background_image.dart';
import 'package:first_app/screens/home_screen.dart';

import '../bookscreens/books_screen9.dart';

class MathsDashboard extends StatelessWidget {
  const MathsDashboard({super.key});

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
                      _buildCard(context, 'Class 9', Icons.format_list_numbered_outlined, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BooksScreen()));
                      }),
                      _buildCard(context, 'Class 10', Icons.format_list_numbered_outlined, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BooksScreenTen()));
                      }),
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