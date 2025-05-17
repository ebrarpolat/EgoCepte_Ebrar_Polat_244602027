import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //flutter da projenin sağ üst kısmında ki debug yazısını kaldırır
      debugShowCheckedModeBanner: false,
      //Uygulamanın başlığı
      title: 'Ego Cepte',
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
   //Ego Cepte yazısını dışarıdan alan kod
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //arka plan görüntüsünü eklemek için container ekledim
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/anıtkabir.png"),//arka plan görseli anıtkabir oldu
            fit: BoxFit.cover,//görseli ekrana tamamen kaplattırdı bu kod
          ),
        ),
        child: Center(
          child: Column(
            //içerikleri üstten başlayaak şekilde ayarladım
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //görsel için yukarıdan 40 piksel boşluk bıraktım
              const SizedBox(height: 40),
              //uygulamanın logosu için kullanılan görsel
              Image.asset(
                'assets/egocepte.png',
                height: 100,//görsel yüksekliği 100 piksel
              ),
              //görsel ile arama kutusu arasında ki boşluğu ayarladım
              const SizedBox(height: 20),
              //arama kutusunun konteynerı
              Container(
                //genişlik ayarı yapıldı
                width: 300,
                //metin kutusu kullanıcı içerisine bişeyler yazabiliyor
                child: TextField(
                  decoration: InputDecoration(
                    //kullanıcıya açıklayıcı bir label
                    labelText: "Otobüs Nerede",
                    //arama ıconu ve rengi
                    prefixIcon: const Icon(Icons.search, color: Colors.orange),
                    border: OutlineInputBorder(
                      //köşeleri yuvarlatılması için kullanıldı
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),


           // Buton kodlarını bir kere yazdım sonrasında sizin de video da bahsettiğiniz gibi
           // Kopyala yapıştır yaparak çoğalltım yorum satırı sadece 1.Butonda var hocam 6 buton da aynı şekilde tasarlandı

              Row(//ilk 3 kutu yan yana olması için row kullandım
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(// butonun kodları başlıyor 1.buton
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(//style dosyasıyla tasarımını yaptım
                      backgroundColor: Colors.white,//arka plan rengini beyaz verdim
                      fixedSize: const Size(120, 80),//kutunun yükseklik & genişlik ayarını yaptım
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),//yanlarını ovalleştirmek için borderRadius kullandım
                      ),
                    ),
                    child: Column(//row içinde column kullandım ki kutu içerisinde ıcon üstde yazı alta olsun
                      mainAxisAlignment: MainAxisAlignment.center,//ortalamak için kullandım MainAxisAligment.center'ı
                      children: const [
                        Icon(Icons.campaign, color: Colors.red),//Icon kullanmak için kullandığım kod bu da hoparlör ıconunu getirdi
                        SizedBox(height: 8),//Icon ile yazı arasında ki genişlik
                        Text('Duyurular', style: TextStyle(color: Colors.black)),//Duyurular yazısı ve TextStyle kodu ile rengini Siyah yaptım
                      ],
                    ),
                  ),

                  const SizedBox(width: 16),//Kutular arası genişlik ayarı için kullandım


                  ElevatedButton(// butonun kodları başlıyor 2.buton
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(120, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.directions_bus, color: Colors.red),
                        SizedBox(height: 8),
                        Text("Durak Ara", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),




                  const SizedBox(width: 16),
                  ElevatedButton(// butonun kodları başlıyor 3.buton
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(130, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.directions_bus, color: Colors.red),
                        SizedBox(height: 8),
                        Text("Hat&Seferler", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),

              // Bu kısımda yeniden row açtım ki kutular alt alta olsunlar
              // Yine aynı şekilde hocam buton kodları aynıdır

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(// butonun kodları başlıyor 4.buton
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(130, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.credit_card, color: Colors.red),
                        SizedBox(height: 8),
                        Text("Yakın Bayiler", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(// butonun kodları başlıyor 5.buton
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(140, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.location_on, color: Colors.red),
                        SizedBox(height: 8),
                        Text("Yakın Duraklar", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(// butonun kodları başlıyor 6.buton
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(130, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.report_problem, color: Colors.red),
                        SizedBox(height: 8),
                        Text("Sorun Bildir", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

       //Doğruyu söylemek gerekirse hocam bu kısımları yapay zeka yardımı ile buldum ve ayarladım
       //Yeni birşey öğrenmiş oldum ve yine bir kere yazıp kopyala yapıştır ile çoğalttım hocam

      bottomNavigationBar: Container(//Sayfanın alt kısmında ki butonlar Container içerisinde yaptım 
        color: Colors.white,//tüm arka plan beyaz
        height: 70,//alt kısımda ki kutunun yüksekliği için kullandım
        child: Row(//row kullanarak yatay mantığını verdim
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Column(// column mantığı 6 tane kutuda da kullandığım gibi üst de ıcon alt da yazı olsun diye 
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.black),//Icon kodum
                SizedBox(height: 4),//Icon ile yazı arasında ki boşluk kodum
                Text('Ana Sayfa', style: TextStyle(color: Colors.black)),//Ana sayfa yazısı ve yazı rengini siyah yaptım
              ],
            ),
            
                 
            Column( // yine Column kullandım ki ıcon ve yazı alt alta olsunlar
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.black),
                SizedBox(height: 4),
                Text('Favoriler', style: TextStyle(color: Colors.black)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.credit_card, color: Colors.black),
                SizedBox(height: 4),
                Text('AnkaraKart', style: TextStyle(color: Colors.black)),
              ],
            ),


            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.menu, color: Colors.black),
                SizedBox(height: 4),
                Text('Menu', style: TextStyle(color: Colors.black)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
