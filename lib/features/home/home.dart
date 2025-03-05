import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/common_widget/custom_alert_dialog.dart';
import 'package:pick_n_pay_shop/features/Product/product_screen.dart';
import 'package:pick_n_pay_shop/features/Profile/profile_screen.dart';
import 'package:pick_n_pay_shop/features/dashboard/dashboard_screen.dart';
import 'package:pick_n_pay_shop/theme/app_theme.dart';

import '../orders/orders_screen.dart';
import 'custom_drawer_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this, initialIndex: 0);
    tabController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Soft shadow
                  blurRadius: 10, // Spread of the shadow
                  offset: const Offset(3, 3), // Positioning
                ),
              ],
            ),
            width: 210,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'PICK N PAY',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Shop',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: primaryColor, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                CustomDrawerItem(
                  title: 'Dashboard',
                  icon: Icons.dashboard_outlined,
                  ontap: () {
                    tabController.animateTo(0);
                  },
                  isSelected: tabController.index == 0,
                  iconColor:
                      tabController.index == 0 ? Colors.orange : Colors.black,
                  textColor:
                      tabController.index == 0 ? Colors.orange : Colors.black,
                ),
                const SizedBox(height: 10),
                CustomDrawerItem(
                  iconColor:
                      tabController.index == 1 ? Colors.orange : Colors.black,
                  textColor:
                      tabController.index == 1 ? Colors.orange : Colors.black,
                  isSelected: tabController.index == 1,
                  title: 'Products',
                  icon: Icons.inventory_2_outlined,
                  ontap: () {
                    tabController.animateTo(1);
                  },
                ),
                const SizedBox(height: 10),
                CustomDrawerItem(
                  iconColor:
                      tabController.index == 2 ? Colors.orange : Colors.black,
                  textColor:
                      tabController.index == 2 ? Colors.orange : Colors.black,
                  isSelected: tabController.index == 2,
                  title: 'Pending Order',
                  icon: Icons.access_time_outlined,
                  ontap: () {
                    tabController.animateTo(2);
                  },
                ),
                const SizedBox(height: 10),
                CustomDrawerItem(
                  iconColor:
                      tabController.index == 3 ? Colors.orange : Colors.black,
                  textColor:
                      tabController.index == 3 ? Colors.orange : Colors.black,
                  isSelected: tabController.index == 3,
                  title: 'Gathering Orders',
                  icon: Icons.checklist_rtl_outlined,
                  ontap: () {
                    tabController.animateTo(3);
                  },
                ),
                const SizedBox(height: 10),
                CustomDrawerItem(
                  iconColor:
                      tabController.index == 4 ? Colors.orange : Colors.black,
                  textColor:
                      tabController.index == 4 ? Colors.orange : Colors.black,
                  isSelected: tabController.index == 4,
                  title: 'Ready to Pickup',
                  icon: Icons.timer_outlined,
                  ontap: () {
                    tabController.animateTo(4);
                  },
                ),
                const SizedBox(height: 10),
                CustomDrawerItem(
                  iconColor:
                      tabController.index == 5 ? Colors.orange : Colors.black,
                  textColor:
                      tabController.index == 5 ? Colors.orange : Colors.black,
                  isSelected: tabController.index == 5,
                  title: 'Order Delivered',
                  icon: Icons.beenhere_outlined,
                  ontap: () {
                    tabController.animateTo(5);
                  },
                ),
                const SizedBox(height: 10),
                // CustomDrawerItem(
                //   iconColor:
                //       tabController.index == 6 ? Colors.orange : Colors.black,
                //   textColor:
                //       tabController.index == 6 ? Colors.orange : Colors.black,
                //   isSelected: tabController.index == 6,
                //   title: 'Profile Screen',
                //   icon: Icons.person_2_outlined,
                //   ontap: () {
                //     tabController.animateTo(6);
                //   },
                // ),
                // const SizedBox(height: 10),
                CustomDrawerItem(
                  iconColor: Colors.red,
                  textColor: Colors.red,
                  isSelected: tabController.index == 7,
                  title: 'LogOut',
                  icon: Icons.logout,
                  ontap: () {
                    showDialog(
                      context: context,
                      builder: (context) => CustomAlertDialog(
                        title: "LOG OUT",
                        content: const Text(
                          "Are you sure you want to log out? Clicking 'Logout' will end your current session and require you to sign in again to access your account.",
                        ),
                        width: 400,
                        primaryButton: "LOG OUT",
                        onPrimaryPressed: () {
                          // Supabase.instance.client.auth.signOut();
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const LoginScreen(),
                          //     ),
                          //     (route) => false);
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                DashboardScreen(),
                ProductScreen(),
                OrdersScreen(status: "pending"),
                OrdersScreen(status: "Packing"),
                OrdersScreen(status: "Ready"),
                OrdersScreen(status: "Collected"),
                // ProfileScreen()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
