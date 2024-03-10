import 'package:flutter/material.dart';
import 'package:mvvm_architecture/res/app_colors.dart';
import 'package:mvvm_architecture/utils/logger_helpers.dart';
import 'package:mvvm_architecture/view_model/theme_view_model.dart';
import 'package:provider/provider.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Consumer<ThemeViewModel>(
        builder: (context, provider, child)  {

          return Scaffold(
            appBar: AppBar(
              title: const Text("Demo Title"),
              actions: [
                PopupMenuButton<String>(
                  onSelected: (value) {
                    // Handle the selected theme mode here
                    switch (value) {
                      case 'system':
                        provider.setTheme(ThemeMode.system);
                        break;
                      case 'light':
                        provider.setTheme(ThemeMode.light);
                        break;
                      case 'dark':
                        provider.setTheme(ThemeMode.dark);
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) => [
                    const PopupMenuItem<String>(
                      value: 'system',
                      child: Text('System'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'light',
                      child: Text('Light'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'dark',
                      child: Text('Dark'),
                    ),
                  ],
                ),
              ],
            ),
            body: Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Heading Large Example',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const  Divider(),
                  Text(
                    'Heading medium Example',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const  Divider(),
                  Text(
                    'Heading small Example',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: resolveCustomColor(
                          context: context,
                          lightColor: AppColors.secondaryTextColorLight,
                          darkColor: AppColors.secondaryTextColorDark),
                    ),
                  ),

                  const SizedBox(height: 30,),

                  Text(
                    'body Large Example',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const  Divider(),
                  Text(
                    'body medium Example',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const  Divider(),
                  Text(
                    'body small Example',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: resolveCustomColor(
                          context: context,
                          lightColor: AppColors.secondaryTextColorLight,
                          darkColor: AppColors.secondaryTextColorDark),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              backgroundColor: resolveCustomColor(
                  context: context,
                  lightColor: AppColors.secondaryTextColorLight,
                  darkColor: AppColors.secondaryTextColorDark),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        }
    );
  }
}