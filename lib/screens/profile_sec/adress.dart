import 'package:flutter/material.dart';
import 'package:funica_mobile/widgets/bottomNavigation.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).go('/profile');
          },
        ),
        title: Text(
          "Address",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildAddressItem("Home", "1234 Street, City, Country"),
              SizedBox(height: 10),
              buildAddressItem("Work", "5678 Avenue, City, Country"),
              SizedBox(height: 10),
              buildAddressItem("Other", "9012 Boulevard, City, Country"),
              SizedBox(height: 10),
              buildAddressItem("Friend's Place", "3456 Lane, City, Country"),
              SizedBox(height: 10),
              buildAddressItem("Vacation House", "7890 Road, City, Country"),
              SizedBox(height: 85),
              Center(
                child: InkWell(
                  onTap: () {
                    // Handle tap
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle form submission
                      },
                      child: Text('Add New Address'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        textStyle: GoogleFonts.poppins(color: Colors.black),
                        // Customize the button color here
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigator(selectedIndex: 4),
    );
  }

  Widget buildAddressItem(String title, String address) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(9, 137, 137, 137),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Gri arka plan rengi
              shape: BoxShape.circle, // Yuvarlak şekil
            ),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black, // Siyah arka plan rengi
                shape: BoxShape.circle, // Yuvarlak şekil
              ),
              child: Icon(Icons.location_on, color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    address,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Address edit function
            },
          ),
        ],
      ),
    );
  }
}
