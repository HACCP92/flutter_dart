// 복사용

final String json = '''{
  "collectionChartDataList": [
    {"collectionName": "collectionName", "collectionSalePrice": []}, 
    //.fromJson으로 역직렬화로 수행할시 리스트 앞에 값이 들어와야 하므로 하나가 null값이 들어오면 안됀다.
    {
      "collectionName": "collectionName",
      "collectionSalePrice": [
        {"price": 59.75, "cvtDatetime": "2023-03-26T08:08:35"},
        {"price": 60.00, "cvtDatetime": "2023-03-26T08:08:45"}
      ]
    }
  ]
}''';
