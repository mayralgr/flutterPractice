import 'dart:convert';

import 'package:peliculas/src/models/pelicula_model.dart';
import 'package:http/http.dart' as http;

class PeliculasProvider{
  String _apiKey = 'bc6732f60a679d4f211838a243457a2d';
  String _url = 'api.themoviedb.org';
  String _language = 'es-MX';

  Future<List<Pelicula>> _procesarRespuesta(Uri url) async{
    final resp = await http.get( url );
    final decodedData = json.decode(resp.body);
    // print(decodedData['results']);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    // print( peliculas.items[0].title);
    return peliculas.items;
  }

  Future<List<Pelicula>> getEnCines() async
  {
    final url = Uri.https(_url, '3/movie/now_playing', 
      {
        'api_key': _apiKey,
        'language': _language
      }
    );
    // "https://api.themoviedb.org/3/movie/now_playing?api_key=bc6732f60a679d4f211838a243457a2d&language=es-MX"
    // final resp = await http.get( url );
    // final decodedData = json.decode(resp.body);
    // // print(decodedData['results']);
    // final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    // // print( peliculas.items[0].title);
    // return peliculas.items;
    return await _procesarRespuesta(url);
  }

  Future<List<Pelicula>> getPopulares() async
  {
    final url = Uri.https(_url, '3/movie/popular', 
      {
        'api_key': _apiKey,
        'language': _language
      }
    );
    // "https://api.themoviedb.org/3/movie/now_playing?api_key=bc6732f60a679d4f211838a243457a2d&language=es-MX"
    // final resp = await http.get( url );
    // final decodedData = json.decode(resp.body);
    // // print(decodedData['results']);
    // final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    // // print( peliculas.items[0].title);
    // return peliculas.items;
    return await _procesarRespuesta(url);
  }
}




