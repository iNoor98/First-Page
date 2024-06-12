import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .primary,
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Welcome to my App',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .primary,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {
                showDialog(context: context, builder:(BuildContext context){
                 return const AlertDialog(
                   title: Center(
                     child: Text(
                       'Success',
                       style: TextStyle(
                         color: Colors.green,
                         fontSize: 40,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                 ) ;
                });
              },
              style: TextButton.styleFrom(
                side: BorderSide(
                  color: Theme
                      .of(context)
                      .colorScheme
                      .primary,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Click on me',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .primary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
