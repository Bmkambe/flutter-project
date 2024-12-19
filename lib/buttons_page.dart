import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('buttons page'),
      
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //buttons
            ElevatedButton(onPressed: (){}, child: Text('elevated button')),
            SizedBox(height: 12,),
            OutlinedButton(onPressed: (){}, child: Text('outlined')),
            SizedBox(height: 12,),
            TextButton(onPressed: (){}, child: Text('textbutton')),
          ],
        ),
      ),
    );
  }
}