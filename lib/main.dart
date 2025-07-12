import 'package:flutter/material.dart';

void main() {
  runApp(KGFWebsite());
}

class KGFWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildHeader(),
              SizedBox(height: 20),
              _buildPhotosSection(),
              SizedBox(height: 40),
              _buildOffersSection(),
              SizedBox(height: 40),
              _buildTestimonialsSection(),
              SizedBox(height: 40),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  // Header Section
  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/kgf_logo.png', // Replace with your logo path
            height: 70,
          ),
          Row(
            children: [
              _buildHeaderMenuItem('Home'),
              const SizedBox(width: 20),
              _buildHeaderMenuItem('About'),
              const SizedBox(width: 20),
              _buildHeaderMenuItem('Gallery'),
              const SizedBox(width: 20),
              _buildHeaderMenuItem('Advertise'),
              const SizedBox(width: 20),
              _buildHeaderMenuItem('Contact'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderMenuItem(String title) {
    return Text(
      title,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    );
  }

  // Photos Section
  Widget _buildPhotosSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ride starts at  8 rupees per km',
                    style: TextStyle(
                      fontSize: 22, // Larger font size
                      fontWeight: FontWeight.bold, // Bold text
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10), // Space between the two texts
                  Text(
                    'KGF Ride Booking App offers services at a very low cost, better than all existing apps.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10), // Space between the two texts
                  Text(
                    'Download & Refer now to get 40 km of free rides! Use it across multiple rides—no need to use all 40 km at once',
                    style: TextStyle(
                      fontSize: 22, // Larger font size
                      fontWeight: FontWeight.bold, // Bold text
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/kgf_logo4.png', // Replace with your image path
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOffersSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Offers',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Text(
            'KGF was founded with the vision of delivering very low cost ride services. Our journey began in a small town, and today, we are proud to be a global leader in our field.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16,color: Colors.white),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 320, // Height to accommodate the cards
            child: Center(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true, // Shrinks to fit content
                padding: const EdgeInsets.symmetric(horizontal: 50),
                children: [
                  _buildOffersCenteredCard(
                      'Welcome Offer', 'Get 25 Km of Free Travel Added to Your Account!'),
                  const SizedBox(width: 20),
                  _buildOffersCenteredCard(
                      'Referral Offer', 'Get 25 Km of Free Ride for Every Referral – Rewarded to Both You and Your Friend!'),
                  const SizedBox(width: 20),
                  _buildOffersCenteredCard(
                      'Monthly Pass Offer', 'Stay Tuned – Launching Soon!'),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildOffersCenteredCard(String title, String description) {
    return Container(
      width: 200,
      height: 300,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
  Widget _buildTestmonialCenteredCard(String title, String description) {
    return Container(
      width: 200,
      height: 300,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 16,color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
  Widget _buildTestimonialsSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'What Our Customers Say',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'KGF was founded with the vision of delivering very low cost ride services. Our journey began in a small town, and today, we are proud to be a global leader in our field.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 320, // Height to accommodate the cards
            child: Center(
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true, // Shrinks to fit content
                padding: const EdgeInsets.symmetric(horizontal: 50),
                children: [
                  _buildTestmonialCenteredCard(
                      'Bhargavi G',
                      'KGF is Providing Very Low Cost Services Than all Other Ride Booking apps.'),
                  const SizedBox(width: 20),
                  _buildTestmonialCenteredCard(
                      'JohnLy',
                      'KGF is Providing Very Low Cost Services Than all Other Ride Booking apps.'),
                  const SizedBox(width: 20),
                  _buildTestmonialCenteredCard('Raj Kumar',
                      'Very Low Ride Charge i.e 8 rupees per KM'),
                  const SizedBox(width: 20),
                  _buildTestmonialCenteredCard(
                      'Ishmael', 'I am able to save 4-8 rupees per KM on Each Ride'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Footer Section
  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFooterColumn('Products', [
            'KGF Ride Booking App',
            'Will be adding New Product Soon',
          ]),
          _buildFooterColumn('Address', [
            'Gachibowli',
            'Hyderabad, India',
          ]),
          _buildFooterColumn('Contact Us', [
            'business@kgfcompany.in',
            '+91-950 590 7828',
          ]),
        ],
      ),
    );
  }

  Widget _buildFooterColumn(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        const SizedBox(height: 10),
        ...items.map(
              (item) => Text(
            item,
            style: TextStyle(fontSize: 16, color: Colors.grey[400]),
          ),
        ),
      ],
    );
  }
}
