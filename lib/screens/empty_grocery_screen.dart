import 'package:flutter/material.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Padding(
      padding: const EdgeInsets.all(30.0),
      // 2
      child: Center(
        // 3
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1
            Flexible(
              // 2
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/fooderlich_assets/empty_list.png'),
              ),
            ),
            Text(
              'No Groceries',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Shopping for ingredients?\n'
                  'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              textColor: Colors.white,
              child: const Text('Browse Recipes'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.green,
              onPressed: () {
                // TODO 8: Go to Recipes Tab
              },
            ),
          ],
        ),
      ),
    );
  }
}