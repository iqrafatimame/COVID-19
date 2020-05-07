import 'dart:convert';
import 'package:corona_virus/Model/globalDataModel.dart';
import 'package:corona_virus/Model/pakistanDataModel.dart';
import 'package:http/http.dart' as http;

class CovidAPI{ 

Future<HomeState> getHomeCase() async {
    String url =
        'https://api.apify.com/v2/key-value-stores/QhfG8Kj6tVYMgud6R/records/LATEST?disableRedirect=true';
    final response = await http.get(url);
    print('pakistan ${response.body}');
    if (response.statusCode == 200) {
      return HomeState.fromJSON(json.decode(response.body));
    } else {
      throw Exception("Failed to load Post :(");
    }
  }


 Future<GlobalDataList> getCountryData() async { 
   String url = "https://coronavirus-19-api.herokuapp.com/countries";
   final response =await http.get(url);
   if(response.statusCode == 200){
     final jsonRes = json.decode(response.body);
     return GlobalDataList.fromJson(jsonRes);
    }
    else{
      throw Exception ("Failed due to some network erroe :(");
    }
  }
}

