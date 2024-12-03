

import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Daftar TIX ID")),
      body: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 255, 255, 255))),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Nama Lengkap",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Nomor Handphone",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white, filled: true, prefixText: '+62'),
              ),
              SizedBox(height: 60), 
              Center(child: 
              SizedBox(width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, '/home'); 
                  },
                  child: Text("Daftar TIX ID",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255,0,26,60),
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )
                  ),
                ),
              ),)
             
            ],
          ),
        ),
      ),
    );
  }
}
