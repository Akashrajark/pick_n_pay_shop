// import 'package:data_table_2/data_table_2.dart';
// import 'package:flutter/material.dart';
// import 'package:pick_n_pay_shop/common_widget/custom_search.dart';
// import 'package:pick_n_pay_shop/common_widget/custom_view_button.dart';
// import 'package:pick_n_pay_shop/features/orders/custom_action_button.dart';
// import 'package:pick_n_pay_shop/features/pending_orders/order_view_detail_page.dart';

// class PendingOrderScreen extends StatefulWidget {
//   const PendingOrderScreen({super.key});

//   @override
//   _PendingOrderScreenState createState() => _PendingOrderScreenState();
// }

// class _PendingOrderScreenState extends State<PendingOrderScreen> {
//   final List<Map<String, dynamic>> pendingOrders = [
//     {'id': '#65421', 'name': 'John Doe', 'pickup': '6:00 PM'},
//     {'id': '#65422', 'name': 'Jane Smith', 'pickup': '6:30 PM'},
//     {'id': '#65423', 'name': 'Alice Johnson', 'pickup': '7:00 PM'},
//     {'id': '#65424', 'name': 'Robert Brown', 'pickup': '7:30 PM'},
//     {'id': '#65425', 'name': 'Emma Davis', 'pickup': '8:00 PM'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text(
//                 'Pending Orders',
//                 style: Theme.of(context)
//                     .textTheme
//                     .titleLarge!
//                     .copyWith(fontWeight: FontWeight.bold, color: Colors.green),
//               ),
//               const Spacer(),
//               SizedBox(
//                 width: 300,
//                 child: CustomSearch(
//                   onSearch: (value) {
//                     // Implement search functionality
//                   },
//                 ),
//               ),
//               const SizedBox(width: 10),
//             ],
//           ),
//           const SizedBox(height: 30),
//           Expanded(
//             child: DataTable2(
//               columns: const [
//                 DataColumn(label: Text('Order ID')),
//                 DataColumn(label: Text('Customer Name')),
//                 DataColumn(label: Text('Pickup Time')),
//                 DataColumn(label: Text('Order Items')),
//                 DataColumn(label: Text('Actions'), numeric: true),
//               ],
//               rows: pendingOrders.map((order) {
//                 return DataRow(cells: [
//                   DataCell(Text(order['id'])),
//                   DataCell(Text(order['name'])),
//                   DataCell(Text(order['pickup'])),
//                   DataCell(CustomViewButton(
//                     ontap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => OrderDetailsPage(),
//                         ),
//                       );
//                     },
//                   )),
//                   DataCell(Row(
//                     children: [
//                       CustomActionbutton(
//                         ontap: () {},
//                         title: 'Accept',
//                         icon: Icons.done_all,
//                         color: Colors.green,
//                       ),
//                       const SizedBox(width: 15),
//                       CustomActionbutton(
//                         ontap: () {},
//                         title: 'Reject',
//                         icon: Icons.close,
//                         color: Colors.red,
//                       )
//                     ],
//                   )),
//                 ]);
//               }).toList(),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
