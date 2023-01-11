import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Members',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Member Team"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410007-1",
                  name: "ชื่อ : จตุรวิธ มั่งกูล",
                  facebook: "Facebook : Jaturawit Mangkun",
                  pic: "lib/assets/image/Phupa.jpg"),
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410024-1",
                  name: "ชื่อ : พรวพรรณ แก้วก่ำ",
                  facebook: "Facebook : Phraewphan Kaewkam",
                  pic: "lib/assets/image/Phaew.jpg"),
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410025-9",
                  name: "ชื่อ : ภัทรพล ลิมปนาคม",
                  facebook: "Facebook : Patarapol Limpanakom",
                  pic: "lib/assets/image/Pon.jpg"),
              Card(
                  context: context,
                  color: Colors.white,
                  stuid: "Student-ID 633410083-5",
                  name: "ชื่อ : พิสิษฐ์ แซ่เอี้ย",
                  facebook: "Facebook : พิสิษฐ์ แซ่เอี้ย",
                  pic: "lib/assets/image/tame.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String name,
      required String facebook,
      required String pic,
      required String stuid}) {
    return Container(
      width: 400,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Profile(
                        name: name,
                        facebook: facebook,
                        pic: pic,
                        stuid: stuid,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              pic,
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: color,
                child: Center(child: Text(name))),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Profile(
      {required this.name,
      required this.facebook,
      required this.pic,
      required this.stuid});
  String name;
  String facebook;
  String pic;
  String stuid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Column(children: [Text(stuid), Text(name), Text(facebook)]),
    );
  }
}