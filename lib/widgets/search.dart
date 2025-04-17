import 'package:flutter/material.dart';

class Search extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const Search({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {});
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: TextField(
        enabled: false,
        controller: _searchController,
        style: TextStyle(color: Colors.black, fontSize: 14),
        decoration: InputDecoration(
          hintText: widget.title,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            gapPadding: 4,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset('assets/images/search_icon.png', width: 30, height: 30),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Image.asset('assets/images/scan_icon.png', width: 24, height: 24, fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset('assets/images/mic_icon.png', width: 24, height: 24, fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
        onChanged: (value) {
          // Callback onSearchChanged akan dipanggil melalui listener controller
        },
      ),
    );
  }
}