import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextStylingExample(),
    );
  }
}

class TextStylingExample extends StatelessWidget {
  const TextStylingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styling Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Example 1: Changing font size
            Text('Large Font Size (24)', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10), // Spacer
            // Example 2: Changing font weight
            Text(
              'Bold Font Weight',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Spacer
            // Example 3: Changing font color
            Text('Red Font Color', style: TextStyle(color: Colors.red)),
            SizedBox(height: 10), // Spacer
            // Example 4: Combining styles
            Text(
              'Large, Bold, and Blue',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10), // Spacer
            // Example 5: Using a Row with styled Text widgets
            Row(
              children: [
                Text(
                  'Row: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Styled ',
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
                Text(
                  'Text',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Custom Font Family: FiraCode ',
              style: GoogleFonts.firaCode(
                textStyle: TextStyle(color: Colors.red, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
