import 'package:fliper_app/src/model/digital_wallet.dart';
import 'package:hasura_connect/hasura_connect.dart';

class HomeRepository {
  HasuraConnect _hasuraConnect;

  HomeRepository() {
    _hasuraConnect = new HasuraConnect(
        'https://harura-fliper-test.herokuapp.com/v1/graphql',
        headers: {'x-hasura-admin-secret': 'fliperdevtest2020'});
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
  String query = """
    {
  wealthSummary {
    id
    gain
    cdi
    profitability
    total
  }
}
  """;
  Future<DigitalWallet> getData() async {
    //var snapshot = _hasuraConnect.subscription(subscriptionTable);
    var result = await _hasuraConnect.query(query);
    DigitalWallet model = DigitalWallet.fromJson(result);
    return model;
  }
}
