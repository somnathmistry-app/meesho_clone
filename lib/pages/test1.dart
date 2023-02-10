import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';



final Directory _photoDir =
Directory('/storage/emulated/0/Android/data/com.example.meesho_clone/files');

//
// class ImageCapture extends StatefulWidget {
//   const ImageCapture({Key? key}) : super(key: key);
//
//   @override
//   State<ImageCapture> createState() => _ImageCaptureState();
// }
//
// class _ImageCaptureState extends State<ImageCapture> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Doc Scanner'),
//       ),
//       body: Container(
//         child: FutureBuilder(
//           builder: (context, status) {
//             return ImageGrid(directory: _photoDir);
//           },
//         ),
//       ),
//     );
//   }
// }

void _downloadFile() async {
   if(Platform.isAndroid){
     final status = await Permission.storage.request();
     if (status.isGranted) {
       if(!Directory(_photoDir.path).existsSync()){
         print('directory not exists');
       }else{
         final baseStorage = await getExternalStorageDirectory();
         print('..............$baseStorage');
         Directory _path = await getApplicationDocumentsDirectory();
         String _localPath = _path.path + Platform.pathSeparator + 'Download';
         final savedDir = Directory(_localPath);
         final savedDir1 = Directory(baseStorage!.path.toString());
         bool hasExisted = await savedDir.exists();
         if (!hasExisted) {
           savedDir.create();
         }
         print(_path);
         var refreshGridView;
         var imageList = _photoDir
             .listSync()
             .map((item) => item.path)
             .where((item) => item.endsWith(".jpg"))
             .toList(growable: false);
         var imageList1 = savedDir1
             .listSync()
             .map((item) => item.path)
             .toList();
         print(imageList.length);
         print(imageList1.length);
         print(_photoDir);
         print(savedDir1);
         var path = _localPath;
       }
     } else {
       print('..........not granted!!');
     }
   }else{
     print('Not Android');
   }
}


class ImageGrid extends StatelessWidget {
  const ImageGrid({Key? key}) : super(key: key);

  // final Directory directory;
  // const ImageGrid({Key? key, required this.directory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final status = await Permission.storage.request();


    // return GridView.builder(
    //   itemCount: imageList.length,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 3, childAspectRatio: 3.0 / 4.6),
    //   itemBuilder: (context, index) {
    //     File file =  File(imageList[index]);
    //     String name = file.path.split('/').last;
    //     return Card(
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(8.0),
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.all(5.0),
    //         child: InkWell(
    //           // onTap: () => {
    //           //   refreshGridView =
    //           //       Navigator.push(context, MaterialPageRoute(builder: (context) {
    //           //         return ImageEditClass(
    //           //           imagepath: imageList[index],
    //           //         );
    //           //       })).then((refreshGridView) {
    //           //         if (refreshGridView != null) {
    //           //           build(context);
    //           //         }
    //           //       }).catchError((er) {
    //           //         print(er);
    //           //       }),
    //           // },
    //           child: Padding(
    //             padding: const EdgeInsets.all(4.0),
    //             child: Image.file(
    //               File(imageList[index]),
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          _downloadFile();
        }, child: const Text('Print'),),
      ),
    );
  }
}