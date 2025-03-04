import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_view_button.dart';
import 'package:pick_n_pay_shop/features/pending_orders/order_view_detail_page.dart';

class OrderDeliveredScreen extends StatelessWidget {
  const OrderDeliveredScreen({super.key});

  final List<Map<String, dynamic>> deliveredOrders = const [
    {'id': '#44654', 'name': 'Joseph', 'status': 'Delivered'},
    {'id': '#44655', 'name': 'Sophia', 'status': 'Delivered'},
    {'id': '#44656', 'name': 'Ethan', 'status': 'Delivered'},
    {'id': '#44657', 'name': 'Isabella', 'status': 'Delivered'},
    {'id': '#44658', 'name': 'Mason', 'status': 'Delivered'},
  ];

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
          const SizedBox(height: 20),
          Expanded(
            child: DataTable2(
              columns: const [
                DataColumn(label: Text('Order ID')),
                DataColumn(label: Text('Customer Name')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Order Items'), numeric: true),
              ],
              rows: deliveredOrders.map((order) {
                return DataRow2(cells: [
                  DataCell(Text(order['id'])),
                  DataCell(Text(order['name'])),
                  DataCell(Text(order['status'])),
                  DataCell(CustomViewButton(
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsPage(),
                        ),
                      );
                    },
                  )),
                ]);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
