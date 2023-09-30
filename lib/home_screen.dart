import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/product_detail.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = productList;
  Key productListKey = UniqueKey();

  void updateFilteredProducts(List<Product> filteredProducts) {
    setState(() {
      products = filteredProducts;
      productListKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Shoes Shop",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchWidget(
              onSearch: updateFilteredProducts,
            ),
            Expanded(
              child: GetListOfItem(
                key: productListKey,
                products: products,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchWidget extends StatefulWidget {
  final Function(List<Product>) onSearch;

  SearchWidget({Key? key, required this.onSearch}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState(onSearch: onSearch);
}

class _SearchWidgetState extends State<SearchWidget> {
  final Function(List<Product>) onSearch;

  _SearchWidgetState({required this.onSearch});

  TextEditingController textEditingController = TextEditingController();

  void filterSearchResults(String query) {
    List<Product> filteredList = productList
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    onSearch(filteredList);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        onChanged: (value) {
          filterSearchResults(value);
        },
        controller: textEditingController,
        decoration: const InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}

class GetListOfItem extends StatefulWidget {
  List<Product> products;
  final Key key; 

  GetListOfItem({required this.products, required this.key})
      : super(key: key);

  @override
  _GetListOfItemState createState() => _GetListOfItemState(products: products);
}

class _GetListOfItemState extends State<GetListOfItem> {
  List<Product> products;

  _GetListOfItemState({required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: widget.key,
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        Product product = products[index];
        return ProductTile(product: product);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  Product product;

  ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return ProductDetail(product: product);
          }),
        )
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x3600000F),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildProductImage(product.image),
              const SizedBox(height: 10),
              _buildProductName(product.name),
              const SizedBox(height: 2),
              _buildProductPrice(product.price),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductImage(String imageURL) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
      child: Container(
        width: 100,
        height: 100,
        child: Center(
          child: Image.network(
            imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildProductName(String productName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        productName,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }

  Widget _buildProductPrice(int productPrice) {
    final priceFormat = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp.',
    );

    final formattedPrice = priceFormat.format(product.price);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        formattedPrice,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
      ),
    );
  }
}
