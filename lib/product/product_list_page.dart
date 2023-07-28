import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_test/product/provider/product_provider.dart';

import 'component/detail_product.dart';
import 'component/more_menu.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

late ProductProvider productProvider ;

class _ProductListPageState extends State<ProductListPage> {

  @override
  void initState() {
    super.initState();
    productProvider = context.read<ProductProvider>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      productProvider.fetchAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Product'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: RefreshIndicator(
          onRefresh: () => productProvider.fetchAllProducts(),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: productProvider.products.length,
            itemBuilder: (context, index) {
              final product = productProvider.products[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductDetailPage(product: product),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(product.cover, fit: BoxFit.cover),
                      ),
                      Text(product.name),
                      Text('Rp ${product.price.toStringAsFixed(2)}'),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),

      bottomSheet: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(left: 55, bottom: 10),
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(
                width: 0.1,
                color: Colors.grey,
              ),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const MoreMenu(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}
