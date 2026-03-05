import 'package:flutter/material.dart';
import 'package:marketapp/product_detail.dart';

class Category extends StatefulWidget {
  final String category;

  const Category({Key? key, required this.category}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  late List<Widget> displayList;

  @override
  void initState() {
    super.initState();
    if (widget.category == "Basic Food") {
      displayList = [
        productCard("Olive Oil", "57.90 TL",
            "https://cdn.pixabay.com/photo/2019/08/13/11/37/extra-virgin-olive-oil-4403217_960_720.jpg",
            available: true),
        productCard("Milk", "11.95 TL",
            "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
            available: true),
        productCard("Eggs 15 pieces", "31.90 TL",
            "https://cdn.pixabay.com/photo/2021/02/21/07/42/food-6035549_960_720.jpg",
            available: false),
        productCard("Meat 1 KG", "3.50 TL",
            "https://cdn.pixabay.com/photo/2016/03/05/23/02/barbecue-1239434_960_720.jpg",
            available: true),
        productCard("Pasta", "3.50 TL",
            "https://cdn.pixabay.com/photo/2010/12/13/10/00/pasta-2093_960_720.jpg",
            available: true),
        productCard("Tea", "3.50 TL",
            "https://cdn.pixabay.com/photo/2015/07/02/20/37/cup-829527_960_720.jpg",
            available: true),
        productCard("Cheese", "3.50 TL",
            "https://cdn.pixabay.com/photo/2010/12/16/12/42/greek-feta-cheese-3548_960_720.jpg",
            available: true),
        productCard("Flour", "3.50 TL",
            "https://cdn.pixabay.com/photo/2018/12/13/17/41/dough-3873339_960_720.jpg",
            available: true),
        productCard("Rice", "3.50 TL",
            "https://cdn.yemek.com/mnresize/940/940/uploads/2015/10/baldo-pirinc.jpg",
            available: true),
      ];
    } else if (widget.category == "Sweets") {
      displayList = [
        productCard("Chocolate", "3.50 TL",
            "https://www.haciserif.com/antep-fistikli-nota-cikolata-gold-kutu-yaldizli-cikolatalar-haci-serif-12519-94-B.jpg",
            available: true),
        productCard("Cake", "3.50 TL",
            "https://imgrosetta.mynet.com.tr/file/12052663/12052663-728xauto.jpg",
            available: true),
        productCard("Chips", "3.50 TL",
            "https://i.nefisyemektarifleri.com/2021/03/29/sadece-iki-yufkayla-evde-cips-disardan-cips-almaya-son.jpg",
            available: true),
        productCard("Popcorn", "3.50 TL",
            "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/05089479/05089479-654192-1650x1650.jpg",
            available: true),
        productCard("Biscuits", "3.50 TL",
            "http://www.leblebihane.com/Uploads/UrunResimleri/buyuk/Biskuvi-2427.jpg"),
        productCard("Crackers", "3.50 TL",
            "https://www.diyetkolik.com/site_media/media/nutrition_images/White-Chocolate-Pretzel-Brittle-6-Bites-of-Bri.jpg",
            available: true),
        productCard("Gum", "3.50 TL",
            "https://www.trthaber.com/resimler/428000/429065.jpg",
            available: true),
        productCard("Nuts", "3.50 TL",
            "https://st.myideasoft.com/idea/dr/29/myassets/products/616/extra-karisik-kuruyemis.jpg",
            available: true),
      ];
    } else if (widget.category == "Beverages") {
      displayList = [
        productCard("Water", "3.50 TL",
            "https://blog.ofix.com/wp-content/uploads/2017/10/gunluk_su_tuketimi_ofix_blog_1.jpg",
            available: true),
        productCard("Energy Drink", "3.50 TL",
            "https://d2uiaykj5yb3c0.cloudfront.net/snowy/img/p/d988f58a-b5a2-4d2f-9096-6ae42962bad2.jpg",
            available: true),
        productCard("Fruit Juice", "3.50 TL",
            "https://cdn.yemek.com/mnresize/1600/1067/uploads/2015/03/havuc-limon-armut-suyu.jpg"),
        productCard("Ice Tea", "3.50 TL",
            "https://cdn.ye-mek.net/App_UI/Img/out/650/2016/05/ice-tea-soguk-cay-resimli-yemek-tarifi(10).jpg",
            available: true),
        productCard("Cola", "3.50 TL",
            "https://cdn.yeniakit.com.tr/images/news/625/kola-vucuttan-32-bardak-suyla-cikiyor-kolanin-zararlari-h1566366145-78ec61.jpg",
            available: true),
        productCard("Coffee", "3.50 TL",
            "https://www.yongaci.com/wp-content/uploads/2019/11/turkish-coffee-1024x640.jpg",
            available: true),
        productCard("Ayran", "3.50 TL",
            "https://upload.wikimedia.org/wikipedia/commons/8/8e/Fresh_ayran.jpg",
            available: true),
      ];
    } else if (widget.category == "Cleaning") {
      displayList = [
        productCard("Bleach", "13.40 TL",
            "https://cdn.dsmcdn.com/ty100/product/media/images/20210406/22/4880eeff/22219774/1/1_org_zoom.jpg",
            available: true),
        productCard("Cif", "42.99TL",
            "https://productimages.hepsiburada.net/s/50/375/11021451395122.jpg",
            available: true),
        productCard("Dish Sponge", "9 TL",
            "https://www.umuttemizlik.com.tr/bulasik-sungeri-oluklu-sungerler-ceyhanlar-508-48-B.png",
            available: true),
        productCard("Yellow Cloth", "9.99 TL",
            "https://productimages.hepsiburada.net/s/34/375/10451537133618.jpg",
            available: false),
        productCard("Toilet Paper 4 pack", "50 TL",
            "https://productimages.hepsiburada.net/s/18/375/9789899735090.jpg",
            available: false),
        productCard("Insect spray", "80 TL",
            "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/31550120/31550120-2d30d2-1650x1650.jpg",
            available: true),
        productCard("Dishwasher tablets", "50 TL",
            "https://i0.wp.com/www.hayatkolay.com/wp-content/uploads/2019/06/bulasik-tableti.jpg",
            available: true),
        productCard("Refrigerator bags", "7.50 TL",
            "hhttps://productimages.hepsiburada.net/s/39/375/10644800831538.jpg",
            available: true),
      ];
    } else if (widget.category == "Personal Care") {
      displayList = [
        productCard("Shampoo", "35.50 TL",
            "https://productimages.hepsiburada.net/s/35/1500/10486123429938.jpg",
            available: true),
        productCard("Toothpaste", "20.90TL",
            "https://www.onurozturk.com/wp-content/uploads/2016/02/dis-macunu-iceriginde-hangi-maddeler-var.png",
            available: true),
        productCard("Toothbrush", "64.90 TL",
            "http://www.eczane.com.tr/Uploads/UrunResimleri/buyuk/curaprox-5460-ultra-soft-dis-fircasi-5309.jpg",
            available: true),
        productCard("Deodorant", "32.50 TL",
            "https://st.myideasoft.com/idea/el/24/myassets/products/966/axe-erkek-deodorant-sprey-150-ml.png",
            available: true),
        productCard("Cream", "31.50 TL",
            "https://i.nefisyemektarifleri.com/2018/12/27/krem-nasil-yapilir-cesitleri-nelerdir-nasil-kullanilir.jpg",
            available: false),
        productCard("Shower Gel", "19.95 TL",
            "https://st.myideasoft.com/idea/el/24/myassets/products/185/palmolive-naturals-dus-jeli-cesitleri-500-ml.png",
            available: true),
        productCard("Razor", "3.50 TL",
            "https://res.cloudinary.com/mtree/f_auto,dpr_auto,q_auto/gillette-ea-eu-c2/3hmwNLYlOLSbzf8qFwcr2v/a5f3d31b920cf9555965288fe5dd9a46/blue3-comfort-overview-sp_402x.png",
            available: true),
      ];
    }
  }

  Widget productCard(String name, String price, String imagePath,
      {bool available = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail(
                      name: name,
                      price: price,
                      imagePath: imagePath,
                      available: available,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: name,
              child: Container(
                width: 150.0,
                height: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(name,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                )),
            SizedBox(
              height: 8.0,
            ),
            Text(price,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade400,
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      childAspectRatio: 1,
      children: displayList,
    );
  }
}
