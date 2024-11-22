import 'package:flutter/material.dart';
import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OCRScreen(),
    );
  }
}

class OCRScreen extends StatefulWidget {
  @override
  _OCRScreenState createState() => _OCRScreenState();
}

class _OCRScreenState extends State<OCRScreen> {
  String _text = "متن استخراج‌شده در اینجا نمایش داده می‌شود";
  final picker = ImagePicker();

  Future<void> extractText() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile == null) return;

    String extractedText = await FlutterTesseractOcr.extractText(pickedFile.path, language: 'fas');
    setState(() {
      _text = extractedText.isEmpty ? "متنی یافت نشد" : extractedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("OCR فارسی")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: extractText,
              child: Text("انتخاب تصویر و استخراج متن"),
            ),
            SizedBox(height: 20),
            Text(_text, textAlign: TextAlign.center, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
