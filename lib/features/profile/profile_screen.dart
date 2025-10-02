import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFF1976D2),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 20),

            // Profile Card
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Avatar
                  Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/profile.png"),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Nama
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Nama",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                      ),
                      Text(
                        ": ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7B8794),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Amri Sabilly",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  // NIM
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "NIM",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                      ),
                      Text(
                        ": ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7B8794),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "124230147",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  // Kelas
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Kelas",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                      ),
                      Text(
                        ": ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7B8794),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "SI-F",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  // Praktikum
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "Praktikum",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                      ),
                      Text(
                        ": ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7B8794),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Pemrograman Aplikasi Mobile",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          "My Web",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                      ),
                      Text(
                        ": ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7B8794),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Pemrograman Aplikasi Mobile",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF2C3E50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
