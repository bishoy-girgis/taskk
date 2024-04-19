import 'package:flutter/material.dart';
import '../../../models/CategoryDetails_model.dart';
import '../../../models/ServiceCategory_model.dart';
import 'ServiceDetailPage.dart';

import '../../../models/CategoryDetails_model.dart';

/*class ChooseServicePage extends StatelessWidget */



class ChooseServicePage extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'Cleaning', imagePath: 'images/1cleaning.png'),
    Category(name: 'Cooking', imagePath: 'images/2cooking.png'),
    Category(name: 'Beauty Salon', imagePath: 'images/beauty salon.png'),
    Category(name: 'Men Salon', imagePath: 'images/men salon.png'),
    Category(name: 'Car Repair', imagePath: 'images/car repair.png'),
    Category(name: 'Carpentry', imagePath: 'images/carpentry.png'),
    Category(name: 'Electronical', imagePath: 'images/electro.png'),
    Category(name: 'Home Move', imagePath: 'images/home move.png'),
    Category(name: 'Laundry', imagePath: 'images/laundry.png'),
    Category(name: 'Nursing', imagePath: 'images/nursing.png'),
    Category(name: 'Painting', imagePath: 'images/painting.png'),
    Category(name: 'Plumbing', imagePath: 'images/plumbing.png'),

  ];

  final List<CategoryDetails> categoryDetailsList = [
    CategoryDetails(
      category: Category(name: 'Cleaning', imagePath: 'assets/images/1cleaning.png'),
      imagePath: 'images/commercialcleaning-business.png',
      description: 'Typical carpet cleaning services include steam cleaning, carpet repairs, and stain and odor removal.',
      package: ['chairs and tables cleaning', 'Floor and bathrooms cleaning', 'bedrooms cleaning', 'kitchenroom cleaning'],
      min_time: '1 day',
      materials: 'Vacuum,mop,cleaning solutions',
    ),
    CategoryDetails(
      category: Category(name: 'Cooking', imagePath: 'assets/images/2cooking.png'),
      imagePath: 'images/cook.png',
      description: 'Professional cooking services for various occasions.',
      package: ['Personal chef for a day', 'Meal planning and preparation', 'Cooking classes', 'Event catering'],
      min_time: '1 hour',
      materials: 'Fresh ingredients,utensils',
    ),

    CategoryDetails(
      category: Category(name: 'Beauty Salon', imagePath: 'assets/images/beauty salon.png'),
      imagePath: 'images/wsalon.png',
      description: 'Beauty treatments and hair, skin, and nails.',
      package: ['Haircut and styling', 'Manicure and pedicure', 'Facial treatments', 'Waxing and threading'],
      min_time: '1 hour',
      materials: 'Hair tools,skincare products',
    ),

    CategoryDetails(
      category: Category(name: 'Men Salon', imagePath: 'assets/images/men salon.png'),
      imagePath: 'images/msalon.png',
      description: 'Specialized grooming services for men.',
      package: ['Haircut and beard grooming', 'Shaving and facial treatments', 'Massage therapy', 'Men’s skincare treatments'],
      min_time: '1 hour',
      materials: 'Hair styling tools, shaving equipment, skincare products',
    ),

    CategoryDetails(
      category: Category(name: 'Car Repair', imagePath: 'assets/images/car repair.png'),
      imagePath: 'images/car.png',
      description: 'Professional repair and maintenance services for vehicles.',
      package: ['Oil change and filter replacement', 'Brake inspection and repair', 'Engine diagnostics', 'Tire rotation and alignment'],
      min_time: '1 hour',
      materials: 'Automotive parts, lubricants, diagnostic tools',
    ),

    CategoryDetails(
      category: Category(name: 'Carpentry', imagePath: 'assets/images/carpentry.png'),
      imagePath: 'images/carp.png',
      description: 'Customized woodworking and carpentry services.',
      package: ['Custom furniture design and construction', 'Cabinet installation', 'Flooring installation', 'Trim and molding work'],
      min_time: '1 day',
      materials: 'Wood, fasteners, finishing materials',
    ),

    CategoryDetails(
      category: Category(name: 'Electrical', imagePath: 'assets/images/eleco.png'),
      imagePath: 'images/elc.png',
      description: 'Electrical installation, repair, and maintenance services.',
      package: ['Light fixture installation', 'Electrical wiring and rewiring', 'Outlet and switch replacement', 'Electrical panel upgrade'],
      min_time: '1 hour',
      materials: 'Electrical wires, switches, fixtures',
    ),

    CategoryDetails(
      category: Category(name: 'Home Move', imagePath: 'assets/images/home move.png'),
      imagePath: 'images/homem.png',
      description: 'Relocation services for residential moves.',
      package: ['Packing and unpacking', 'Furniture disassembly and assembly', 'Loading and unloading', 'Transportation'],
      min_time: '1 day',
      materials: 'Moving boxes, packing tape, protective padding',
    ),

    CategoryDetails(
      category: Category(name: 'Laundry', imagePath: 'assets/images/laundry.png'),
      imagePath: 'images/landry.png',
      description: 'Professional laundry and dry cleaning services.',
      package: ['Washing and folding', 'Dry cleaning', 'Ironing and steaming', 'Specialized stain removal'],
      min_time: '1 hour',
      materials: 'fabric softener, dry cleaning chemicals',
    ),

    CategoryDetails(
      category: Category(name: 'Nursing', imagePath: 'assets/images/nursing.png'),
      imagePath: 'images/nurse.png',
      description: 'Skilled nursing care and medical assistance.',
      package: ['Medication administration', 'Wound care', 'Assistance with activities of daily living', 'Health assessments'],
      min_time: '1 hour',
      materials: 'Medical supplies, medication',
    ),

    CategoryDetails(
      category: Category(name: 'Painting', imagePath: 'assets/images/painting.png'),
      imagePath: 'images/paint.png',
      description: 'Interior and exterior painting services.',
      package: ['Wall painting', 'Trim and molding painting', 'Surface preparation', 'Color consultation'],
      min_time: '1 day',
      materials: 'Paint, brushes, rollers, drop cloths',
    ),

    CategoryDetails(
      category: Category(name: 'Plumbing', imagePath: 'images/plumbing.png'),
      imagePath: 'images/plumb.png',
      description: 'Professional plumbing repair and installation services.',
      package: ['Pipe repair and replacement', 'Fixture installation', 'Drain cleaning', 'Water heater repair and installation'],
      min_time: '1 hour',
      materials: 'Pipes, fixtures, plumbing tools',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        title: const Text(
          "Choose\n Your Service",
          style: TextStyle(
            color: Color(0xFF005581),
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF005581),
            ),
          ),
        ), //ba
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.all(12.0), // Add padding here
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            childAspectRatio: 1.0, // Aspect ratio of each grid item (width / height)
            crossAxisSpacing: 12.0, // Spacing between columns
            mainAxisSpacing: 12.0, // Spacing between rows
          ),
          itemCount: categories.length, // Total number of items
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Navigate to ServiceDetailsPage and pass the corresponding CategoryDetails
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceDetailsPage(categoryDetails: categoryDetailsList[index]),
                  ),
                );
              },
              child: Card(
                elevation: 3, // Add elevation for shadow
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Add border radius
                ),
                color: Colors.blue.shade100, // Change the color here
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0), // Add border radius for image clipping
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70, // Adjust width as needed
                        height: 70, // Adjust height as needed
                        child: Image.asset(
                          categories[index].imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        categories[index].name,
                        style: const TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15, // You can use any size you want
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF005581),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



/*void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChooseServicePage(),
  ));
}*/
