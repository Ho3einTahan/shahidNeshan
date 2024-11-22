import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shahid_neshan/src/core/function/copyTessDataToAppDirectory.dart';
import 'package:shahid_neshan/src/core/function/preloadAssets.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await preloadAssets();
  await copyTessdataToAppDirectory();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: TesseractOCRExample(),
    );
  }
}



class TesseractOCRExample extends StatefulWidget {
  @override
  _TesseractOCRExampleState createState() => _TesseractOCRExampleState();
}

class _TesseractOCRExampleState extends State<TesseractOCRExample> {
  String recognizedText = 'هیچ متنی شناسایی نشد!';
  final ImagePicker _picker = ImagePicker();

  Future<void> recognizeText() async {
    final XFile? imageFile = await _picker.pickImage(source: ImageSource.camera);

    if (imageFile == null) return;

    try {
      final text = await FlutterTesseractOcr.extractText(
        imageFile.path,
        language: 'fas',
        args: {
          "tessdata": "${(await getApplicationSupportDirectory()).path}/tessdata",
        },
      );
      setState(() {
        recognizedText = text.isNotEmpty ? text : 'هیچ متنی شناسایی نشد!';
      });
    } catch (e) {
      setState(() {
        recognizedText = 'خطا در شناسایی متن: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tesseract OCR')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: recognizeText,
              child: const Text('انتخاب تصویر'),
            ),
            const SizedBox(height: 20),
            Center(child: Text(recognizedText)),
          ],
        ),
      ),
    );
  }
}