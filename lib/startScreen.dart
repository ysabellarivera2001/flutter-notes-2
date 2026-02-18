import 'package:flutter/material.dart';

class startScreen extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 142, 193, 84),
                const Color.fromARGB(255, 208, 226, 65)
              ]
            )
          ),
        //CONTENT  
         child: Center(
           child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "images/Logo.png",
                  width: 200,
                ),
                Text(
                  "Quiz App",
                  style: TextStyle(
                    fontSize: 20,
                  ) 
                ),
                SizedBox(
                  height: 10,
                ),
                OutlinedButton.icon(
                  icon: Icon(Icons.access_time_filled_rounded),
                  onPressed: () {
           
                  }, 
                  label: Text(
                    "Start Quiz"
                  )
                ) 
              ],
            ),
         )
        ); 
  }
}