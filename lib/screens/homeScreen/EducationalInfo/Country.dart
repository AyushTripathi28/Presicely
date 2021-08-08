// import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/rendering.dart';
// import 'package:easy_gradient_text/easy_gradient_text.dart';
//
//
// class Country extends StatefulWidget {
//   //const Country({Key? key}) : super(key: key);
//
//   @override
//   _CountryState createState() => _CountryState();
// }
//
// class _CountryState extends State<Country> {
//
//   String title='DropDown';
//   bool disabledropdown = true;
//   String OptionsVal;
//   List Options = [
//     'India','Dubai','Brazil','Canada','America'
//   ];
//   final India = {
//     "1": 'Dubai',
//     "2":'Brazil',
//     "3":'Canada',
//     "4":'America'
//   };
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(elevation: 0,
//         title: Text(
//           'Personal info',style: TextStyle(
//           letterSpacing: 2,
//           color: Color(0xffFFFFFF),
//           fontSize: 18,
//           fontWeight: FontWeight.w400,
//         ),
//         ),
//         backgroundColor: Color(0xff1E1E1E),
//       ),
//       body:Container(height: double.infinity,width: double.infinity,
//         color:Color(0xff1E1E1E),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             SingleChildScrollView(
//               child: Container(height: 641,width: 322,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     gradient: LinearGradient(
//                         begin: Alignment.topRight,
//                         end: Alignment.bottomLeft,
//                         stops: [
//                           100,100
//                         ],
//                         colors: [
//                           Color(0xff32383E),
//                           Color(0xff17191C)
//                         ]
//                     )
//                 ),
//                 child: Container(height: 613,width: 306,
//                   margin:EdgeInsets.fromLTRB(12,12,12,12),
//                   decoration: BoxDecoration(gradient: LinearGradient(
//                       begin: Alignment.bottomRight,
//                       end: Alignment.topLeft,
//
//                       colors: [
//                         Color(0xff32383E),
//                         Color(0xff17191C)
//                       ]
//                   ),
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left:28,top:5),
//                         child: SizedBox(height: 56,width: 124,
//                           child: Center(
//                             child: GradientText(text: 'information',
//                                 style: TextStyle(
//                                     fontSize: 18,letterSpacing: 2,
//                                     fontWeight: FontWeight.w400
//                                 ), colors: [
//                                   Color(0xff4F5863),
//                                   Color(0xffFFFFFF)
//                                 ]),
//                           ),
//                         ),
//                       ),
//
//                       Padding(
//                         padding: const EdgeInsets.only(left:32,right: 32),
//                         child: SizedBox(height: 98,width: 258,
//                           child: Text('Top 5 Countries you want to study in',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 21,
//                                 color: Color(0xffFFFFFF)
//                             ),),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25,right:35),
//                         child: Container(height:43,width: 258,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),color: Colors.black
//                           ),
//                           child: Row(crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(top:13,left: 13),
//                                 child: Text('1.',style: TextStyle(
//                                     color: Color(0xffFFFFFF),fontWeight: FontWeight.w400,
//                                     fontSize: 16
//                                 ),),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left:20,top:6),
//                                 child: SizedBox(height: 30,width:180,
//                                   child: DropdownButton(underline: SizedBox(),
//                                     isExpanded:true,dropdownColor: Color(0xff000000),
//                                     icon: Icon(MdiIcons.chevronDownCircle,color: Color(0xff373737),),
//                                     iconEnabledColor: Color(0xff000000),
//                                     iconSize: 15,
//                                     hint: Text('select Options',style: TextStyle(
//                                         color:Color(0xffFFFFFF),
//                                         fontWeight: FontWeight.w700,
//                                         fontSize: 16
//                                     ),
//                                     ),
//                                     value: OptionsVal,
//                                     onChanged:(newValue) {
//                                       setState((
//                                           ) {
//                                         OptionsVal = newValue;
//                                         disabledropdown =false;
//                                       });
//                                     },
//                                     items:
//                                     Options.map((value) {
//
//                                       return DropdownMenuItem(
//                                           value: value,
//                                           child: Text(value,style: TextStyle(
//                                             color: Color(0xffFFFFFF),
//                                             fontSize:16,
//                                             fontWeight: FontWeight.w700,
//                                           ),)
//                                       );
//                                     }).toList(),disabledHint: Text('Disable',
//                                       style: TextStyle(
//                                           color: Colors.grey),),
//
//                                   ),
//                                 ),
//                               ),
//                               Column(
//                                 children: [
//
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25,right:35,top: 17),
//                         child: Container(height:43,width: 258,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),color: Colors.black
//                           ),
//                           child: Row(crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(top:13,left: 13),
//                                 child: Text('2.',style: TextStyle(
//                                     color: Color(0xffFFFFFF),fontWeight: FontWeight.w400,
//                                     fontSize: 16
//                                 ),),
//                               ),
//                               Column(
//
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left:20,top:6),
//                                 child: SizedBox(height: 30,width:180,
//                                   child: DropdownButton(underline: SizedBox(),
//                                     isExpanded:true,dropdownColor: Color(0xff000000),
//                                     icon: Icon(MdiIcons.chevronDownCircle,
//                                       color: Color(0xff373737),
//                                       size: 15,),
//                                     iconEnabledColor: Color(0xff000000),
//                                     hint: Text('select Options',style: TextStyle(
//                                         color:Color(0xffFFFFFF),
//                                         fontWeight: FontWeight.w700,
//                                         fontSize: 16
//                                     ),
//                                     ),
//                                     value:OptionsVal,
//                                     onChanged:disabledropdown? null:(newValue) {
//                                       setState((
//                                           ) {
//                                         OptionsVal = newValue;
//                                       });
//                                     },
//
//                                     items:
//                                     Options.map((value) {
//
//                                       return DropdownMenuItem(
//                                         value: value,
//                                         child: Text(value,style: TextStyle(
//                                           color: Color(0xffFFFFFF),
//                                           fontSize:16,
//                                           fontWeight: FontWeight.w700,
//                                         ),),
//                                       );
//                                     }).toList(),disabledHint: Text('Select an Option',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w700,fontSize: 16,
//                                           color: Color(0xff373737)),),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
