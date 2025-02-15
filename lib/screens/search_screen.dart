import 'package:final_project/utils/app_layout.dart';
import 'package:final_project/widgets/icon_text.dart';
import 'package:final_project/widgets/tickets_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../utils/styles.dart';
import '../widgets/text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for ?",style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(firstTab: 'Airline tickets', secondTab: 'Hotels',),
          Gap(AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text:"Departure"),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_land_rounded, text:"Arrival"),
         Gap(25),
         Container(
           padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18),horizontal: AppLayout.getWidth(18)),
          decoration: BoxDecoration(
          color: Color(0xD91130CE),
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),

             ),
             child:Center
             ( child: Text("Find tickets",style: Styles.textStyle.copyWith(color: Colors.white,),)





    )
    ,

    ),
         Gap(40),
         AppDoubleTextWidget(bigText: 'Upcoming flights', smallText: 'view all',),
          Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width:MediaQuery.of(context).size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  color: Colors.white,
                    boxShadow: [
                     BoxShadow(
                       color: Colors.grey.shade200,
                       blurRadius: 1,
                       spreadRadius: 1
                     )

                    ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image:DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("Images/sit.jpg"))

                      ),
                    ),
                    Gap(15),
                    Text("20% discount on the early booking of this flight, Don't miss out this chance",
                      style: Styles.headLineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.44,
                          height: AppLayout.getHeight(174),
                          decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius:BorderRadius.circular(AppLayout.getHeight(18))
                          ),
                          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\nfor survey",style: Styles.headLineStyle2.copyWith(fontWeight:FontWeight.bold,color: Colors.white ),
                              ),
                              Gap(10),
                              Text("take the survey about our services and get discount",style: Styles.headLineStyle2.copyWith(fontWeight:FontWeight.w500,color: Colors.white ,fontSize: 18),
                              ),
                            ],
                          ),

                        ),
                        Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18,color: Color(0xFF189999)),
                              color:Colors.transparent

                          ),
                        ))

                      ],
                  ),
                  Gap(15),
                  Container(
                    width:MediaQuery.of(context).size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Color(0xFFEC6545)
                    ),
                    child: Column(children: [
                      Text("Take Love",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      Gap(15),
                      RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "😍",
                                style: TextStyle(fontSize: 38)
                              ),

                              TextSpan(
                                  text:"❤",
                                  style: TextStyle(fontSize: 45)
                              ),

                              TextSpan(
                                text: "😘",
                                style: TextStyle(fontSize: 38)
                              )
                            ]
                          ))
                    ],),

                  )
                ],
              )
            ],
          )


        ],

      )



    );
  }
}
