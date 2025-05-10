import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/services/api_services.dart';
import 'package:one_box/core/services/getit_service.dart';
import 'package:one_box/generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServiceLocator();
  ApiService.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.roter,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
    );
  }
}

//******add product */

// class ProductFormScreen extends StatefulWidget {
//   @override
//   _ProductFormScreenState createState() => _ProductFormScreenState();
// }

// class _ProductFormScreenState extends State<ProductFormScreen> {
//   String? _selectedCategory;
//   String? _selectedSubCategory;
//   String? _selectedState;
//   String? _selectedQuantity;
//   String? _selectedCountry;
//   String? _selectedRegion;
//   String? _selectedCity;
//   String _priceType = 'fixed';

//   final TextEditingController _productNameController = TextEditingController();
//   final TextEditingController _skuController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//   final TextEditingController _returnPolicyController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue[100],
//         elevation: 0,
//         title: Row(
//           children: [
//             Expanded(
//               child: TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.search),
//                   suffixIcon: Icon(Icons.camera_alt),
//                   hintText: 'بحث',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 10),
//             Text(
//               'One Box',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Stepper Tabs
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     color: Colors.blue[200],
//                     padding: EdgeInsets.symmetric(vertical: 8),
//                     child: Center(
//                         child: Text('الخطوة 1',
//                             style: TextStyle(color: Colors.white))),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.blue[50],
//                     padding: EdgeInsets.symmetric(vertical: 8),
//                     child: Center(child: Text('الخطوة 2')),
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.blue[50],
//                     padding: EdgeInsets.symmetric(vertical: 8),
//                     child: Center(child: Text('الخطوة 3')),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),

//             // Price Type
//             Row(
//               //  String _priceType = 'fixed';
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Radio<String>(
//                   value: 'fixed',
//                   groupValue: _priceType,
//                   onChanged: (value) => setState(() => _priceType = value!),
//                 ),
//                 Text('سعر ثابت'),
//                 Radio<String>(
//                   value: 'negotiable',
//                   groupValue: _priceType,
//                   onChanged: (value) => setState(() => _priceType = value!),
//                 ),
//                 Text('مراد'),
//               ],
//             ),

//             // Product Name
//             TextFormField(
//               controller: _productNameController,
//               decoration: InputDecoration(
//                 labelText: 'اسم المنتج',
//                 hintText: 'أدخل الاسم',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Category and Subcategory
//             Row(
//               children: [
//                 Expanded(
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedCategory,
//                     items: ['فئة 1', 'فئة 2']
//                         .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                         .toList(),
//                     onChanged: (value) => setState(() {
//                       _selectedCategory = value;
//                       log(_selectedCategory.toString());
//                     }),
//                     decoration: InputDecoration(
//                         labelText: 'الفئة', border: OutlineInputBorder()),
//                   ),
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedSubCategory,
//                     items: ['فرعية 1', 'فرعية 2']
//                         .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                         .toList(),
//                     onChanged: (value) =>
//                         setState(() => _selectedSubCategory = value),
//                     decoration: InputDecoration(
//                         labelText: 'الفئة الثانوية',
//                         border: OutlineInputBorder()),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),

//             // Product State and Quantity
//             Row(
//               children: [
//                 Expanded(
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedState,
//                     items: ['جديد', 'مستعمل']
//                         .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                         .toList(),
//                     onChanged: (value) =>
//                         setState(() => _selectedState = value),
//                     decoration: InputDecoration(
//                         labelText: 'حالة المنتج', border: OutlineInputBorder()),
//                   ),
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedQuantity,
//                     items: ['1', '2', '3']
//                         .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                         .toList(),
//                     onChanged: (value) =>
//                         setState(() => _selectedQuantity = value),
//                     decoration: InputDecoration(
//                         labelText: 'الكمية', border: OutlineInputBorder()),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),

//             // Country, Region, City
//             DropdownButtonFormField<String>(
//               value: _selectedCountry,
//               items: ['الدولة 1', 'الدولة 2']
//                   .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                   .toList(),
//               onChanged: (value) => setState(() => _selectedCountry = value),
//               decoration: InputDecoration(
//                   labelText: 'الدولة', border: OutlineInputBorder()),
//             ),
//             SizedBox(height: 16),

//             Row(
//               children: [
//                 Expanded(
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedRegion,
//                     items: ['المنطقة 1', 'المنطقة 2']
//                         .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                         .toList(),
//                     onChanged: (value) =>
//                         setState(() => _selectedRegion = value),
//                     decoration: InputDecoration(
//                         labelText: 'المكان / المنطقة',
//                         border: OutlineInputBorder()),
//                   ),
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: DropdownButtonFormField<String>(
//                     value: _selectedCity,
//                     items: ['المدينة 1', 'المدينة 2']
//                         .map((e) => DropdownMenuItem(child: Text(e), value: e))
//                         .toList(),
//                     onChanged: (value) => setState(() => _selectedCity = value),
//                     decoration: InputDecoration(
//                         labelText: 'المدينة', border: OutlineInputBorder()),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),

//             // SKU and Description
//             TextFormField(
//               controller: _skuController,
//               decoration: InputDecoration(
//                 labelText: 'SKU منتج',
//                 hintText: 'مثال: 12345',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),

//             TextFormField(
//               controller: _descriptionController,
//               maxLines: 3,
//               decoration: InputDecoration(
//                 labelText: 'الوصف',
//                 hintText: 'أدخل الوصف',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Upload Section
//             Text('الصورة الرئيسية *'),
//             SizedBox(height: 8),
//             Container(
//               height: 100,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Center(
//                 child: Text('اسحب وأسقط أو اضغط لإضافة'),
//               ),
//             ),
//             SizedBox(height: 16),

//             ElevatedButton(
//               onPressed: () {},
//               child: Text('الخطوة التالية'),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
//           BottomNavigationBarItem(icon: Icon(Icons.gavel), label: 'مزاداتي'),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'أضف منتج'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart), label: 'مشترياتي'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الحساب'),
//         ],
//       ),
//     );
//   }
// }
