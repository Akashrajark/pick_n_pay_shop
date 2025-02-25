import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_view_button.dart';
import 'package:pick_n_pay_shop/features/pending_orders/custom_action_button.dart';
import 'package:pick_n_pay_shop/features/pending_orders/order_view_detail_page.dart';
import 'package:pick_n_pay_shop/theme/app_theme.dart';

class WaitingDeliveryScreen extends StatelessWidget {
  const WaitingDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pending Orders',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: DataTable2(columns: const [
            DataColumn(label: Text('Order ID')),
            DataColumn(label: Text('Customer Name')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Pickup Time')),
            DataColumn(label: Text('Order Items')),
            DataColumn(label: Text('Action'), numeric: true),
          ], rows: [
            DataRow(cells: [
              DataCell(Text('#44654')),
              DataCell(Text('Shuppandi')),
              DataCell(Text('Pending')),
              DataCell(Text('3:00')),
              DataCell(CustomViewButton(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailsPage(),
                      ));
                },
              )),
              DataCell(SizedBox(
                width: 90,
                child: CustomActionbutton(
                    ontap: () {},
                    title: "Delivered",
                    icon: Icons.chevron_right_outlined,
                    color: secondaryColor),
              )),
            ])
          ]))
        ],
      ),
    );
  }
}
