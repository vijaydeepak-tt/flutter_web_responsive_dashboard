import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/controllers.dart';
import 'package:responsive_dashboard/helpers/responsive.dart';
import 'package:responsive_dashboard/pages/clients/widgets/clients_table.dart';
import 'package:responsive_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Clientstable(),
            ],
          )),
        ],
      ),
    );
  }
}
