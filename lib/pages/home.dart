import 'package:fdc_2/views/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomBar(),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/mohamad-khosravi-Ll6ggwPpKIo-unsplash.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ], transform: GradientRotation(1.5)),
                      ),
                      //color: Colors.black.withOpacity(0.30),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 48),
                        child: Text(
                          'Essentials\nThe Second Delivery',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              _buildHeading(),
              _buildGrid(),
            ],
          ),
          _buildAppBar(),
        ],
      ),
    );
  }

  _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 64),
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.local_offer),
            shape: CircleBorder(),
            backgroundColor: Color(0xffc2b5ad),
            foregroundColor: Colors.white,
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.search),
            shape: CircleBorder(),
            backgroundColor: Color(0xffc2b5ad),
            foregroundColor: Colors.white,
          ),
          SizedBox(
            width: 12,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.shopping_bag),
            shape: CircleBorder(),
            backgroundColor: Color(0xffc2b5ad),
            foregroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  _buildHeading() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.4),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 12),
            child: Container(
              height: 4,
              width: 4,
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Text(
            'The Second Delivery',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 6),
            child: Container(
              height: 4,
              width: 4,
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          Expanded(
            child: Container(
              height: 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildGrid() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.55,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return ProductItem();
        },
        itemCount: 20,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
      ),
    );
  }

  _buildBottomBar() {
    return Row(
      children: [
        _buildBottomBarItem(Icons.home, 'Home', isSelected: true),
        _buildBottomBarItem(Icons.category, 'Category'),
        _buildBottomBarItem(Icons.search, 'Search'),
        _buildBottomBarItem(Icons.favorite, 'Like'),
        _buildBottomBarItem(Icons.person, 'My'),
      ],
    );
  }

  _buildBottomBarItem(IconData icon, String text, {bool isSelected = false}) {
    return Container(
      color: isSelected ? Colors.black : Color(0xfff4f4f5),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Color(0xff676771),
            ),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Color(0xff676771),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
