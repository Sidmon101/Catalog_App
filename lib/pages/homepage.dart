import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/products.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  final int days = 40;
  final String hello = " new developer";
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(5, (index) => CatalogModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
          itemCount: dummylist.length,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
