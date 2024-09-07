import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'account_viewmodel.dart';

class AccountView extends StackedView<AccountViewModel> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      AccountViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: const Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xffFFF7ED),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.1, // Responsive radius
                  backgroundImage: const AssetImage('assets/images/img_5.png'), // Replace with your avatar image asset path
                ),
                title: const Text(
                  'Hello sree swanthana!',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.grey),
                        SizedBox(width: 4.0),
                        Expanded(child: Text('Ernakulam-674543')),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Text('sreesanthwana@gmail.com'),

                  ],
                ),
                trailing:  TextButton(onPressed: () {  }, child: Text("Edit",style: TextStyle(color: Colors.orange),),)
                ,

              ),

            ),
            // Add more widgets here if needed
          ],
        ),
      ),
    );
  }

  @override
  AccountViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      AccountViewModel();
}
