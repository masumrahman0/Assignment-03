// All functons declared below runs on Main UI thread.

void main() {
  print("Main program: Starts");
  printFileContent();
  print("Main program: Ends");
}

printFileContent() async {
  String fileContent = await downloadFile();
  print("The content of the file is ==> $fileContent");
}

Future<String> downloadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 6), () {  //1 sec, 2sec, ..., 6sec
    return 'My secret file content';
  });

  return result;
}
