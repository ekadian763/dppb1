import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';
import 'package:moviees_app/pages/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    //var username = SessionManager.getUser().then((value) => value['username']);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            children: <Widget>[
               Padding(padding: EdgeInsets.all(20.0),),
              CircleAvatar(backgroundColor: Colors.grey,
               radius: 70.0,
               backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2018/03/06/22/57/portrait-3204843_1280.jpg'),
               ),

               Padding(padding: EdgeInsets.all(20.0),),
               TextField(decoration: InputDecoration(
                
                hintText: 'nama', 
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon( 
                  Icons.edit,
                  color: Colors.teal
                )
                 )),
                Padding(padding: EdgeInsets.all(10.0),),
               TextField(decoration: InputDecoration(
                
                hintText: 'email', 
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon( 
                  Icons.edit,
                  color: Colors.teal
                ),
                 )),
                
                 Padding(padding: EdgeInsets.all(20.0)),
                  ElevatedButton(
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    
                  );
                },
                child: Text('Keluar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Ubah warna button menjadi merah
                ),

              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
