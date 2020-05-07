class GlobalDataList{ 
    final List<GlobalData> countries;

    GlobalDataList({this.countries});
    factory GlobalDataList.fromJson(List<dynamic> parsedJson){
      List<GlobalData> country = new List<GlobalData>();
      country = parsedJson.map((i)=> GlobalData.fromJSON(i)).toList();
      return new GlobalDataList(countries : country);
    }
}

class GlobalData{
  final String countryName;
  final int countryCases;
  final int countryDeaths;
  final String countryRecovered;
  final int activeCases;

  GlobalData({
    this.activeCases,
    this.countryCases,
    this.countryName,
    this.countryDeaths,
    this.countryRecovered,
    });

    factory GlobalData.fromJSON(Map<String, dynamic> json) {
    return GlobalData(
        countryName: json['country'],
        countryCases: json['cases'],
        countryDeaths: json['deaths'],
        countryRecovered: json['recovered'].toString(),
        activeCases: json['active']);
  }
}