import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Avenir',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
              color: const Color(0xFFD0DAFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pay later',
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'everywhere',
                            style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: const Center(
                              child: Text(
                                '!',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Shopping limit: ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            '₦0',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF274FED),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(150, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Activate Credit',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Axiforma',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey.shade600, size: 20),
                          const SizedBox(width: 12),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search for products or stores',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 14,
                                ),
                                border: InputBorder.none,
                                isCollapsed: true,
                                contentPadding: const EdgeInsets.symmetric(vertical: 11),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                 Container(
  height: 40,
  width: 40,
  decoration: BoxDecoration(
    color: Colors.grey.shade100,
    borderRadius: BorderRadius.circular(12),
  ),
  child: Image.asset(
    'assets/images/qrcode.png',
    height: 20,  // Adjust size as needed
    width: 20,   // Adjust size as needed
    fit: BoxFit.contain,  // Ensures the image scales properly within the container
  ),
),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xFFF1F3FE),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            children: [
                              _buildProductCard(
                                image: 'assets/images/Nokia G20.png',
                                brand: '',
                                name: 'Nokia G20',
                                price: '₦ 39,780',
                                originalPrice: '₦ 88,000',
                                discount: '40%',
                                showPricesSideBySide: true,
                                showPayDiscount: true,
                                brandImage: 'assets/images/Pay 40%.png',
                                imageWidth: 350,
                                imageHeight: 170,
                                verticalOffset: 30, // Adjust imageioa position up by 5 pixels
                                horizontalOffset: 25, // Adjust image position left by 10 pixels
                              ),
                              _buildProductCard(
                                image: 'assets/images/Iphone XS Max.png',
                                brand: '',
                                name: 'iPhone XS Max 4GB..',
                                price: '₦ 295,999',
                                originalPrice: '₦ 315,000',
                                showPricesSideBySide: true,
                                brandImage: 'assets/images/ogabassey.png',
                                showPayDiscount: false,
                               imageWidth: 350,
                                imageHeight: 170,
                                verticalOffset: 30, // Adjust imageioa position up by 5 pixels
                                horizontalOffset: 10, // Adjust image position left by 10 pixels
                              ),
                              _buildProductCard(
                                image: 'assets/images/Anker Soundcore.png',
                                brand: '',
                                name: 'Anker Soundcore..',
                                price: '₦ 39,780',
                                originalPrice: '₦ 88,000',
                                showPricesSideBySide: true,
                                brandImage: 'assets/images/Okay Fones 1.png',
                                showPayDiscount: false,
                               imageWidth: 350,
                                imageHeight: 180,
                                verticalOffset: 30, // Adjust imageioa position up by 5 pixels
                                horizontalOffset: 20, // Adjust image position left by 10 pixels
                              ),
                              _buildProductCard(
                                image: 'assets/images/Iphone 12 pro.png',
                                brand: '',
                                name: 'iPhone 12 Pro',
                                price: '₦ 490,500',
                                originalPrice: '₦ 515,000',
                                showPricesSideBySide: true,
                                brandImage: 'assets/images/IMate Stores 1.png',
                                showPayDiscount: false,
                                   imageWidth: 350,
                                imageHeight: 170,
                                verticalOffset: 30, // Adjust imageioa position up by 5 pixels
                                horizontalOffset: 15, // Adjust image position left by 10 pixels
                               // Adjust image position right by 5 pixels
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Featured Merchants',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'View all',
                                  style: TextStyle(
                                    color: Color(0xFF274FED),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 4,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.8,
                            children: [
                              _buildMerchantItem(name: 'Justrite', color: const Color(0xFF152B77), showDot: true),
                              _buildMerchantItem(name: 'Orile Restaurant', color: Colors.black, showDot: true),
                              _buildMerchantItem(name: 'Slot', color: const Color(0xFFEB3A34), showDot: true),
                              _buildMerchantItem(name: 'Pointek', color: const Color(0xFF0073CE), showDot: true),
                              _buildMerchantItem(name: 'ogabassey', color: Colors.white, showDot: true),
                              _buildMerchantItem(name: 'Casper Stores', color: const Color(0xFFFF3D6A), showDot: false),
                              _buildMerchantItem(name: 'Dreamworks', color: const Color(0xFF2C3C7A), showDot: false),
                              _buildMerchantItem(name: 'Hubmart', color: Colors.black, showDot: true),
                              _buildMerchantItem(name: 'Just Used', color: const Color(0xFF00B7E3), showDot: true),
                              _buildMerchantItem(name: 'Just fones', color: Colors.black, showDot: true),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required String image,
    required String name,
    required String price,
    required String originalPrice,
    String brand = '',
    String discount = '',
    bool showPricesSideBySide = false,
    bool showPayDiscount = false,
    String brandImage = '',
    double imageWidth = 140,
    double imageHeight = 120,
    double verticalOffset = 0, // Parameter for vertical positioning
    double horizontalOffset = 0, // New parameter for horizontal positioning
  }) {
    return Container(
      width: 161,
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            child: Stack(
              children: [
                // Product image with adjustable horizontal and vertical positions
                Positioned(
                  // Calculate base horizontal position (centered) then apply the offset
                  // Negative values move left, positive values move right
                  left: (161 - imageWidth) / 2 + horizontalOffset,
                  // Calculate base vertical position (centered) then apply the offset
                  // Negative values move up, positive values move down
                  top: (110 - imageHeight) / 2 + verticalOffset,
                  child: Container(
                    width: imageWidth,
                    height: imageHeight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4)
                      ),
                      child: Image.asset(
                        image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                // Brand logo overlay
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      name == 'Nokia G20' 
                          ? 'assets/images/Pay 40%.png'
                          : name == 'iPhone XS Max 4GB..' 
                              ? 'assets/images/ogabasseynogreen.png'
                              : name == 'Anker Soundcore..'
                                  ? 'assets/images/Okay Fones 1.png'
                                  : name == 'iPhone 12 Pro'
                                      ? 'assets/images/IMate Stores 1.png'
                                      : brandImage.isNotEmpty 
                                          ? brandImage 
                                          : 'assets/images/placeholder.png',
                      width: name == 'Nokia G20' ? 40 : 50,
                      height: name == 'Nokia G20' ? 40 : 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                if (showPricesSideBySide)
                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xFF274FED),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        originalPrice,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade500,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  )
                else
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Color(0xFF274FED),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        originalPrice,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey.shade500,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMerchantItem({required String name, required Color color, required bool showDot}) {
    String imagePath;
    switch (name) {
      case 'Justrite':
        imagePath = 'assets/images/justrite.png';
        break;
      case 'Orile Restaurant':
        imagePath = 'assets/images/Orile Restaurant.png';
        break;
      case 'Slot':
        imagePath = 'assets/images/slot.png';
        break;
      case 'Pointek':
        imagePath = 'assets/images/Pointek.png';
        break;
      case 'ogabassey':
        imagePath = 'assets/images/ogabassey.png';
        break;
      case 'Casper Stores':
        imagePath = 'assets/images/caspernew.png';
        break;
      case 'Dreamworks':
        imagePath = 'assets/images/Dreamworks.png';
        break;
      case 'Hubmart':
        imagePath = 'assets/images/Hubmart.png';
        break;
      case 'Just Used':
        imagePath = 'assets/images/Just used.png';
        break;
      case 'Just fones':
        imagePath = 'assets/images/Just fones.png';
        break;
      default:
        imagePath = 'assets/images/placeholder.png';
    }

    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (showDot)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4CD964),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}