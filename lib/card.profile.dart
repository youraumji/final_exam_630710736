import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF9EF),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Card(
            color: Color.fromARGB(255, 26, 26, 142),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 20,
            shadowColor: const Color.fromARGB(255, 12, 12, 12),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(161, 0, 0, 0), // สีเงา
                          blurRadius: 10, // ความเบลอของเงา
                          spreadRadius: 2, // ขยายเงาออกไป
                          offset: Offset(0, 4), // ระยะเงา
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/profile.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Jiratchaya Saengkla",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Poppins',
                      color: Color(0xffFFF4ED),
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(161, 0, 0, 0), // สีของเงา
                          blurRadius: 5, // ความเบลอของเงา
                          offset: Offset(2, 2), // การเลื่อนเงาแนวนอนและแนวตั้ง
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Student",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const Divider(thickness: 3, height: 15),
                  SizedBox(height: 5),
                  Row(
                    children: const [
                      Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 225, 71, 9),
                        size: 17,
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(161, 0, 0, 0), // สีของเงา
                            blurRadius: 4, // ความเบลอของเงา
                            offset: Offset(2, 1), // ระยะเงาแนวนอนและแนวตั้ง
                          ),
                        ],
                      ),
                      SizedBox(width: 5), // เพิ่มระยะห่างระหว่างไอคอนและข้อความ
                      Text(
                        "saengkla_j@silpakorn.edu",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFFF4ED), // สีข้อความ
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(161, 0, 0, 0), // สีเงา
                              blurRadius: 5, // ความเบลอของเงา
                              offset: Offset(2, 2), // การเลื่อนเงา
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 6, 187, 24),
                        size: 17,
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(161, 0, 0, 0), // สีของเงา
                            blurRadius: 4, // ความเบลอของเงา
                            offset: Offset(2, 1), // ระยะเงาแนวนอนและแนวตั้ง
                          ),
                        ],
                      ),
                      SizedBox(width: 5), // เพิ่มระยะห่างระหว่างไอคอนและข้อความ
                      Text(
                        "099 xxx xxxx",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFFF4ED), // สีข้อความ
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(161, 0, 0, 0), // สีเงา
                              blurRadius: 5, // ความเบลอของเงา
                              offset: Offset(2, 2), // การเลื่อนเงา
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: const [
                      Icon(
                        Icons.map,
                        color: Color.fromARGB(255, 37, 34, 216),
                        size: 17,
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(161, 0, 0, 0),
                            blurRadius: 4, // ความเบลอของเงา
                            offset: Offset(2, 1), // ระยะเงาแนวนอนและแนวตั้ง
                          ),
                        ],
                      ),
                      SizedBox(width: 5), // เพิ่มระยะห่างระหว่างไอคอนและข้อความ
                      Text(
                        "Nonthaburi",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFFF4ED), // สีข้อความ
                          shadows: [
                            Shadow(
                              color: Color.fromARGB(161, 0, 0, 0), // สีเงา
                              blurRadius: 5, // ความเบลอของเงา
                              offset: Offset(2, 2), // การเลื่อนเงา
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
