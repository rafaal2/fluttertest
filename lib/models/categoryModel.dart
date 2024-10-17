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
            name: 'roupas',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xff9DCEFF)
        )
    );

    categories.add(
        CategoryModel(
            name: 'casa',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xffEEA4CE)
        )
    );

    categories.add(
        CategoryModel(
            name: 'eletronicos',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xff9DCEFF)
        )
    );

    categories.add(
        CategoryModel(
            name: 'decoraçoes',
            iconPath: 'assets/icons/inventory_2_24dp_E8EAED_FILL0_wght400_GRAD0_opsz24.svg',
            boxColor: Color(0xffEEA4CE)
        )
    );


    return categories;
  }
}
