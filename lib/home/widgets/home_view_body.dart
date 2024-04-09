import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Contractor/Contractor_view.dart';
import 'package:flutter_application_1/Contractor/contractor_details_page.dart';
import 'package:flutter_application_1/Contractor/contractor_model.dart';
import 'package:flutter_application_1/consultans/consultant_details_page.dart';
import 'package:flutter_application_1/consultans/consultants_model.dart';
import 'package:flutter_application_1/consultans/consultants_view.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody();

  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<String> imgList = [
    'assets/img/Slider1.jpg',
    'assets/img/Slider2.jpg',
    'assets/img/Slider3.jpg',
  ];

  final List<Consultant> consultingOffices = [
    Consultant(
      name: 'مكتب الهندسة المعمارية المتميزة',
      specialty: 'تصميم البيوت والفيلات',
      description:
          'مكتب استشاري متخصص في تصميم البيوت والفيلات الفاخرة بأحدث التقنيات والمواد.',
      imagePath: 'assets/img/consultans1.jpeg',
      previousProjects: [
        PreviousProject(
          projectName: 'فيلا عائلية فاخرة',
          duration: '2018 - 2020',
          image: 'assets/img/3.jpg',
          details:
              'صمم وأشرف على بناء فيلا فاخرة لعائلة محترمة تجمع بين الفخامة والراحة.',
        ),
        PreviousProject(
          projectName: 'مجمع سكني حديث',
          duration: '2019 - 2021',
          image: 'assets/img/1.jpg',
          details:
              'قاد فريق التصميم لبناء مجمع سكني يتميز بالأسلوب الحديث والمرافق الراقية.',
        ),
        // PreviousProject(
        //   projectName: 'عمارة تجارية',
        //   duration: '2020 - 2023',
        //    image: 'assets/images/Icon awesome-home.png',
        //   details: 'راقب تصميم وبناء عمارة تجارية تجمع بين الاحترافية والجاذبية للمستأجرين.',
        // ),
      ],
    ),
    Consultant(
      name: 'مكتب الهندسة المدنية المتقدمة',
      specialty: 'بناء المباني السكنية والتجارية',
      description:
          'مكتب استشاري متخصص في بناء المباني السكنية والتجارية بأعلى معايير الجودة والأمان.',
      imagePath: 'assets/img/consultans2.jpeg',
      previousProjects: [
        PreviousProject(
          projectName: 'مجمع سكني فاخر',
          duration: '2017 - 2019',
          image: 'assets/img/1.jpg',
          details:
              'أشرف على بناء مجمع سكني فاخر يتضمن مرافق ترفيهية وخدمات متكاملة.',
        ),
        PreviousProject(
          projectName: 'مركز تجاري كبير',
          duration: '2018 - 2020',
          image: 'assets/img/7.jpg',
          details:
              'لعب دورًا رئيسيًا في بناء مركز تجاري يوفر تجربة تسوق فريدة ومميزة.',
        ),
        // PreviousProject(
        //   projectName: 'مبنى مكاتب فندقي',
        //   duration: '2021 - 2022',
        //    image: 'assets/images/Icon awesome-home.png',
        //   details: 'أدار بناء مبنى مكاتب فندقي يتميز بالتصميم الحديث والتقنيات المتطورة.',
        // ),
      ],
    ),
  ];
/////////////////////////////////////////////////
  final List<Contractor> contractors = [
    Contractor(
      name: 'أحمد محمد',
      specialty: 'بناء المنازل',
      description: 'متخصص في بناء المنازل الفاخرة والمباني السكنية.',
      imagePath: 'assets/img/Contractor1.jpg',
      steps: [
        'التخطيط والتصميم',
        'شراء المواد اللازمة',
        'البناء والتشييد',
        'التشطيب والتجهيز',
        'التسليم للعميل',
      ],
      // topWorkers: ['محمد أحمد', 'علي حسن', 'يوسف محمود'],
      paymentMethod: 'التقسيط بدون فوائد',
      discounts: 'خصم 10% للعملاء الجدد',
    ),
    Contractor(
      name: 'حسين علي',
      specialty: 'تجديد المكاتب',
      description: 'يقوم بتجديد المكاتب التجارية بأحدث التصاميم والتقنيات.',
      imagePath: 'assets/img/Contractor2.jpg',
      steps: [
        'التقييم والتحليل',
        'تخطيط التصميم',
        'تنفيذ الأعمال',
        'التشطيب والديكور',
        'التسليم للعميل',
      ],
      // topWorkers: ['أحمد علي', 'محمود حسن', 'علي أحمد'],
      paymentMethod: 'الدفع النقدي',
      discounts: 'خصم 5% عند الدفع كاملاً مقدمًا',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'ابحث...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                    ),
                  ),
                ),
                CarouselSlider(
                  items: imgList.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    viewportFraction: 0.8,
                  ),
                ),
                const SizedBox(height: 20.0),
                // ///////////////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.0),
                        // لون الخلفية
                        child: const Text(
                          'المقاولون',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            // لون النص
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: contractors.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContractorDetailsPage(
                                  contractor: contractors[index]),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 8,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage(contractors[index].imagePath),
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      contractors[index].name,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      contractors[index].specialty,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContractorView(),
                        ),
                      );
                    },
                    child: const Text(
                      'عرض المزيد',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'المكاتب الاستشارية',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: consultingOffices.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConsultantDetailsPage(
                                  consultant: consultingOffices[index]),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 8,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                      consultingOffices[index].imagePath),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        consultingOffices[index].name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        consultingOffices[index].specialty,
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConsultantsView(),
                        ),
                      );
                    },
                    child: const Text(
                      'عرض المزيد',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
