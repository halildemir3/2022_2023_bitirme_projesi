import 'package:url_launcher/url_launcher.dart';

double anaEkranContainerSize = 129;
String diyotGorsel = "assets/images/diyot.png";
String diyotGorsel1 = "assets/images/1N4728.jpg";
String splashScreen = "assets/images/Desktop_Screen.png";
String transistorGorsel1 = "assets/images/transistord.png";
String transistorGorsel = "assets/images/transistor.png";
String tristorGorsel = "assets/images/tristor.png";
String tristorGorsel1 = "assets/images/tristorgorsel.png";
String mosfetGorsel = "assets/images/mosfet.png";
String mosfetGorsel1 = "assets/images/mosfetgorsel.png";
String anaEkranGorsel = "assets/images/ana_ekran.jpg";
String diyotTitle = "DİYOT";
String transistorTitle = "TRANSİSTÖR";
String tristorTitle = "TRİSTÖR";
String mosfetTitle = "MOSFET";
String nullMesage =
    "Elemanlar sağ tarafta listelenmiştir datasheet'ini görmek istediğiniz"
    "elemanın üstüne tıklayınız filtrelemek için sol tarafta bulunan menüden parametrelerinizi seçiniz";
Future<void> urlLauncher(String url) async {
  await launchUrl(Uri.parse(url));
}