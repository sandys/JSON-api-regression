Feature: Output
  Background:
    Testing Tradus marketplace JSON

  Scenario: User list
    When I get "http://www.tradus.com/samsung-32d481-lcd-tv/p/LCD0000004536336?return_type=marketplace_json"
    Then the JSON response at "priceAvailability" should have 4 entries
    And the JSON response at "priceAvailability/0/Totalqty" should be:
    """
    -999
    """
    And the JSON response at "priceAvailability/0" should be:
      """
      { "Totalqty" : -999,
        "availabilities" : [ { "maxShippingTime" : 7,
              "minShippingTime" : 5,
              "quantity" : -999,
              "warehouseName" : "sellerwarehouse"
            } ],
        "baseShippingFee" : -1,
        "codAvailable" : null,
        "inStock" : 1,
        "maxShippingFee" : 400,
        "minShippingFee" : 400,
        "mop" : false,
        "order" : 2,
        "sellPrice" : 30228,
        "sellerCity" : "Ghaziabad",
        "sellerCompanyName" : "SRS Electronics",
        "sellerDisplayName" : "SRSelectronics",
        "sellerFirstName" : "Mahendra",
        "sellerId" : "483267",
        "sellerLastName" : "Sharma",
        "sellerNickName" : "SRSelectronics",
        "sellerPRating" : "40",
        "sellerRating" : "3.1",
        "sellerSku" : "LCD0000004536336",
        "sellerState" : "UP",
        "shippingAvailable" : null,
        "totalTxn" : "25"
      }
      """
