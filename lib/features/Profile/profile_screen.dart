import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Image
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn1.matadornetwork.com/blogs/1/2021/01/Amsterdam-coffeeshop-1200x853.jpg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(height: 20),

          // Shop Name
          Text(
            'Shop Name',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Address Details
          Row(
            children: [
              const Icon(Icons.home, size: 20, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'Building No. 123, Street Name',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.location_city, size: 20, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'City: My City',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.place, size: 20, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'District: My District',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.flag, size: 20, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'State: My State',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.pin_drop, size: 20, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'Pincode: 123456',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Row(
            children: [
              const Icon(Icons.phone, size: 20, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'Phone: +91 9876543210',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.email, size: 20, color: Colors.grey),
              const SizedBox(width: 10),
              Text(
                'Email: shop@example.com',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
