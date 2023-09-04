import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Safeguard_Images extends StatefulWidget {
  const Safeguard_Images({Key? key}) : super(key: key);

  @override
  State<Safeguard_Images> createState() => _Safeguard_ImagesState();
}

class _Safeguard_ImagesState extends State<Safeguard_Images> {
  List imageList = [
    {"id": 1, "image_path": 'assets/safeguard.jpeg'},
    {"id": 2, "image_path": 'assets/service_day_2.jpeg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('realme Safeguard'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == entry.key
                                ? Colors.red
                                : Colors.teal),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.grey.shade200,
                child: Text(
                  '\n🤗ফোনের বাড়তি সুরক্ষায় realme "Safeguard Service" হতে পারে আপনার একমাত্র ভরসা🤩\n''সেফগার্ড সার্ভিস কি? 🤔 \nসেফগার্ড সার্ভিস একটি ভিন্নধর্মী আকর্ষণীয় সার্ভিস যা ব্যবহারকারীদের সন্তুষ্ট করার লক্ষ্যে সল্পমূল্যে একবারের জন্য ফ্রী ভাঙ্গা ডিসপ্লে পরিবর্তন এবং অফিশিয়াল ওয়ারেন্টি বাড়িয়ে নেয়ার সুবিধা প্রদান করছে। আকর্ষণীয় বৈশিষ্ট্যযুক্ত এই সার্ভিসগুলোকে সেইফগার্ড সার্ভিস বলা হয়। \nrealme তে থাকছে ৪ ধরনের সেফগার্ড সার্ভিস। \n'
                  '১) স্ক্রিন প্রটেকশন: এই সার্ভিসটি হ্যান্ডসেটের ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে৭ দিনের মধ্যে কেনা যাবে। যদি গ্রাহক স্ক্রিন সেফগার্ড সার্ভিসটি ক্রয় করেন, তবে তিনি সর্বোচ্চ একবার বিনামূল্যে ভাঙা স্ক্রিন পরিবর্তন করতে পারবেন। \n'
                  '২) এক্সটেন্ডডেট ওয়ারেন্টি প্রটেকশন: এই সার্ভিসটি হ্যান্ডসেটের ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে ১৮০ দিনের মধ্যে কেনা যাবে। যদি গ্রাহক বর্ধিত ওয়ারেন্টি সেফগার্ড সার্ভিসটি ক্রয় করেন, তবে তিনি নিয়মিত এক বছরের ওয়ারেন্টি সার্ভিসের পরে অতিরিক্ত ওয়্যারেন্টি সার্ভিস উপভোগ করতে পারবেন।\n'
                      '৩)রিয়েলমি কেয়ার (৬ মাস): এই সার্ভিসটিতে ৬ মাসের এক্সটেন্ড ওয়ারেন্টি প্রটেকশন এবং ৬ মাসের স্ক্রিন প্রটেকশন একসাথে অন্তর্ভুক্ত থাকবে৷ এই বীমাটি  ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে ৭ দিনের মধ্যে কেনা যাবে।\n'
                      '৪) রিয়েলমি কেয়ার (১২ মাস): এই সার্ভিসটি ১২ মাসের এক্সটেন্ড ওয়ারেন্টি প্রটেকশন এবং ১২ মাসের স্ক্রিন প্রটেকশন একসাথে অন্তর্ভুক্ত থাকবে৷ এই বীমাটি ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে ৭ দিনের মধ্যে কেনা যাবে।\n'
                      '(বিঃ দ্রঃ মোবাইল ফোনে মানব সৃষ্ট কোনও সমস্যা, কোন শারীরিক বা তরল ক্ষতি, অননুমোদিত রক্ষণাবেক্ষণ, এবং ওয়ারেন্টির বাইরে রক্ষণাবেক্ষণ রেকর্ড থাকা যাবে না।) '
                  ,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
