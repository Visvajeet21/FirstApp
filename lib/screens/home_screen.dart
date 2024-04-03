import 'package:first_app/navigation/books_navigate.dart';
import 'package:first_app/bookscreens/books_screen9.dart';
import 'package:first_app/screens/faq_screen.dart';
import 'package:first_app/screens/notes_screen.dart';
import 'package:first_app/screens/paper_screen.dart';
import 'package:first_app/screens/quiz_screen.dart';
//import 'package:first_app/screens/reader_screen9.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        // leading: IconButton( onPressed:(){} , icon :const Icon(Icons.menu)),
        title: const Text("Home"),
        // actions: [
        //   CircleAvatar(
        //     radius: 15,
        //     //backgroundImage: AssetImage(assetName),
        //   )
        // ],
      ),
      body: ListView(
        children: [
          // FOR SEARCH BAR ELEMENT
          Container(
            margin: const EdgeInsets.only(
                top: 10, bottom: 20, left: 800, right: 10),
            //width: MediaQuery.of(context).size.width,
            width: 30,
            height: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search Here..",
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.5),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text('Welcome User!!!!',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          // Container(
          //   decoration: const BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(100),
          //       )
          //   ),
          //   child: GridView.count(
          //     crossAxisCount: 2,
          //     children: [
          //       itemDashboard('Home', Icons.dangerous, Colors.deepOrange)
          //     ],
          //   ),
          // )
        ],
      ),


      drawer: const NavigationDrawer(),
    );
  }

  //
  // itemDashboard(String title, IconData iconData, Color background) =>
  //     Container(
  //       decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(10),
  //           boxShadow: const [
  //             BoxShadow(
  //                 offset: Offset(0, 5),
  //                 // color: Theme
  //                 //     .of(context as BuildContext)
  //                 //     .primaryColor
  //                 //     .withOpacity(.2),
  //                 spreadRadius: 2,
  //                 blurRadius: 5
  //             )
  //           ]
  //       ),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //             padding: const EdgeInsets.all(10),
  //             decoration: BoxDecoration(
  //               color: background,
  //               shape: BoxShape.circle,
  //             ),
  //             child: Icon(iconData, color: Colors.white),
  //           ),
  //           const SizedBox(height: 8),
  //           Text(title),
  //         ],
  //       ),
  //     );
}


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,
    ),
  );
  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(10),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const HomeScreen())),
        ),

        ListTile(
          leading: const Icon(Icons.book_outlined),
          title: const Text('Books'),
          onTap: () {
            Navigator.pop(context);
            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BooksScreen()));
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SchoolDashboard()));
          },
        ),

        ListTile(
          leading: const Icon(Icons.notes_outlined),
          title: const Text('Notes'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const NotesScreen()));
          },
        ),

        ListTile(
          leading: const Icon(Icons.quiz_outlined),
          title: const Text('Quiz'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const QuizScreen()));
          },
        ),

        ListTile(
          leading: const Icon(Icons.bookmark_outlined),
          title: const Text('Question Paper'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const PaperScreen()));
          },
        ),

        ListTile(
          leading: const Icon(Icons.question_mark_outlined),
          title: const Text('FAQ'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const FaqScreen()));
          },
        ),
      ],
    ),
  );
}



