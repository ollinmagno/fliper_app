import 'package:hasura_connect/hasura_connect.dart';

class HomeRepository {
  HasuraConnect hasuraConnect = HasuraConnect(
      'https://harura-fliper-test.herokuapp.com/v1/graphql',
      headers: {'x-hasura-admin-secret': 'fliperdevtest2020'});
  
  var table;

  Future getData() async {
    var snapshot = hasuraConnect.subscription(subscriptionTable);
    snapshot.listen((data) async {
      print(data);
      table = await data['data'];
      return table;
    });
  }

  String subscriptionTable = """
    subscription MySubscription {
      wealthSummary(distinct_on: cdi, order_by: {}) {
        id
        gain
        cdi
        profitability
        total
      }
    }
  """;
}
