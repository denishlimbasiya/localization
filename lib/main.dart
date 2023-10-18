import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en.dart';
import 'gu.dart';
import 'hi.dart';
import 'language_Utils.dart';

void main() {
  runApp(const MyApp());
}
class TranslationsUtils extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>
      {'en-Us': en, 'gu': gu, 'hi': hi};
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: const Locale("en-Us"),
      translations: TranslationsUtils(),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'title'.tr),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'sen1'.tr,
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("en-Us"));
                  },
                  child: const Text("English"),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("gu"));
                  },
                  child: const Text("ગુજરાતી"),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("hi"));
                  },
                  child: const Text("हिंदी"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
