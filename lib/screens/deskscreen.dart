import 'package:flutter/material.dart';
import 'package:simple_project/content/circle.dart';

class DeskBord extends StatefulWidget {
  const DeskBord({super.key});

  @override
  State<DeskBord> createState() => _DeskBordState();
}

class _DeskBordState extends State<DeskBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                //-----first part completed-------
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello,"),
                        Text(
                          " Hii James",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const Spacer(),
                    Align(
                      alignment: Alignment.topRight,
                      child: ClipOval(
                          child: Image.asset("assets/images/gp.png",
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),

              //-------second part-------------------

              _postCard(),

              //-----------------second part completed ------------------

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(width: 8.0),
                    ),
                    hintText: "Search doctor or health issue",
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                  ),
                ),
              ),

              //-----third part completed-----------------------

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    menuWidget(
                        imagePath: "assets/images/sun.png", text: "Covid"),
                    menuWidget(
                        imagePath: "assets/images/hospital.png",
                        text: "Hospital"),
                    menuWidget(
                        imagePath: "assets/images/profile-add.png",
                        text: "Doctor"),
                    menuWidget(
                        imagePath: "assets/images/link.png", text: "Medicin"),
                  ],
                ),
              ),

              //----------------------fourth part---------------------
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Near Doctor",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 38.0, top: 20.0, right: 20.0, bottom: 20.0),
                      child: Row(
                        children: [
                          Image.asset("assets/images/Mask group.png"),
                          const Column(
                            children: [
                              Text(
                                "Dr. Joseph Brostito",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Dental Specialist",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.location_city),
                          const Text("1.2KM")
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 55.0, right: 35.0, top: 20.0, bottom: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.alarm),
                          Text("4,8 (120 Reviews)"),
                          Spacer(),
                          Icon(Icons.alarm),
                          Text("Open at 17.00"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //---------------------bottom_bar------------------------------

      bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5.0,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: kBottomNavigationBarHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [Icon(Icons.home), Text("Home")],
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.calendar_month),
                    Text("share"),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.message),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.person),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget menuWidget(
      {required String imagePath,
      required String text,
      Color backgroundColor = Colors.grey}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 300,
                  width: 60,
                  child: Image.asset(
                    imagePath,
                    height: 40,
                  )),
            ),
          ),
        ),
        Text(text)
      ],
    );
  }

  Widget _postCard() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue, // Background color
          borderRadius: BorderRadius.circular(28.0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/photo.png",
                        height: 70.0,
                        width: 70.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 10.0),
                  child: Column(
                    children: [
                      Text(
                        "Dr. Imran Syahir",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "General Doctor ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.arrow_right),
                ),
              ],
            ),
            const Text(
              "------------------------------------------------------------------------------------",
              style: TextStyle(color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Icon(Icons.calendar_month),
                  Text(
                    "Sunday, 12 June",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Icon(Icons.alarm),
                  Text(
                    "11:00 - 12:00 AM",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
