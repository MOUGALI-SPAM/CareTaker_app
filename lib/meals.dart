import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87.withOpacity(0.9),
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints.expand(
                width: 400,
                height: 650,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/7.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.book,
                          color: Colors.white,
                          size: 35,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Hospital Meals'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: Colors.white60.withOpacity(0.9),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 18,
                      runSpacing: 18,
                      children: [
                        _buildChip('Vegan'),
                        _buildChip('Carrots'),
                        _buildChip(
                          'Fruits',
                        ),
                        _buildChip('Soup'),
                        _buildChip('Khichdi'),
                        _buildChip('Greens'),
                        _buildChip(
                          'Cucumber',
                        ),
                        _buildChip('Milk'),
                        _buildChip('Sprouts'),
                        _buildChip('Veg Sandwich'),
                        _buildChip(
                          'Palak Juice',
                        ),
                        _buildChip('Fruit Shakes'),
                        _buildChip('Rice'),
                        _buildChip('Chapati'),
                        _buildChip(
                          'Oats',
                        ),
                        _buildChip(
                          'Bitter Groud',
                        ),
                        _buildChip(
                          'Etc',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Icon(
          Icons.health_and_safety_sharp,
          color: Colors.black87,
        ),
      ),
      label: Text(
        label.toUpperCase(),
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.white.withOpacity(0.6),
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(6.0),
    );
  }
}
