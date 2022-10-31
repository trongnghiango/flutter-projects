import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/app_layout.dart';
import 'package:flutter_app/utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff526779),
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )
              ),
              padding: EdgeInsets.all(26),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                     const Spacer(),
                      Text("London", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
