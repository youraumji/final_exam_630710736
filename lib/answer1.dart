import 'package:flutter/material.dart';

class Answer1 extends StatefulWidget {
  const Answer1({super.key});

  @override
  State<Answer1> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Answer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "โปรไฟล์ผู้ใช้",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/profile.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "ชื่อผู้ใช้: John Doe",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "อีเมล: johndoe@example.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                  title: Text("การตั้งค่า"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  title: Text("เปลี่ยนรหัสผ่าน"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.info_rounded,
                    color: Colors.blue,
                  ),
                  title: Text("ความเป็นส่วนตัว"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("แก้ไขโปรไฟล์")),
                  );
                },
                child: const Text("แก้ไขโปรไฟล์"),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("ออกจากระบบ")),
                  );
                },
                child: const Text("ออกจากระบบ"),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
