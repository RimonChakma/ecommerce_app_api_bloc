import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ApiClient {
  final String baseUrl;
  final http.Client _client;
  final Logger _logger;

  ApiClient({required this.baseUrl, http.Client? client})
      : _client = client ?? http.Client(),
        _logger = Logger();

  Future<dynamic> get(String endpoint) async {
    try {
      final response = await _client.get(Uri.parse("$baseUrl$endpoint"));
      return handleRequest(response);
    } catch (e) {
      _logger.e("GET request failed: $e");
      rethrow;
    }
  }

  Future<dynamic> post(String endpoint,
      {required Map<String, dynamic> data}) async {
    try {
      final response = await _client.post(
        Uri.parse("$baseUrl$endpoint"),
        body: jsonEncode(data),
        headers: {"Content-Type": "application/json"},
      );
      return handleRequest(response);
    } catch (e) {
      _logger.e("post request failed: $e");ad
      rethrow;
    }
  }

  dynamic handleRequest(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      _logger.e("Request failed with status: ${response.statusCode}");
      throw Exception(
          "Request failed with status code: ${response.statusCode}");
    }
  }
}
