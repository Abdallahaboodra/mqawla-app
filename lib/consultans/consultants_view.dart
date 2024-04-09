
import 'package:flutter/material.dart';
import 'package:flutter_application_1/consultans/consultant_details_page.dart';
import 'package:flutter_application_1/consultans/consultants_model.dart';

class ConsultantsView extends StatelessWidget {
  ConsultantsView({super.key});
  // list of consultants
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
    Consultant(
      name: 'مكتب التصميم الداخلي الأنيق',
      specialty: 'تصميم الديكور الداخلي',
      description:
          'مكتب استشاري متخصص في تصميم وتنفيذ الديكور الداخلي للبيوت والعمارات والمباني التجارية.',
      imagePath: 'assets/img/consultans3.jpeg',
      previousProjects: [
        PreviousProject(
          projectName: 'ديكور مطعم فاخر',
          duration: '2020 - 2022',
          image: 'assets/img/4.jpg',
          details:
              'أنشأ تصميم داخلي لمطعم فاخر يجمع بين الجمال والوظيفية ويضيف قيمة لتجربة العملاء.',
        ),
        PreviousProject(
          projectName: 'ديكور فيلا فخمة',
          duration: '2019 - 2020',
          image: 'assets/img/3.jpg',
          details:
              'صمم وأثاثت ديكور فيلا فاخرة تنعم بالفخامة والأناقة في كل تفصيل.',
        ),

        //     PreviousProject(
        //       projectName: 'ديكور مكتب حديث',
        //       duration: '2018 - 2021',
        // image: 'assets/images/Icon awesome-home.png',
        //       details: 'صمم وطور ديكور مكتب يعزز من أداء الموظفين ويخلق بيئة عمل ملهمة ومريحة.',
        //     ),
      ],
    ),
    Consultant(
      name: 'مكتب التخطيط العمراني المتقدم',
      specialty: 'تخطيط المناطق الحضرية',
      description:
          'مكتب استشاري متخصص في تخطيط وتطوير المناطق الحضرية بأساليب حديثة ومستدامة.',
      imagePath: 'assets/img/consultans4.jpeg',
      previousProjects: [
        PreviousProject(
          projectName: 'تطوير حي سكني',
          duration: '2017 - 2019',
          image: 'assets/img/Slider2.jpg',
          details:
              'صمم ونفذ تطويرًا لحي سكني يوفر بيئة متكاملة للمقيمين بالمرافق والخدمات.',
        ),
        PreviousProject(
          projectName: 'تخطيط منطقة تجارية',
          duration: '2018 - 2020',
          image: 'assets/img/7.jpg',
          details:
              'قاد فريق التصميم لتخطيط منطقة تجارية تجمع بين الأعمال والترفيه والخدمات.',
        ),
        // PreviousProject(
        //   projectName: 'إعادة تأهيل مركز حضري',
        //   duration: '2020 - 2022',
        //    image: 'assets/images/Icon awesome-home.png',
        //   details: 'راقب عملية إعادة تأهيل مركز حضري لتحسين البنية التحتية والخدمات العامة.',
        // ),
      ],
    ),
    Consultant(
      name: 'مكتب تقنيات البناء المتطورة',
      specialty: 'تطوير وتحسين تقنيات البناء',
      description:
          'مكتب استشاري متخصص في تطوير وتحسين تقنيات البناء واستخدام المواد المبتكرة.',
      imagePath: 'assets/img/consultans5.jpeg',
      previousProjects: [
        PreviousProject(
          projectName: 'تطوير تقنيات البناء الحديثة',
          duration: '2019 - 2021',
          image: 'assets/img/Slider1.jpg',
          details:
              'قاد فريق البحث والتطوير لتحسين تقنيات البناء الحديثة وتطبيقها في المشاريع.',
        ),
        //   PreviousProject(
        //     projectName: 'استخدام مواد بناء مبتكرة',
        //     duration: '2020 - 2022',
        // image: 'assets/images/Icon awesome-home.png',
        //     details: 'استكشف استخدام مواد بناء مبتكرة لتعزيز الأداء والاستدامة في المشاريع الإنشائية.',
        //   ),
        PreviousProject(
          projectName: 'تحسين جودة التشييد',
          duration: '2018 - 2020',
          image: 'assets/img/welcome.jpeg',
          details:
              'نفذ برامج لتحسين جودة التشييد وضمان الامتثال لأعلى معايير الجودة والأمان.',
        ),
      ],
    ),
    Consultant(
      name: 'مكتب تصميم الحدائق الطبيعية',
      specialty: 'تصميم الحدائق والمناظر الطبيعية',
      description:
          'مكتب استشاري متخصص في تصميم وتنفيذ الحدائق والمناظر الطبيعية بأساليب إبداعية ومبتكرة.',
      imagePath: 'assets/img/consultans6.jpeg',
      previousProjects: [
        PreviousProject(
          projectName: 'تصميم حديقة خاصة',
          duration: '2019 - 2020',
          image: 'assets/img/Slider3.jpg',
          details:
              'صمم وأنشأ حديقة خاصة لمنزل يجمع بين الجمال الطبيعي والوظيفية العملية.',
        ),
        // PreviousProject(
        //   projectName: 'إعادة تأهيل منتزه عام',
        //   duration: '2020 - 2021',
        //   image: 'assets/images/Icon awesome-home.png',
        //   details: 'أدار عملية إعادة تأهيل منتزه عام لتحسين تجربة الزوار وتعزيز البيئة الطبيعية.',
        // ),
        PreviousProject(
          projectName: 'تصميم حديقة مدينية',
          duration: '2018 - 2022',
          image: 'assets/img/6.jpg',
          details:
              'صمم ونفذ حديقة مدينية توفر مساحات خضراء للمجتمع وتعزز جودة الحياة في المدينة.',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: const Text('المكاتب الاستشارية',style: TextStyle(color: Colors.white),),
         
        ),
        body: ListView.builder(
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
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(consultingOffices[index].imagePath),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            consultingOffices[index].name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            consultingOffices[index].specialty,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
