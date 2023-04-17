var examplePaymentMethods = {
  "groups": [
    {
      "name": "Credit Card",
      "types": ["amex", "mc", "visa"]
    }
  ],
  "paymentMethods": [
    {
      "brands": ["amex", "mc", "visa"],
      "details": [
        {"key": "encryptedCardNumber", "type": "cardToken"},
        {"key": "encryptedSecurityCode", "type": "cardToken"},
        {"key": "encryptedExpiryMonth", "type": "cardToken"},
        {"key": "encryptedExpiryYear", "type": "cardToken"},
        {"key": "holderName", "optional": true, "type": "text"}
      ],
      "name": "Credit Card",
      "type": "scheme"
    },
    {"name": "PayPal", "supportsRecurring": true, "type": "paypal"}
  ]
};

var examplePaymentMethods2 = {
  "paymentMethods": [
    {
      "brands": [
        "visa",
        "mc",
        "amex",
        "cup",
        "jcb"
      ],
      "name": "信用卡",
      "type": "scheme"
    },
    {
      "name": "AliPay HK",
      "type": "alipay_hk"
    },
    {
      "configuration": {
        "merchantId": "50",
        "gatewayMerchantId": "LegatoTech_LegatoTechECOM2_TEST"
      },
      "name": "Google Pay",
      "type": "googlepay"
    },
    {
      "name": "WeChat Pay",
      "type": "wechatpayMiniProgram"
    },
    {
      "name": "WeChat Pay",
      "type": "wechatpayQR"
    }
  ],
  "storedPaymentMethods": [
    {
      "brand": "mc",
      "expiryMonth": "03",
      "expiryYear": "30",
      "holderName": "Checkout Shopper PlaceHolder",
      "id": "B2KS29XRP6KXWD82",
      "lastFour": "0005",
      "name": "万事达卡",
      "networkTxReference": "YB52RTA4404170417",
      "supportedRecurringProcessingModels": [
        "CardOnFile",
        "Subscription",
        "UnscheduledCardOnFile"
      ],
      "supportedShopperInteractions": [
        "Ecommerce",
        "ContAuth"
      ],
      "type": "scheme"
    }
  ]
};
String clientKey = '10001XXXXXXXXXXXXXXXXXXXX';
