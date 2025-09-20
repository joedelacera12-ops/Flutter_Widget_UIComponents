import 'package:flutter/material.dart';

// The main function is the entry point of the application
void main() {
  runApp(const GFGapp());
}

// GFGapp is a stateless widget that represents the application
class GFGapp extends StatelessWidget {
  const GFGapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Title of the application (unchanged)
      title: 'GeeksforGeeks',

      // Light Theme Amendments:
      // - Primary color changed to Teal for a fresher look
      // - Elevated buttons are styled with rounded corners
      theme: ThemeData(
        primarySwatch: Colors.teal,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // more modern style
            ),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
          ),
        ),
      ),

      // Dark Theme Amendments:
      // - Switched from Grey to Indigo for a more vibrant dark mode
      // - Text buttons in dark mode will have orange text for contrast
      darkTheme: ThemeData(
        primarySwatch: Colors.indigo,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.orangeAccent,
          ),
        ),
      ),

      // Accent Color Amendment:
      // - Changed from AmberAccent to OrangeAccent
      //   to make the interface feel more energetic
      color: Colors.orangeAccent,

      // Supported locales: still English, can be expanded in the future
      supportedLocales: {const Locale('en', '')},

      // Debug banner hidden (unchanged)
      debugShowCheckedModeBanner: false,

      // Home screen of the application
      home: Scaffold(
        appBar: AppBar(
          // AppBar background color now matches the primary theme color (Teal)
          title: const Text('GeeksforGeeks'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          // Body updated with buttons to visualize the theme changes
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Theme updated with better amendments!',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text('Text Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
