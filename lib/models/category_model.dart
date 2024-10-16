import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel(
      {required this.name, required this.iconPath, required this.boxColor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
        CategoryModel(
            name: 'Salad',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xff9DCEFF)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Cake',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xffEEA4CE)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Pie',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xff9DCEFF)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Smoothies',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xffEEA4CE)
        )
    );


    return categories;
  }
}
