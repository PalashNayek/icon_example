import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/icon_viewmodel.dart';

class IconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<IconViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Icon with MVVM and DI'),
        ),
        body: Center(
          child: Consumer<IconViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    viewModel.iconData,
                    color: viewModel.iconColor,
                    size: viewModel.iconSize,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.updateIcon(Icons.thumb_up);  // Change icon
                    },
                    child: Text("Change Icon"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.updateColor(Colors.red);  // Change color
                    },
                    child: Text("Change Color"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.updateSize(viewModel.iconSize + 10);  // Increase size
                    },
                    child: Text("Increase Size"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
