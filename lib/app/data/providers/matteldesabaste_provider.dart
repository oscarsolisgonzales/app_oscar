import 'dart:io';

import 'package:appsivalmattel/app/data/models/resquest/request_matteldesabaste_model.dart';
import 'package:dio/dio.dart';

class MatteldesabasteProvider {
  Future<String> save(RequestMatteldesabasteModel request) async {
    final dio = Dio();
    final response = await dio.post(
      'http://www.sivalaplicativos.com/matteldesabastesSubir',
      data: request.toMap(),
    );
    return "";
  }

  Future<String> uploadFile(Map<String, dynamic> file) async {
    final dio = Dio();

    //Definir imagen
    FormData formData = FormData.fromMap({
      //PREGUNTA 1
      'F01': await MultipartFile.fromFile(
        (file["F01"] as File).path,
        filename: file["F01_NAME"],
      ),
      'F011': await MultipartFile.fromFile(
        (file["F011"] as File).path,
        filename: file["F011_NAME"],
      ),
      //PREGUNTA 2
      'F02': await MultipartFile.fromFile(
        (file["F02"] as File).path,
        filename: file["F02_NAME"],
      ),
      'F021': await MultipartFile.fromFile(
        (file["F021"] as File).path,
        filename: file["F021_NAME"],
      ),
      //PREGUNTA 3
      'F03': await MultipartFile.fromFile(
        (file["F03"] as File).path,
        filename: file["F03_NAME"],
      ),
      'F031': await MultipartFile.fromFile(
        (file["F031"] as File).path,
        filename: file["F031_NAME"],
      ),
      //PREGUNTA 4
      'F04': await MultipartFile.fromFile(
        (file["F04"] as File).path,
        filename: file["F04_NAME"],
      ),
      'F041': await MultipartFile.fromFile(
        (file["F041"] as File).path,
        filename: file["F041_NAME"],
      ),
      //PREGUNTA 5
      'F05': await MultipartFile.fromFile(
        (file["F05"] as File).path,
        filename: file["F05_NAME"],
      ),
      'F051': await MultipartFile.fromFile(
        (file["F051"] as File).path,
        filename: file["F051_NAME"],
      ),
      //PREGUNTA 6
      'F06': await MultipartFile.fromFile(
        (file["F06"] as File).path,
        filename: file["F06_NAME"],
      ),
      'F061': await MultipartFile.fromFile(
        (file["F061"] as File).path,
        filename: file["F061_NAME"],
      ),
      //PREGUNTA 7
      'F07': await MultipartFile.fromFile(
        (file["F07"] as File).path,
        filename: file["F07_NAME"],
      ),
      'F071': await MultipartFile.fromFile(
        (file["F071"] as File).path,
        filename: file["F071_NAME"],
      ),
    });

    final response = await dio.post(
      'http://www.sivalaplicativos.com/matteldesabastesSubirImagen',
      data: formData,
    );
    return "";
  }
}
