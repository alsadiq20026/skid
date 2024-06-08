import 'package:image_pickers/image_pickers.dart';

imageuploadcamera() async {
  final Media? file = await ImagePickers.openCamera();
  if (file != null) {
    return file;
  } else {
    return;
  }
}
