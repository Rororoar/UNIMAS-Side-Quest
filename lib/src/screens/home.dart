import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Marketplace'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Notification functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for services...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onSubmitted: (query) {
                  // Handle search functionality
                },
              ),
            ),

            // Promotional Banners
            SizedBox(
              height: 150,
              child: PageView(
                children: [
                  _buildBanner('assets/banner1.jpg'),
                  _buildBanner('assets/banner2.jpg'),
                  _buildBanner('assets/banner3.jpg'),
                ],
              ),
            ),

            // Categories Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildCategoriesRow(),

            // Recommended Services Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Recommended Services',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildServiceList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }

  Widget _buildBanner(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCategoriesRow() {
    final categories = ['Cleaning', 'Tutoring', 'Delivery', 'Repair', 'Beauty'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue.shade100,
                  child: Icon(Icons.category, size: 30, color: Colors.blue.shade800),
                ),
                const SizedBox(height: 8),
                Text(category),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildServiceList() {
    final services = [
      {'name': 'Home Cleaning', 'price': '\$25/hr'},
      {'name': 'Math Tutoring', 'price': '\$20/hr'},
      {'name': 'Food Delivery', 'price': '\$5/order'},
      {'name': 'Laptop Repair', 'price': '\$50'},
      {'name': 'Hair Styling', 'price': '\$30'},
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: services.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: const Icon(Icons.design_services, color: Colors.blue),
            ),
            title: Text(services[index]['name']!),
            subtitle: Text(services[index]['price']!),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                // Navigate to service details
              },
            ),
          ),
        );
      },
    );
  }
}