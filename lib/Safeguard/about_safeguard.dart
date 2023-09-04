import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class About_Safeguard extends StatefulWidget {
  const About_Safeguard({Key? key}) : super(key: key);

  @override
  State<About_Safeguard> createState() => _About_SafeguardState();
}

class _About_SafeguardState extends State<About_Safeguard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text("realme Safeguard Services"),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "সেফগার্ড সার্ভিস কি? 🤔",
                content:
                "It’s a featured service and is offering one-time free broken screen replacement and extended warranty to satisfy the users. These extra featured services are called Safeguard services.\nএটি একটি ভিন্ন আকর্ষণীয় পরিষেবা এবং ব্যবহারকারীদের সন্তুষ্ট করার লক্ষে একবারের জন্য ফ্রি ভাঙা ডিসপ্লে  প্রতিস্থাপন এবং বর্ধিত ওয়ারেন্টি সরবরাহ করছে। এই আকর্ষণীয় বৈশিষ্ট্যযুক্ত এই পরিষেবাগুলিকে সেইফগার্ড পরিষেবা বলা হয়।",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "realme তে থাকছে ৪ ধরনের সেফগার্ড সার্ভিস। ",
                content:
                "realme তে থাকছে ৪ ধরনের সেফগার্ড সার্ভিস। —\n"
                    "১) স্ক্রিন প্রটেকশন\n২) এক্সটেন্ডডেট ওয়ারেন্টি প্রটেকশন \n ৩)রিয়েলমি কেয়ার (৬ মাস) \n ৪) রিয়েলমি কেয়ার (১২ মাস):",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 20),
                titleBorderRadius: BorderRadius.circular(20),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title:
                "১) স্ক্রিন প্রটেকশন:",
                content:
                "এই সার্ভিসটি হ্যান্ডসেটের ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে৭ দিনের মধ্যে কেনা যাবে। যদি গ্রাহক স্ক্রিন সেফগার্ড সার্ভিসটি ক্রয় করেন, তবে তিনি সর্বোচ্চ একবার বিনামূল্যে ভাঙা স্ক্রিন পরিবর্তন করতে পারবেন।",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "২) এক্সটেন্ডডেট ওয়ারেন্টি প্রটেকশন",
                content:
                "এই সার্ভিসটি হ্যান্ডসেটের ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে ১৮০ দিনের মধ্যে কেনা যাবে। যদি গ্রাহক বর্ধিত ওয়ারেন্টি সেফগার্ড সার্ভিসটি ক্রয় করেন, তবে তিনি নিয়মিত এক বছরের ওয়ারেন্টি সার্ভিসের পরে অতিরিক্ত ওয়্যারেন্টি সার্ভিস উপভোগ করতে পারবেন।",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "৩)রিয়েলমি কেয়ার (৬ মাস):",
                content:
                "এই সার্ভিসটিতে ৬ মাসের এক্সটেন্ড ওয়ারেন্টি প্রটেকশন এবং ৬ মাসের স্ক্রিন প্রটেকশন একসাথে অন্তর্ভুক্ত থাকবে৷ এই বীমাটি  ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে ৭ দিনের মধ্যে কেনা যাবে।",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "৪) রিয়েলমি কেয়ার (১২ মাস): ",
                content:
                "এই সার্ভিসটি ১২ মাসের এক্সটেন্ড ওয়ারেন্টি প্রটেকশন এবং ১২ মাসের স্ক্রিন প্রটেকশন একসাথে অন্তর্ভুক্ত থাকবে৷ এই বীমাটি ই-ওয়ারেন্টি কার্ড অ্যাক্টিভেশনের তারিখ থেকে ৭ দিনের মধ্যে কেনা যাবে। ",
              ),
              GFAccordion(
                textStyle: TextStyle(fontSize: 18),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                titleBorderRadius: BorderRadius.circular(20),
                title: "ওয়ারেন্টি সেফগার্ড পরিষেবার শর্তাবলী :--",
                content:
                    "(বিঃ দ্রঃ মোবাইল ফোনে মানব সৃষ্ট কোনও সমস্যা, কোন শারীরিক বা তরল ক্ষতি, অননুমোদিত রক্ষণাবেক্ষণ, এবং ওয়ারেন্টির বাইরে রক্ষণাবেক্ষণ রেকর্ড থাকা যাবে না।) ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
