import 'package:checkout/feature/checkout/presentation/constants.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textTittle(String text){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20.0,right: 20.0,left: 20.0,bottom: 10.0),
        child: Text(text,style:fontStyle14,),
      ),
    ],
  );
}


//String image,String title,String icon,String subText



class Tile extends StatelessWidget {
  late  String image;
  late String title;
  late String icon;
  late String subText;

Tile(this.image,this.title,this.icon,this.subText);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        color: const Color(0xF8F8F8),
        width: 56.0,
        height: 45.0,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image(image: Svg(image),fit:BoxFit.fill,),
        ),
      ),
      title:  Text(title,style:tittleStyle19,),
      trailing: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child:  SizedBox(
          width: 15.0,
          child: Image(
            image: AssetImage(icon),),
        ),
      ),
      subtitle:  Text(subText),
      tileColor: Colors.white,
    );
  }
}





class Tile1 extends StatelessWidget {

  late String image;
  late String title;
  late String text1;
  late String text2;
  late String subText;

  Tile1(this.image,
     this.title,
     this.text1,
     this.text2,
      this.subText);

  @override
  Widget build(BuildContext context) {
     return  ListTile(

       leading: Container(
         color:Colors.grey[200],
         width: 44.0,
         height: 44.0,
         child: Padding(
           padding: const EdgeInsets.all(2.0),
           child: Image(image:AssetImage(image)),
         ),
       ),
       title:  Text(title,style:tittleStyle19,),
       trailing: Column(children: [
         Text(text1,style: trailTitle,),
         const SizedBox(height: 20.0,),
         Text(text2,style: fontSub,),
       ],),
       subtitle:  Text(subText,style: fontSub,),
       tileColor: Colors.white,
     );
  }
}



class bottomContainer extends StatelessWidget {
  const bottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        border: Border.all(color: Colors.white70),
        boxShadow: const [BoxShadow(color: Colors.black54)],
        borderRadius: const BorderRadius.only(topRight: Radius.circular(30.0),topLeft:Radius.circular(30.0), ),
      ),
      child:Column(
        children: [
          const SizedBox(height: 20.0,),
          const BottomDivider(),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Total Items cost',style: bottomColor,),
                Text('\$977.99',style: bottomColor),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('GST Tax (7\%)',style: bottomColor,),
                Text('\$54.32',style: bottomColor,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Total cost',style:rowLast),
                Text('\$1078.99',style: rowLast,),
              ],
            ),
          ),
          const SizedBox(height: 15.00,),
          Container(
            width: 280.0,
            height: 50.0,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(28, 28, 28, 1),
              borderRadius: BorderRadius.only(topRight: Radius.circular(14.0),
                topLeft: Radius.circular(14.0),
                bottomLeft: Radius.circular(14.0),
                bottomRight: Radius.circular(14.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Complete Payment',style: TextStyle(color: Colors.white),),
                SizedBox(width: 15.0,),
                Image(
                  width:20,
                  height: 20,
                  color: Colors.white,
                  image: AssetImage('assets/icons/arrow-right.png'),)
              ],),
          ),
        ],
      ) ,
    );
  }
}




Widget dividerScreen(){
  return const Divider(
    height: 4.0,
  color: Color.fromRGBO(248, 248, 248, 1),
    thickness: 3,
  );
}

class BottomDivider extends StatelessWidget {
  const BottomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 5.0,
      color: Color.fromRGBO(231, 231, 231, 1),
      thickness: 3,
      indent: 110,
      endIndent: 110,
    );
  }
}