import 'package:flutter/material.dart';
import 'package:hello_world/gen/fonts.gen.dart';
import 'package:hello_world/models/home_model.dart';
import 'package:hello_world/utils/constants/services/http_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getProducts();
    super.initState();
  }

//https://app.quicktype.io/
//https://dummyjson.com/docs/products

  HomeModel? homeModel;
  Future<HomeModel> getProducts() async {
    var data = await HttpService().get("products");
    homeModel = homeModelFromJson(data);
    return homeModel!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Products"),
      ),
      body: FutureBuilder(
          future: getProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text("Error"));
            }
            return ListView.builder(
                itemCount: homeModel!.products!.length,
                itemBuilder: (context, index) {
                  var data = snapshot.data!.products![index];
                  return ListTile(
                    trailing: Text(
                      "\$${data.price}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: ClipOval(
                      child: Image.network(
                        data.thumbnail ?? '',
                        height: 80,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    subtitle: Text(
                      data.description ?? '',
                      style: const TextStyle(fontFamily: FontFamily.poppins),
                    ),
                    title: Text(
                      data.title ?? '',
                      style: const TextStyle(fontFamily: FontFamily.poppins),
                    ),
                  );
                });
          }),
    );
  }
}
