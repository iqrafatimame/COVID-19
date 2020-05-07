class HomeState{ 
  final int cases;
  final int tested;
  final int deaths;
  final int recovered;

  HomeState(
    {
      this.cases,
      this.deaths,
      this.tested,
      this.recovered,
    }
  );

  factory HomeState.fromJSON(Map<String,dynamic> json){
    return HomeState(
      cases: json['infected'],
      tested: json['tested'],
      deaths: json['deceased'],
      recovered: json['recovered'],
      );
  }
}