import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/features/categories/presentation/screens/add_category.dart';
import 'package:xafe_challenge/app/features/categories/presentation/widgets/category_details.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF3D74FF),
                Color(0xFF094DFF),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 70.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '💻 ',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Euclid Circular',
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AddCategory(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: CategoryDetails(),
        ),
      ],
    );
  }
}
