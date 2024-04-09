
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Contractor/contractor_details_page.dart';
import 'package:flutter_application_1/Contractor/contractor_model.dart';


// تعريف الصفحة الرئيسية
class ContractorView extends StatelessWidget {
  // قائمة المقاولين
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
    Contractor(
      name: 'يوسف أحمد',
      specialty: 'بناء الفيلا والقصور',
      description: 'متخصص في بناء المساجد والمراكز الإسلامية.',
       imagePath: 'assets/img/Contractor3.jpg',
      steps: [
        'تخطيط الفيلا وتصميمها',
        'جمع التبرعات والتمويل',
        'بناء القصور والمرافق',
        'الديكور الداخلي والخارجي',
        'افتتاح الفيلا وتسليمه للجالية',
      ],
      // topWorkers: ['محمد حسين', 'أحمد يوسف', 'مصطفى علي'],
      paymentMethod: 'التقسيط بفوائد',
      discounts: 'خصم 15% للجمعيات الخيرية',
    ),
    // يمكنك إضافة المزيد من المقاولين هنا
   Contractor(
    name: 'عبد الهادي مسعد',
    specialty: 'صيانة الشقق',
    description: 'خبرة في صيانة وتجديد الشقق السكنية بأساليب حديثة ومتطورة.',
    imagePath: 'assets/img/Contractor4.jpg',
    steps: [
      'التقييم والفحص',
      'إعداد تقدير التكلفة',
      'تنفيذ الأعمال والإصلاحات',
      'التشطيب والدهانات',
      'التسليم للعميل',
    ],
    paymentMethod: 'الدفع النقدي',
    discounts: 'خصم 5% للعملاء الدائمين',
  ),
  Contractor(
    name: 'محمد سامي',
    specialty: 'تصميم الحدائق والملاعب',
    description: 'متخصص في تصميم وتنفيذ الحدائق الجميلة والمناظر الطبيعية.',
   imagePath: 'assets/img/Contractor5.jpg',
    steps: [
      'الاستشارة والتخطيط',
      'اختيار النباتات والزهور',
      'عمل التنسيقات والتصميمات',
      'زراعة الحدائق والعناية بالنباتات',
      'تسليم الحديقة الجاهزة',
    ],
    paymentMethod: 'التقسيط بدون فوائد',
    discounts: 'خصم 10% للعملاء الجدد',
  ),
  Contractor(
    name: ' جميل العدل',
    specialty: 'ديكور المنازل',
    description: 'فنان ديكور محترف يقدم أفضل الخدمات في تصميم وتنفيذ الديكور الداخلي والخارجي.',
   imagePath: 'assets/img/Contractor6.jpeg',
    steps: [
      'الاستشارة وتحليل الديكور',
      'تصميم الديكور واختيار الأثاث',
      'تنفيذ الديكور والتجهيزات',
      'تركيب الإضاءة والديكورات',
      'تسليم المشروع النهائي للعميل',
    ],
    paymentMethod: 'التقسيط بفوائد',
    discounts: 'خصم 15% للمشترين الجدد',
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
            title: const Text('قائمة المقاولين',style: TextStyle(color: Colors.white),),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemCount: contractors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // عند النقر على أحد المقاولين، يتم فتح صفحة تفاصيله
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContractorDetailsPage(
                      contractor: contractors[index],
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(contractors[index].imagePath),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      contractors[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      contractors[index].specialty,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// تعريف الصفحة لعرض تفاصيل المقاول



