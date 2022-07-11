import 'package:flutter/material.dart';
class food extends StatelessWidget {
  const food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.yellowAccent,
       body: 
          Padding(
            padding:  EdgeInsets.only(left: 32,right: 10,top:62,bottom: 30),    
             child: Stack(
               children:[ 
                Container(  height: 700,
              width:295,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),),
                child: Image.asset('images/burger.jpg',fit: BoxFit.cover,)),
                Container(
               child: PageView.builder(scrollDirection: Axis.horizontal,itemCount: 3,itemBuilder: (_,index){
                  return Container( margin: const EdgeInsets.fromLTRB(15, 389, 40, 20),
                   decoration: const BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
                    child:Padding(
                      padding: const EdgeInsets.only(top: 19.0),
                      child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                               Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(3, (indexdots){
                                return  Container(
                                  margin: EdgeInsets.only(right: 8),
                                     width: index==indexdots?15:8,
                                     height: 8,
                                     decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: index==indexdots?Colors.black:Colors.black12
                                     ),
                                );
                              }
                               )),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: RichText(
                                text: TextSpan(
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28), /*defining default style is optional */
                                children: <TextSpan>[
                                TextSpan(
                                    text: 'Fast', style: TextStyle(color: Colors.yellow)),
                                TextSpan(
                                    text: ' delivery',),
                                TextSpan(
                                    text: ' at'),  ])),
                              ),
                               RichText(
                              text: TextSpan(
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),                          children: <TextSpan>[                              
                              TextSpan(
                                  text: 'your'),                               
                              TextSpan(
                                  text: ' home',
                                  style: TextStyle(color: Colors.yellow)),
                         ],
                      ),),
                       SizedBox(height: 15,),
                       Padding(
                         padding: const EdgeInsets.only(left:20.0,right: 20.0),
                         child: Text("All the best restaurants with their top menu waiting for you. They can't wait for your order!"
                         ,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,
                         fontWeight: FontWeight.bold,color: Colors.black38,),maxLines: 3,textAlign: TextAlign.center,),
                       ),
                      SizedBox(height: 18,),
                      SizedBox(
                        height: 45,width: 150,
                        child: ElevatedButton(onPressed: (){},  style: ElevatedButton.styleFrom(
                                         primary: Colors.black,shape: new RoundedRectangleBorder(
                                     borderRadius: new BorderRadius.circular(10.0),
                                     ),
                                         ), child: Text("Get started")),
                      )
         
                            ],
                          ),
                    )
                   
                  );
                } ))
               ]
             ),

            ),       
                
      
    );
  }
}