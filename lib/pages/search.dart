import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meesho_clone/styles/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);


  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = TextEditingController();
  late String _searchQuery;
  final List<String> _items = [
    'Smart Watch',
    'Shoes',
    'Kurti',
    't-shirt',
    'Jewellery',
    'Jeans'
  ];
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _items;
  }

  void _search() {
    setState(() {
      _searchQuery = _searchController.text;
      if (_searchQuery.isNotEmpty) {
        _filteredItems = _items
            .where((item) =>
                item.toLowerCase().contains(_searchQuery.toLowerCase()))
            .toList();
      } else {
        _filteredItems = _items;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          titleSpacing: 0,
          leadingWidth: 30,
          leading: IconButton(
            onPressed: () {
            Get.back();
          },
            icon: Icon(Icons.arrow_back_ios_rounded,color: AppColors.blackGrey),),
          title: TextField(
            textInputAction: TextInputAction.search,
            controller: _searchController,
            onSubmitted: (value) => _search(),
            style: const TextStyle(color:  Colors.black),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              // suffix: Container(),
              // suffixIcon: Container(
              //   child: IntrinsicHeight(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: [
              //         VerticalDivider(
              //             color: AppColors.blackGrey
              //         ),
              //         Icon(Icons.mic_none_sharp,color: AppColors.blackGrey),
              //         const SizedBox(width: 15,),
              //         Icon(Icons.camera_alt_outlined,color: AppColors.blackGrey),
              //         const SizedBox(width: 15),
              //       ],
              //     ),
              //   ),
              // ),
              hintText: 'Search for Products...',
              border: InputBorder.none,
            ),
          ),
          actions: [
             Container()
          ],
          // actions: [
          //   Container(
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.symmetric(vertical: 8.0),
          //           child: VerticalDivider(
          //               color: AppColors.offWhiteGray
          //           ),
          //         ),
          //         Icon(Icons.mic_none_sharp,color: AppColors.offWhiteGray),
          //         const SizedBox(width: 15,),
          //         Icon(Icons.camera_alt_outlined,color: AppColors.offWhiteGray),
          //         const SizedBox(width: 15,)
          //       ],
          //     ),
          //   )
          // ],
        ),
        body: ListView.builder(
            itemCount: _filteredItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_filteredItems[index]),
              );
            })
    );
  }
}

