import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchController.clear();
      _searchQuery = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          onChanged: _updateSearchQuery,
          decoration: const InputDecoration(
            hintText: 'What are you looking for?',
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: _searchQuery.isNotEmpty
            ? [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: _clearSearchQuery,
          ),
        ]
            : [],
      ),
      body: _searchQuery.isEmpty ? _buildInitialSearchContent() : _buildSearchResults(),
    );
  }

  Widget _buildInitialSearchContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Top searches', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          _buildTopSearchItem('Coffee Shop', 'A Cafe Called Rhonda: Coffee Shop in LA'),
          _buildTopSearchItem('Vegan', 'The Best Plant-Based Cafes in Sydney for 2024'),
          _buildTopSearchItem('Japanese Dishes', 'Japanese dishes, dorayaki'),
          const SizedBox(height: 32),
          Text('Explore the city', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _buildCategoryItem(Icons.place, 'News'),
              _buildCategoryItem(Icons.event, 'Events'),
              _buildCategoryItem(Icons.store, 'Shops'),
              _buildCategoryItem(Icons.restaurant, 'Restaurants'),
              _buildCategoryItem(Icons.local_cafe, 'Cafes'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults() {
    List<String> results = [
      'Butler Bakeshop & Espresso Bar (SoHo)',
      'Maggie\'s Farm Espresso',
      'Essen Fast Slow Food (SoHo)',
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Search for:', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(_searchQuery, style: const TextStyle(color: Colors.black, fontSize: 18)),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: results.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(results[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSearchItem(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.black, fontSize: 16)),
                Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Icon(icon, color: Colors.blue),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
