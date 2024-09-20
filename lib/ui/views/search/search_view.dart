import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Navigate back when the arrow is pressed
            },
          ),
          title: TextField(
            controller: viewModel
                .searchController, // Connect controller for clear functionality
            onChanged: viewModel
                .updateSearchQuery, // Update search results on input change
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear, color: Colors.grey),
                onPressed: viewModel
                    .clearSearch, // Clear the search when clear icon is clicked
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section for image upload options
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Search By Image',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Find similar products by uploading an image'),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Handle 'Click a Photo' action
                            },
                            icon: const Icon(Icons.image),
                            label: const Text('Click a Photo'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Handle 'Select a Photo' action
                            },
                            icon: const Icon(Icons.camera_alt),
                            label: const Text('Select a Photo'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.white,
                              side: const BorderSide(color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Section for search results
              viewModel.filteredItems.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: viewModel.filteredItems.length,
                      itemBuilder: (context, index) {
                        final item = viewModel.filteredItems[index];
                        return ListTile(
                          title: Text(item),
                          onTap: viewModel.Jacketss,
                        );
                      },
                    )
                  : const Center(
                      child: Text('No results found'),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  SearchViewModel viewModelBuilder(BuildContext context) => SearchViewModel();
}
