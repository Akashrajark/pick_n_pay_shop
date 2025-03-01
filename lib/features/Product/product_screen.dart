import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_button.dart';
import 'package:pick_n_pay_shop/common_widget/custom_search.dart';
import 'package:pick_n_pay_shop/features/Product/add_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Products Screen',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const Spacer(),
              Expanded(
                child: CustomSearch(
                  onSearch: (value) {},
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CustomButton(
                inverse: true,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AddProduct(),
                  );
                },
                label: 'Add Product',
                iconData: Icons.add,
              )
            ],
          ),
          const SizedBox(height: 30), // Added spacing
          Expanded(
            child: DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 1200,
              columns: const [
                DataColumn(label: Text('Product Name')),
                DataColumn(label: Text('MRP')),
                DataColumn(label: Text('Image')),
                DataColumn(label: Text('stock')),
                DataColumn(label: Text('Unit')),
                DataColumn(label: Text('Category')),
                DataColumn(label: Text('Action'), numeric: true),
              ],
              rows: [
                DataRow(cells: [
                  const DataCell(Text('Tiger Biscket')),
                  const DataCell(Text('10 Rs')),
                  DataCell(ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://cf.shopee.com.my/file/0906fc78a8782f2f29351003e26a01ba',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  )),
                  const DataCell(Text('100')),
                  const DataCell(Text('g')),
                  const DataCell(Text('Biscket')),
                  DataCell(Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.blue,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.orange,
                          ))
                    ],
                  )),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
