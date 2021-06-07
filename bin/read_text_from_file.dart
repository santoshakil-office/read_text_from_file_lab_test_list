import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  var path = '/home/dreamploy/Projects/Temp/read_text_from_file/assets/hi.txt';
  // var destination = '/home/dreamploy/Projects/Temp/read_text_from_file/assets/hi2.txt';

  var file = File(path);

  var lineSplitter =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());

  await lineSplitter.forEach(
    (line) async {
      // await Future.delayed(Duration.zero);
      print('"' + line + '"' + ',');
      // await File(destination).writeAsString(line, mode: FileMode.append);
    },
  );

  // await Future.delayed(Duration.zero);
}
