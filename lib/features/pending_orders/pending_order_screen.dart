import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_search.dart';
import 'package:pick_n_pay_shop/common_widget/custom_view_button.dart';
import 'package:pick_n_pay_shop/features/orders/custom_action_button.dart';
import 'package:pick_n_pay_shop/features/pending_orders/order_view_detail_page.dart';

class PendingOrderScreen extends StatefulWidget {
  const PendingOrderScreen({super.key});

  @override
  _PendingOrderScreenState createState() => _PendingOrderScreenState();
}

class _PendingOrderScreenState extends State<PendingOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Pending Orders',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const Spacer(),
              SizedBox(
                width: 300,
                child: CustomSearch(
                  onSearch: (value) {
                    // Implement search functionality
                  },
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 30),
          Expanded(
            child: DataTable2(columns: const [
              DataColumn(label: Text('Order ID')),
              DataColumn(label: Text('Customer Name')),
              DataColumn(label: Text('Pickup Time')),
              DataColumn(label: Text('Order Items')),
              DataColumn(label: Text('Actions'), numeric: true),
            ], rows: [
              DataRow(cells: [
                DataCell(Text('#65421')),
                DataCell(Text('Sugu')),
                DataCell(Text('6:00')),
                DataCell(CustomViewButton(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsPage(),
                        ));
                  },
                )),
                DataCell(Row(
                  children: [
                    CustomActionbutton(
                        ontap: () {},
                        title: 'Accept',
                        icon: Icons.done_all,
                        color: Colors.green),
                    SizedBox(
                      width: 5,
                    ),
                    CustomActionbutton(
                        ontap: () {},
                        title: 'Reject',
                        icon: Icons.close,
                        color: Colors.red)
                  ],
                )),
              ])
            ]),
          )
        ],
      ),
    );
  }
}
