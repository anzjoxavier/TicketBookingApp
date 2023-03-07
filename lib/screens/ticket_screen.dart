import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/screens/ticket_view.dart';
import 'package:ticketbooking/utilities/app_info_list.dart';
import 'package:ticketbooking/utilities/app_layout.dart';
import 'package:ticketbooking/utilities/app_styles.dart';
import 'package:ticketbooking/widgets/column_layout.dart';
import 'package:ticketbooking/widgets/double_text_widget.dart';
import 'package:ticketbooking/widgets/layout_bulider.dart';
import 'package:ticketbooking/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout().getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets",style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
              child: TicketView(ticket: ticketList[0],isColor: true,),
            ),
            Container(
              decoration:BoxDecoration(
                color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21))
                    )
                  ),
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              margin:  EdgeInsets.only(left:AppLayout.getHeight(20),right:AppLayout.getHeight(16)  ),
              child: Column(              
                children: [
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                      AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger",alignment:CrossAxisAlignment.start ,isColor: true),
                      AppColumnLayout(firstText: "5221 364869", secondText: "Passport",alignment: CrossAxisAlignment.end,isColor: true)
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuliderWidget(sections: 15,isColor: true,width: 5,),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                      AppColumnLayout(firstText: "0055 444 77147", secondText: "Number of E-ticket",alignment:CrossAxisAlignment.start ,isColor: true),
                      AppColumnLayout(firstText: "B2SG28", secondText: "Booking Code",alignment: CrossAxisAlignment.end,isColor: true)
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const AppLayoutBuliderWidget(sections: 15,isColor: true,width: 5,),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/master.png",scale: 7,),
                          Text("**** 3567",style: Styles.headLineStyle3,)
                        ],
                      ),
                      const Gap(5),
                      Text("Payment",style: Styles.headLineStyle4,)
                    ],
                     ),
                    const AppColumnLayout(firstText: "\$249.99", secondText:"Price", alignment:CrossAxisAlignment.end,isColor: true,
                    )
                     ],
                ),
                const SizedBox(height: 1,),
                Gap(AppLayout.getHeight(20)),
                const SizedBox(height: 2,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: "www.github.com/anzjoxavier",
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,),
                )
              ]),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
              child: TicketView(ticket: ticketList[0],),
            ),




          ],
        )
      ]),
    );
  }
}
