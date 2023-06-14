import 'package:flutter/material.dart';
import 'package:moviees_app/Widget/movie_home_grid.dart';
import 'package:moviees_app/Widget/slider_rekomen.dart';
import 'package:moviees_app/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RekomenPage extends StatelessWidget {
  const RekomenPage({super.key});


  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        title: Text(
          'Rekomendasi',
          style: primaryColorTextStyle.copyWith(
              fontSize: 30, fontWeight: FontWeight.w900),
        ),
        backgroundColor: bgcolor1,
        elevation: 0,
      );
    }

    

    

    Widget informasi1() {
      return Container(
         margin: const EdgeInsets.only(top: 20,bottom: 10),
          child: Text(
            'Rekomendasi Terbaik Untuk Anda',
            style: primaryTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w900),
                
          ),
        );
      
    }

     Widget informasi2() {
      return Container(
         margin: const EdgeInsets.only(top: 20,bottom: 10),
          child: Text(
            
            'Sedang Tayang',
            style: primaryTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w900),
                
          ),
        );
      
    }
     Widget informasi3() {
      return Container(
         margin: const EdgeInsets.only(left: 0, top: 20, bottom:10, right: 10),
          child: Text(
            
            'Banyak Ditonton',
            style: primaryTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w900),
                
          ),
        );
      
    }
   

    Widget content() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          informasi1(),
          const SliderCardRekomen(),
          informasi2(),
          const SliderCardRekomen(),
          informasi3(),
          const SliderCardRekomen(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      //appBar: header(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
             margin: const EdgeInsets.only(left: 100, top: 0, right: 10),
            child: content(),
          ),
        ),
        
      ),
    );
    
  }
}
