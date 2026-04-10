import 'package:flutter/material.dart'; 
void main() => runApp(const MyApp()); 
class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return const MaterialApp( 
      debugShowCheckedModeBanner: false, 
      home: GridViewExample(), 
    ); 
  } 
} 
 
class GridViewExample extends StatelessWidget { 
  const GridViewExample({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text("GridView Example")), 
      body: GridView.builder( 
        padding: const EdgeInsets.all(10), 
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( 
          crossAxisCount: 2,
crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
        ), 
        itemCount: 20, 
        itemBuilder: (context, index) { 
          return Container( 
            decoration: BoxDecoration( 
              color: Colors.blue, 
              borderRadius: BorderRadius.circular(10), 
            ), 
            child: Center( 
              child: Text( 
                "Item ${index + 1}", 
                style: const TextStyle( 
                  color: Colors.white, 
                  fontSize: 18, 
                ), 
              ), 
            ), 
          ); 
        }, 
      ), 
    ); 
  } 
}