import 'dart:io';
import 'dart:convert';

Future<void> main() async {
  var source =
      '/home/dreamploy/Projects/Temp/read_text_from_file/assets/medical_suply.txt';
  // var destination = '/home/dreamploy/Projects/Temp/read_text_from_file/assets/hi2.txt';

  var file = File(source);

  var lineSplitter =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());

  await lineSplitter.forEach(
    (line) async {
      print('"' + line + '"' + ',');
      // await File(destination).writeAsString(line, mode: FileMode.append);
    },
  );
}
