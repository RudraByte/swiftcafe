import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final String coffeeImagePath;

  const OrderPage({super.key, required this.coffeeImagePath});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/a.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Glass overlay image
          Positioned.fill(
            child: Image.asset(
              'images/Glass.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,  
            left: MediaQuery.of(context).size.width / 2 - 228, 
            child: Container(
              width: 456,  
              height: 366,  
              child: Image.asset(
                'images/listcoffee.png', 
                fit: BoxFit.contain,  
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.45, 
            left: 0,
            child: Image.asset(
              'images/Rectangle13.png',
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenHeight * 0.38, 
            left: 0,
            child: Image.asset(
              'images/Rectangle13+.png',
              width: screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenHeight * 0.47, 
            left: 0,
            right: 0,
            bottom: 0, 
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04, 
                vertical: screenHeight * 0.02,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  right: screenWidth * 0.08,
                  left: screenWidth * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lattè',
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: screenWidth * 0.05),
                                SizedBox(width: screenWidth * 0.01),
                                const Text('4.9', style: TextStyle(color: Colors.white)),
                                SizedBox(width: screenWidth * 0.02),
                                const Text('(458)', style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: screenWidth * 0.14,
                          height: screenHeight * 0.035,
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: DropdownButton<int>(
                            value: 1,
                            onChanged: (int? newValue) {},
                            items: <int>[1, 2, 3, 4].map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Text(value.toString()),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Text(
                      'Caffè latte is a milk coffee that is made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                      style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.03),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Text(
                      'Choice of Cup Filling',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildOptionButton('Full', isSelected: true, screenWidth),
                        _buildOptionButton('1/2 Full', screenWidth),
                        _buildOptionButton('3/4 Full', screenWidth),
                        _buildOptionButton('1/4 Full', screenWidth),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    // Choice of Milk
                    Text(
                      'Choice of Milk',
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        _buildRadioGroup([
                          'Skim Milk',
                          'Almond Milk',
                          'Soy Milk',
                        ], screenWidth),
                        SizedBox(width: screenWidth * 0.05),
                        _buildRadioGroup([
                          'Lactose Free Milk',
                          'Full Cream Milk',
                          'Oat Milk',
                        ], screenWidth),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    // Choice of Sugar
                    Text(
                      'Choice of Sugar',
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        _buildRadioGroup([
                          'Sugar X1',
                          '½ Sugar',
                        ], screenWidth),
                        SizedBox(width: screenWidth * 0.12),
                        _buildRadioGroup([
                          'Sugar X2',
                          'No Sugar',
                        ], screenWidth),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget for option buttons (for Cup Filling)
  Widget _buildOptionButton(String text, double screenWidth, {bool isSelected = false}) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        width: screenWidth * 0.18,
        height: 27,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: screenWidth * 0.03,
              color: isSelected ? Colors.black : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget to build a group of radio buttons (for Milk, Sugar choices)
  Widget _buildRadioGroup(List<String> options, double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: options.map((option) {
        return Row(
          children: [
            Radio(
              value: option,
              groupValue: 'selectedOption', 
              onChanged: (value) {
                setState(() {
                });
              },
            ),
            Text(
              option,
              style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.03),
            ),
          ],
        );
      }).toList(),
    );
  }
}
