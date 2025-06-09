import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:one_box/core/utils/end_points.dart';

class ApiService {
  static late Dio _dio;

  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }

  /// **GET Request**
  Future<Response> getData({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    Response response = await _dio.get(
      endpoint,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return response;
  }

  /// **POST Request (Supports JSON & Image Upload)**
  Future<Response> postData({
    required String endpoint,
    Map<String, dynamic>? data, // For JSON data
    File? imageFile, // For image upload
    String? imageFieldName = "image", // Default field name for image
    Map<String, dynamic>? headers,
  }) async {
    FormData formData;

    if (imageFile != null) {
      // Handle image upload
      String fileName = imageFile.path.split('/').last;
      formData = FormData.fromMap({
        imageFieldName!:
            await MultipartFile.fromFile(imageFile.path, filename: fileName),
        ...?data, // Additional data if provided
      });
    } else {
      // Handle normal JSON request
      formData = FormData.fromMap(data ?? {});
    }

    Response response = await _dio.post(
      endpoint,
      data: formData,
      options: Options(headers: {
        "Content-Type":
            imageFile != null ? "multipart/form-data" : "application/json",
        ...?headers,
      }),
    );
    return response;
  }
}
