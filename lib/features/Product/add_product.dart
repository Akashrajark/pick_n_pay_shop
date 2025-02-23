import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_alert_dialog.dart';
import 'package:pick_n_pay_shop/common_widget/custom_button.dart';
import 'package:pick_n_pay_shop/common_widget/custom_dropdownmenu.dart';
import 'package:pick_n_pay_shop/common_widget/custom_image_picker_button.dart';
import 'package:pick_n_pay_shop/common_widget/custom_text_formfield.dart';
import 'package:pick_n_pay_shop/util/value_validator.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _productNameController = TextEditingController();

  String selectedUnit = 'kg';

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
      title: 'Add new product',
      content: Flexible(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add product image',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomImagePickerButton(
                  height: 150,
                  width: 150,
                  onPick: (file) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Add product name',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                    labelText: 'Enter product name',
                    controller: _productNameController,
                    validator: notEmptyValidator),

                const SizedBox(
                  height: 20,
                ),
                //price

                Text(
                  'Product Price',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                    labelText: 'Enter product price',
                    controller: _productNameController,
                    validator: notEmptyValidator),
                const SizedBox(
                  height: 20,
                ),

//stock
                Text(
                  'Product Stock',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                    labelText: 'Enter product stock',
                    controller: _productNameController,
                    validator: notEmptyValidator),
                const SizedBox(
                  height: 20,
                ),
//unit

                Text(
                  'Product Unit',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomDropDownMenu(
                  hintText: 'Select unit',
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 'kg', label: 'kg'),
                    DropdownMenuEntry(value: 'ltr', label: 'ltr'),
                    DropdownMenuEntry(value: 'piece', label: 'piece'),
                  ],
                  onSelected: (String? newValue) {
                    setState(() {
                      selectedUnit = newValue!;
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  inverse: true,
                  onPressed: () {},
                  label: 'Add Product',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
