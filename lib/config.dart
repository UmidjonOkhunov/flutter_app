// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get API_URL => dotenv.get("API_URL", fallback: "localhost:4200");
  static String get MAPBOX_ACCESS_TOKEN => dotenv.get("MAPBOX_ACCESS_TOKEN");
  static String get MAPBOX_STYLE => dotenv.get("MAPBOX_STYLE");
  static int get REFRESH_TOKEN_DURATION_SECOND =>
      int.parse(dotenv.get("REFRESH_TOKEN_DURATION_SECOND", fallback: "60"));

  static String get KAKAO_NATIVE_APP_KEY => dotenv.get("KAKAO_NATIVE_APP_KEY");
  static String get KAKAO_WEBVIEW_CALLBACK_PATH => dotenv.get("KAKAO_WEBVIEW_CALLBACK_PATH");

  static String get MQTT_HOST_URL => dotenv.get("MQTT_HOST_URL");
  static int get MQTT_HOST_PORT => int.parse(dotenv.get("MQTT_HOST_PORT"));
  static String get MQTT_USERNAME => dotenv.get("MQTT_USERNAME");
  static String get MQTT_PASSWORD => dotenv.get("MQTT_PASSWORD");
  static String get MQTT_ENV => dotenv.get("MQTT_ENV", fallback: "");
  static bool get AUTOMATION_TEST_BUILD =>
      dotenv.get("AUTOMATION_TEST_BUILD", fallback: 'false').toLowerCase() == 'true';

  static String get INIPAY_BASE64_PUBLIC_KEY => dotenv.get("INIPAY_BASE64_PUBLIC_KEY");

  static String get NINEBOT_BLE_ACCESS_TOKEN => dotenv.get("NINEBOT_BLE_ACCESS_TOKEN");

  static String get MIXPANEL_TOKEN => dotenv.get("MIXPANEL_TOKEN");

  static String get AUTH_SIGNATURE_SALT => dotenv.get("AUTH_SIGNATURE_SALT");

  static String get S3_BUCKET => dotenv.get("S3_BUCKET", fallback: "staging-vehicle");

  static String get DL_PHOTO_S3_BUCKET => dotenv.get("DL_PHOTO_S3_BUCKET", fallback: "test-customer-information");

  static String get ADYEN_PUBLIC_KEY => dotenv.get("ADYEN_PUBLIC_KEY",
      fallback:
          "10001|A0C5E6EA3F98756B9B0DA0E461210A9A528025140527B0C90DDB357FA3128A849F3374EED80C5386B80EA485BF8BDC6C7EE6D701F0A29AE11942E72313C3AB728F1D40BDB8EA40DEE57EC484DF4857E64893C6203B26C9708E1C1185ECCCBBA5BEC51671135F74A49064553C9E5AD51D2D62771D1BAB9E2089971D5410A0D9107ED094B229D718C666E998EB5555E34BA06DB9778169DEB300B58E22FA648C1FD7F4DC44D1DFA7B0D992FDD5255DA7D2B1ED6176382F4173D9FC66148E2B9536747666EE8C28AC285197AB6D7CE65100860B5008106A843647ADDC7B597D7CDCFDBEE5908D5EFB8CE6E39856588ADB0F253659C4F957824699DF7B9AC338085F");

  static String get LEANPLUM_APP_ID => dotenv.get("LEANPLUM_APP_ID");

  static String get LEANPLUM_APP_KEY => dotenv.get("LEANPLUM_APP_KEY");

  static String get APPLEPAY_MERCHANT_IDENTIFIER =>
      dotenv.get('APPLEPAY_MERCHANT_IDENTIFIER', fallback: 'merchant.com.ridebeam.escooterapp.debug');

  static String get INTERCOM_APP_ID => dotenv.get("INTERCOM_APP_ID");
  static String get INTERCOM_IOS_KEY => dotenv.get("INTERCOM_IOS_KEY");
  static String get INTERCOM_ANDROID_KEY => dotenv.get("INTERCOM_ANDROID_KEY");

  static String get CHECKOUT_RISKJS_URL => dotenv.get("CHECKOUT_RISKJS_URL");
  static String get CHECKOUT_PUBLIC_KEY => dotenv.get("CHECKOUT_PUBLIC_KEY");

  static String get LYZICO_2048BIT_BASE64_RSA_PUBLIC_KEY => dotenv.get("LYZICO_2048BIT_BASE64_RSA_PUBLIC_KEY");
  static String get IYZICO_3DS_CALLBACK_PATH => dotenv.get("IYZICO_3DS_CALLBACK_PATH");

  static String? XENDIT_PUBLIC_KEY(String currency) {
    final xenditKeysMap = {"MYR": dotenv.get("XENDIT_MYR_PUBLIC_KEY")};
    return xenditKeysMap[currency];
  }

  static String get CAPTUR_API_KEY => dotenv.get("CAPTUR_API_KEY");

  static int get FETCH_NOTIFICATION_UPDATE_XSECONDS_AFTER_START_TRIP =>
      int.parse(dotenv.get("FETCH_NOTIFICATION_UPDATE_XSECONDS_AFTER_START_TRIP", fallback: "3"));

  static String get IP_API_URL => dotenv.get("IP_API_URL", fallback: 'https://ipapi.co/json/');
}
