import 'dart:convert';

DigitalWallet digitalWalletFromJson(String str) => DigitalWallet.fromJson(json.decode(str));

String digitalWalletToJson(DigitalWallet data) => json.encode(data.toJson());

class DigitalWallet {
    DigitalWallet({
        this.data,
    });

    Data data;

    factory DigitalWallet.fromJson(Map<String, dynamic> json) => DigitalWallet(
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.wealthSummary,
    });

    List<WealthSummary> wealthSummary;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        wealthSummary: List<WealthSummary>.from(json["wealthSummary"].map((x) => WealthSummary.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "wealthSummary": List<dynamic>.from(wealthSummary.map((x) => x.toJson())),
    };
}

class WealthSummary {
    WealthSummary({
        this.id,
        this.gain,
        this.cdi,
        this.profitability,
        this.total,
    });

    int id;
    double gain;
    double cdi;
    double profitability;
    int total;

    factory WealthSummary.fromJson(Map<String, dynamic> json) => WealthSummary(
        id: json["id"],
        gain: json["gain"].toDouble(),
        cdi: json["cdi"].toDouble(),
        profitability: json["profitability"].toDouble(),
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "gain": gain,
        "cdi": cdi,
        "profitability": profitability,
        "total": total,
    };
}