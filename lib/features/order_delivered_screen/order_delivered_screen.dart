import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_view_button.dart';
import 'package:pick_n_pay_shop/features/pending_orders/order_view_detail_page.dart';

class OrderDeliveredScreen extends StatelessWidget {
  const OrderDeliveredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Delivered',
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
            DataColumn(label: Text('Order Items')),
          ], rows: [
            DataRow(cells: [
              DataCell(Text('#44654')),
              DataCell(Text('Shuppandi')),
              DataCell(Text('Delivered')),
              DataCell(CustomViewButton(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailsPage(),
                      ));
                },
              )),
            ])
          ]))
        ],
      ),
    );
  }
}
