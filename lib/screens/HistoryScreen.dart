import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:porsh_history/helpers/utils.dart';
import 'package:porsh_history/screens/MenuScreen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/back_img.png"),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(width: 20.w),
                  InkWell(
                    onTap: () {
                      customNavigatorPush(
                        context,
                        MenuScreen(),
                      );
                    },
                    child: Image.asset("assets/images/menu_icon.png"),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15).r,
                  child: ListView(
                    children: [
                      Text(
                        "It marked the convergence of two companies which had had many points of contact throughout their history. Ferdinand Porsche (1875-1951) was an innovator whose ground-breaking designs made him one of the great figures in the automotive history of the first half of the 20th century. He began looking into the construction of electric vehicles as early as 1898. The Lohner-Porsche featuring a wheel hub mounted motor had a range of 50 kilometres, and was a big hit at the 1900 Exposition Universelle in Paris. In the same year, Porsche developed the Semper Vivus, the world’s first functional hybrid vehicle to go into production. Porsche laid the foundations for his international reputation during his time as technical director of Austro-Daimler from 1906 onwards, with designs including the “Prinz Heinrich” car, the “Landwehr-Train” off-road hybrid vehicle and the “Sascha” light-weight racing car. After moving to be technical director of the Daimler motor company in Stuttgart in 1923, Porsche built sports cars with large-capacity supercharged engines. However, the cost of the high-tech development work ran contrary to the economy drive imposed following the merger of Daimler and Benz in 1926. Porsche subsequently left the business in 1928, and in 1929 joined Austrian motor company Steyr.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Image.asset("assets/images/h_image1.png"),
                      SizedBox(height: 20.h),
                      Text(
                        "After having undertaken a number of minor projects, in 1933 the design company was awarded the lucrative contract to build a race car for Auto Union. The P-type, weighing 750 kilograms and featuring a mid-mounted engine, was Porsche’s first grand-prix car design, and assured the continued existence of the business. It was followed by a contract from NSU to develop a small car, the Type 32, which with its air-cooled rear-mounted engine, torsion bar suspension and characteristic rounded rear end design exhibited elements of the later Volkswagen. The idea of a low-cost small car for the mass market fascinated Porsche who – like many other designers and engineers at the time – looked to the mass motorisation taking place in the USA. In his “Memorandum on the construction of a German People’s Car”",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Porsche set forth his plan for a fully practical mass-market vehicle. As the “People’s Car” project was backed by the Nazi regime headed by Adolf Hitler, it was taken up by the Reich Automotive Industry Association (RDA), which on June 22, 1934 awarded the independent Porsche design consultancy a contract to develop and build prototypes. The Porsche team solved the technical problems, and Porsche himself became one of the main directors of the company known as “Gesellschaft zur Vorbereitung des Deutschen Volkswagens mbH” founded in 1937. Porsche’s design consultancy, in 1937 renamed Dr. Ing. h.c. F. Porsche KG, acted as an outsourced research and development function for Volkswagenwerk GmbH.”",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Image.asset("assets/images/h_image2.png"),
                      SizedBox(height: 20.h),
                      Text(
                        "In 1938/39, Porsche KG developed the Type 64 “BerlinRome car”, an in-house sports car concept which is considered to be the grandfather of the later Porsche sports car family. Porsche KG also designed tractors for agriculture, and later tanks and other military vehicles. Bombing raids on Stuttgart in 1944 drove the management to relocate the design office to a former sawmill in Gmünd in the Carinthia region of Austria and the material stores to a f lying school in Zell am See, which also provided the location of the Porsche family seat, known as the “Schüttgut”.Following its launch in September 1964, the new 911 model was to become the cornerstone of the Porsche brand. ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Image.asset("assets/images/h_image3.png"),
                      Text(
                        "Getting the new model series into production was a real challenge for the company however. Porsche invested DM 15 million in purchasing a body plant, though to do so it had to withdraw from Formula 1, thereby giving up part of its motorsport activities. The growing reputation of the Porsche brand was further boosted by the race successes of the Porsche 917. Developed under the supervision of Ferdinand Piëch, featuring a 12-cylinder V-configuration engine with an initial 520 hp power output, its many triumphs from 1969 onwards included a string of victories at Le Mans.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Image.asset("assets/images/h_image4.png"),
                       SizedBox(height: 20.h),
                       Text(
                        "Porsche also intensified its co-operation with Volkswagen. In 1966, the two companies agreed to develop a successor to the outdated Volkswagen Karmann Ghia sports coupe. The plan was to position what was to become the V W-Porsche 914 below the 911 segment and to make the model compatible with both manufacturers’ selling programmes. To sell the second Porsche model series, the V W-Porsche Vertriebsgesellschaft was established, with both manufacturers owning an equal share in the sales company. The so-called “Volksporsche” launched in 1969 only partially met its selling expectations however. Whereas the V W-Porsche 914 with the 6-cylinder engine sold slowly, demand for the much cheaper 4-cylinder engined variant was high: the 914/4 sold 13,000 units in 1970 alone.The transformation of Porsche into a stock corporation with effect from August 1, 1972 fundamentally altered the corporate structure. The Piëch and Porsche families who owned the business decided that the family members would withdraw from operational control, leaving it in the hands of appointed management. From that time on, the families fulfilled their role through the Supervisory Board, which for many years was chaired by Ferry Porsche.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "The finances of the stock corporation remained under severe pressure, among other factors resulting from the construction of a new head office administration building in the Tammerfeld district of Ludwigsburg. Bans on Sunday driving and speed restrictions following the oil price shock in 1973 were causing uncertainty among car-buyers in Germany. Porsche cut its daily production from 72 to 50 units and introduced short-time working, though it did initiate an expansion of its model range. With the G-series, Porsche initially placed its faith in a new generation of the 911 featuring safety bumpers, integrated head restraints, steering wheel mounted airbag modules and automatic three-point seat belts. At the high-point of the recession, in 1974, Porsche launched its 911 Turbo 3.0 Coupe super-sports car, developed in close conjunction with the company’s motorsport activities. The Porsche with the distinctive rear wing was initially planned as a small-lot series. But the turbocharged model featuring internally vented disk brakes and offering everyday practicality combined with luxury became a surprise hit. Porsche built 2,850 units of the model in its first three years after launch, enabling the business to power strongly out of crisis.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "At the bottom end of the model range, in 1976 the new 924 model replaced the V W-Porsche 914, which ceased production the same year. As in the case of the predecessor model, a collaboration with Volkswagen had been targeted in order to cut costs based on economies of scale in component supply. Volkswagen stopped the joint project in 1975 in order to focus its energies on the new generation of models from the Polo to the Passat, and transferred the 924 model to Porsche. Launched independently as the Porsche 924, the car was made at Audi in Neckarsulm. The new entry-level Porsche broke with the traditional design concept. The 924 featured a water-cooled 4-cylinder front-mounted engine, with a trans-axle transmission sending the power to the rear wheels. In the 1976/77 financial year the 924 accounted for almost half of the company’s total vehicle sales. By the time production was ended in 1988, 150,684 units of the model had been built.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Image.asset("assets/images/h_image5.png"),
                      SizedBox(height: 20.h),
                      Text(
                        "After the second oil price shock in 1979, Porsche felt the pressure of competition on international car markets. Cheaper Japanese sports car models penetrating the key US market impacted on the Porsche 924. In 1979/80 Porsche saw its unit sales decline 19.7 percent, though sales revenues held up. Porsche responded to the competitive pressures in 1981 by launching the 944, an economical 4-cylinder car conceived as a sophisticated entry-level model giving access to the brand and linking up the range between the 924 and the 911 SC. It touched a nerve among customers, and from January to September 1982 Porsche sold 4,000 units of the 944 alone. In",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Image.asset("assets/images/h_image6.png"),
                      SizedBox(height: 20.h),
                      Text(
                        "Competitive pressures on international markets intensified during the 1980s. Porsche initially managed to keep well on track, achieving its fifth record year in succession in 1985/86, primarily thanks to its strong US business, with more than one in two of its vehicles being exported to the USA. Following the expiration of the agreement with Volkswagen of America Inc. on August 31, 1984, the newly established Porsche Cars North America Inc. began selling cars on its own behalf. By an issue of preference shares on May 4, 1984, Porsche procured additional capital for upgrading, and through to 1988 invested over a billion DM in new installations including an environmentally friendly paint shop and a state-of-the-art paint plant.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Image.asset("assets/images/h_image7.png"),
                      SizedBox(height: 70.h),
                      Image.asset("assets/images/h_image8.png"),
                      SizedBox(height: 70.h),
                      Image.asset("assets/images/h_image9.png"),
                      SizedBox(height: 20.h),
                      Text(
                        "The addition of a third model series to the product range – the Cayenne sports utility vehicle built in co-operation with Volkswagen – enabled Porsche to expand its production, opening a new plant in Leipzig in 2002. In August 2002, the Supervisory Board approved the introduction of a fourth model series – a luxury Gran Turismo named the Panamera – which has been in production since 2009, likewise at the Leipzig plant.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 50.h),
                      Text(
                        "Tradition and progress form a strong combination as the foundation stones of the Porsche brand. With its plug-in hybrid drive for the Cayenne and Panamera models, the company is today building upon the engineering legacy of Ferdinand Porsche. In September 2013, the electrified 918 Spyder super-sports car became the first road-legal vehicle to complete the 20.6 kilometre Nordschleife circuit at the Nürburgring in less than seven minutes – in fact, six minutes and 57 seconds to be precise. The 887 hp powerhouse combines maximum driving dynamics with minimal fuel consumption, and in combined drive mode emits just 79 grams of CO2 per kilometre. New drive systems and new models, such as the Macan, embody the company's ongoing strategy of producing sports cars to meet every customer need. Porsche is still powering ahead in the fast lane. With a workforce of 22,190 people, Porsche once again improves its performance in financial 2014, selling 190,000 vehicles, generating sales revenues of 17.2 billion euro, and achieving an operating profit of 2.718 billion euro.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Iowan Old Style",
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              InkWell(
                onTap: () {
                  customNavigatorPush(context, const MenuScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                      color: const Color(0xff282727),
                      borderRadius: BorderRadius.circular(20).r),
                  width: 311.w,
                  height: 79.h,
                  alignment: Alignment.center,
                  child: Text(
                    "Exit",
                    style: TextStyle(
                      
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontFamily: "Iowan Old Style"),
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
