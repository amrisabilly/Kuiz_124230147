import 'package:flutter/material.dart';
import 'package:kuiz/features/beranda/beranda_screen.dart';
import 'package:kuiz/features/layout/main_layout.dart';
import 'package:kuiz/stores/food.dart';

class DetailScreen extends StatefulWidget {
  final FoodMenu food;
  final String username;
  const DetailScreen({super.key, required this.food, required this.username});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color(0xFF1976D2),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Detail Food",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container
            Container(
              width: double.infinity,
              height: 200,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  widget.food.imageUrls.isNotEmpty
                      ? widget.food.imageUrls[0]
                      : '',
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) => Container(
                        color: Color(0xFFF5F5F5),
                        child: Icon(
                          Icons.directions_car,
                          size: 80,
                          color: Color(0xFF90A4AE),
                        ),
                      ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Vehicle Info Card
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vehicle Name
                  Text(
                    widget.food.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3E50),
                    ),
                  ),

                  SizedBox(height: 8),

                  // Vehicle Type
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xFF1976D2).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      widget.food.price,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1976D2),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Description
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1976D2),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.food.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF7B8794),
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: 20),

                  // Specifications
                  Text(
                    "Spesifikasi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1976D2),
                    ),
                  ),
                  SizedBox(height: 12),

                  // Engine
                  _buildSpecRow("Ingredients", widget.food.ingredients),
                  SizedBox(height: 8),

                  // Fuel Type
                  _buildSpecRow("Waktu", widget.food.cookingTime),
                  SizedBox(height: 20),

                  // Price
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFF1976D2).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFF1976D2).withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Harga",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          widget.food.price,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1976D2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF1976D2).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: Text("Pembelian"),
                                content: Text(
                                  "Terima kasih, ${widget.username}, telah membeli ${widget.food.name}!",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text("Berhasil Beli"),
                                          backgroundColor: Colors.green,
                                        ),
                                      );
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder:
                                              (context) => MainLayout(
                                                username: widget.username,
                                              ),
                                        ),
                                      );
                                    },
                                    child: Text("OK"),
                                  ),
                                ],
                              ),
                        );
                      },

                      child: Text(
                        "Beli",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1976D2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2C3E50),
            ),
          ),
        ),
        Text(": ", style: TextStyle(fontSize: 14, color: Color(0xFF7B8794))),
        Expanded(
          child: Text(
            value,
            style: TextStyle(fontSize: 14, color: Color(0xFF7B8794)),
          ),
        ),
      ],
    );
  }
}
