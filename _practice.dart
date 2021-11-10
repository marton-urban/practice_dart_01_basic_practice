import 'dart:io';

main() {
  final file = File('text.txt');
  final stream = file.openRead();
  stream.listen(
    (data) {
      print(data);
    },
  );
}
