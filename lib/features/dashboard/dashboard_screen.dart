import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/features/dashboard/dashboard_item.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:pick_n_pay_shop/common_widget/custom_view_button.dart';
import 'package:pick_n_pay_shop/features/pending_orders/order_view_detail_page.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  // Recently delivered orders data
  final List<Map<String, dynamic>> recentlyDeliveredOrders = const [
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
          // Dashboard summary cards
          Wrap(
            spacing: 100,
            runSpacing: 20,
            children: [
              DashboardItem(
                  label: 'Total Orders',
                  value: '455',
                  iconData: Icons.shopping_bag_outlined),
              DashboardItem(
                  label: 'Total Revenue',
                  value: '459,000,00',
                  iconData: Icons.currency_rupee),
              DashboardItem(
                  label: 'Total Products',
                  value: '4512',
                  iconData: Icons.person_2_outlined),
            ],
          ),

          const SizedBox(height: 30),

          // Recently delivered orders section
          Text(
            'Recently Delivered Orders',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          const SizedBox(height: 20),

          // Data table for recently delivered orders
          SizedBox(
            height: 300, // You can adjust this height as needed
            child: DataTable2(
              columns: const [
                DataColumn(label: Text('Order ID')),
                DataColumn(label: Text('Customer Name')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Order Items'), numeric: true),
              ],
              rows: recentlyDeliveredOrders.map((order) {
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
          ),
        ],
      ),
    );
  }
}
