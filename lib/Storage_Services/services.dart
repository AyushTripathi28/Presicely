import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class MyFirebaseStorage{
  static UploadTask? uploadFile(String destination, File file)
  {
    try{
      final ref = FirebaseStorage.instance.ref(destination);
      return ref.putFile(file);

    } on FirebaseException catch(e)
    {
      print("Error Occurred");
      print(e);
      return null;
    }
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
