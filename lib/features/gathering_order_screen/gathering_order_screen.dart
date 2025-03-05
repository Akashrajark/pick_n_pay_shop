// import 'package:data_table_2/data_table_2.dart';
// import 'package:flutter/material.dart';
// import 'package:pick_n_pay_shop/common_widget/custom_view_button.dart';
// import 'package:pick_n_pay_shop/features/orders/custom_action_button.dart';
// import 'package:pick_n_pay_shop/features/pending_orders/order_view_detail_page.dart';
// import 'package:pick_n_pay_shop/theme/app_theme.dart';

// class GatheringOrderScreen extends StatelessWidget {
//   const GatheringOrderScreen({super.key});

//   final List<Map<String, dynamic>> gatheringOrders = const [
//     {'id': '#44542', 'name': 'Samuel', 'pickup': '3:00 PM'},
//     {'id': '#44543', 'name': 'Olivia', 'pickup': '3:30 PM'},
//     {'id': '#44544', 'name': 'William', 'pickup': '4:00 PM'},
//     {'id': '#44545', 'name': 'Sophia', 'pickup': '4:30 PM'},
//     {'id': '#44546', 'name': 'James', 'pickup': '5:00 PM'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Gathering Orders',
//             style: Theme.of(context)
//                 .textTheme
//                 .titleLarge!
//                 .copyWith(fontWeight: FontWeight.bold, color: Colors.green),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: DataTable2(
//               columns: const [
//                 DataColumn(label: Text('Order ID')),
//                 DataColumn(label: Text('Customer Name')),
//                 DataColumn(label: Text('Pickup Time')),
//                 DataColumn(label: Text('Order Items')),
//                 DataColumn(label: Text('Action'), numeric: true),
//               ],
//               rows: gatheringOrders.map((order) {
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
//                   DataCell(SizedBox(
//                     width: 90,
//                     child: CustomActionbutton(
//                       ontap: () {},
//                       title: "Gathered",
//                       icon: Icons.chevron_right_outlined,
//                       color: secondaryColor,
//                     ),
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
