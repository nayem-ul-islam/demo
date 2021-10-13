import 'Test.dart';
import 'package:http/http.dart' as http;

Future<List<Test>> fetchTest() async {
  String url = "http://10.0.2.2/test.php";
  final response = await http.get(Uri.parse(url));
  return testFromMap(response.body);
}
