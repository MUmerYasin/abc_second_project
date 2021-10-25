//

import 'dart:ui';

import 'package:flutter/material.dart';

import 'check_box_name_strings.dart';
import 'drop_down_menu_strings.dart';

final List<String> customerTypeDropDownList = [
  wholesalerString,
  retailerString
];

final List<String> customerStateDropDownList = [
  northCarolinaString,
  californiaString,
  washingtonString,
  texasString,
  hawaiiString,
  AlaskaString,
  FloridaString
];

/////////-------------------------------------

// final List<String> imgListHomePage = [
//   imagePathProductImage1,
// ];

/// Cart Screen

// /// products images
// const List<String> imgListProductsImage = [
//   imagePathProductImage1,
//   imagePathProductImage2,
//   imagePathProductImage3,
//   imagePathProductImage4,
//   imagePathProductImage5,
//   imagePathProductImage6,
//   imagePathProductImage7
// ];
//
// /// Price Discount
// final List<double> listOfDiscountProductsPrice = [
//   aBC_DiscountPrice,
//   aBC_DiscountPrice1,
//   aBC_DiscountPrice2,
//   aBC_DiscountPrice3,
//   aBC_DiscountPrice4,
//   aBC_DiscountPrice5,
//   aBC_DiscountPrice6,
// ];
//
// /// Price Original
// final List<double> listOfOriginalProductsPrice = [
//   aBC_OriginalPrice,
//   aBC_OriginalPrice1,
//   aBC_OriginalPrice2,
//   aBC_OriginalPrice3,
//   aBC_OriginalPrice4,
//   aBC_OriginalPrice5,
//   aBC_OriginalPrice6,
// ];
//
// /// Product name
// final List<String> listProductName = [
//   aBC_StringWomanTShirt,
//   aBC_StringWomanTShirt,
//   aBC_StringManTShirt,
//   aBC_StringWomanTShirt,
//   aBC_StringManTShirt,
//   aBC_StringWomanTShirt,
//   aBC_StringWomanTShirt,
// ];
//
// /// Sub title
// final List<String> listProductSubTitle = [
//   aBC_StringLottoLTD,
//   aBC_StringBata,
//   aBC_StringLottoLTD,
//   aBC_StringPlusPoint,
//   aBC_StringLottoLTD,
//   aBC_StringBata,
//   aBC_StringPlusPoint
// ];
//
// /// Home Page Categories List View Builder
//
// ///First Color of linear Gradient on Container
// final List<Color> customCategoriesFirstColors = [
//   abc_CategoriesListViewLightBlue,
//   abc_CategoriesListViewRed,
//   abc_CategoriesListViewDarkGreen,
//   pinkLinearGradientColors,
//   blueLinearGradientColors,
//   yellowLinearGradientColors,
//   purpleLinearGradientColors,
//   orangeLinearGradientColors
// ];
//
// ///Second Color of linear Gradient on Container
// final List<Color> customCategoriesSecondColors = [
//   abc_CategoriesListViewBlue,
//   abc_CategoriesListViewDarkRed,
//   abc_CategoriesListViewGreen,
//   pinkLightLinearGradientColors,
//   blueLightLinearGradientColors,
//   yellowLightLinearGradientColors,
//   purpleLightLinearGradientColors,
//   orangeLightLinearGradientColors
// ];
//
// /// Images Path
// final List<String> imgListCategories = [
//   imagePathPngImage1,
//   imagePathPngImage2,
//   imagePathPngImage3,
//   imagePathJewelery,
//   imagePathBeautyProducts,
//   imagePathGroceries,
//   imagePathElectronicProductFirst,
//   imagePathElectronicProductTwo,
// ];
//
// /// Names
//
// final List<String> categoriesNames = [
//   aBC_ListViewHeadingStringMale,
//   aBC_ListViewHeadingStringFemale,
//   aBC_ListViewHeadingStringKids,
//   aBC_ListViewHeadingStringJewelery,
//   aBC_ListViewHeadingStringBeauty,
//   aBC_ListViewHeadingStringGroceries,
//   aBC_ListViewHeadingStringElectronics,
//   aBC_ListViewHeadingStringHomeAppliances,
// ];
//
// /// Profile Screen
// /// Gender
//
// final List<String> genderType = [
//   aBC_StringMale,
//   aBC_StringFemale,
//   aBC_StringOthers
// ];

/// Product Size
List<String> singleProductSize = ["S", "M", "L", "XL", "XXL"];

///singleProductColors
List<Color> singleProductColors = [
  Colors.black,
  Colors.purple,
  Colors.orange.shade200,
  Colors.blueGrey,
  Colors.red,
  Colors.green,
  Colors.amber,
];

/// Certificate of Exemption Screen

const List<String> typeOfBusinessList = [
  accommodationAndFoodServicesString,
  agriculturalForestryFishingAndHuntingString,
  constructionString,
  FinanceAndInsuranceString,
  informationPublishingAndCommunicationsString,
  manufacturingString,
  miningString,
  realEstateString,
  rentalAndLeasingString,
  retailTradeString,
  transportationAndWarehousingString,
  utilitiesString,
  wholesaleTradeString,
  businessServicesString,
  professionalServicesString,
  educationAndHealthCareServicesString,
  nonProfitOrganizationString,
  governmentString,
  notABusinessString
];

const List<String> reasonForExemptionList = [
  federalGovernmentDepartmentString,
  stateOrLocalGovernmentNameString,
  tribalGovernmentNameString,
  foreignDiplomatString,
  agriculturalProductionString,
  industrialProductionManufacturingString,
  directPayPermitString,
  directMailString,
  resaleString,
  otherExplainString
];

List<bool> typeOfBusinessCheckList = [
  check0,
  check1,
  check2,
  check3,
  check4,
  check5,
  check6,
  check7,
  check8,
  check9,
  check10,
  check11,
  check12,
  check13,
  check14,
  check15,
  check16,
  check17,
  check18
];

List<bool> reasonForExemptionCheckList = [
  checkBoxWithTextField0,
  checkBoxWithTextField1,
  checkBoxWithTextField2,
  checkBoxWithTextField3,
  checkBoxWithTextField4,
  checkBoxWithTextField5,
  checkBoxWithTextField6,
  checkBoxWithTextField7,
  checkBoxWithTextField8,
  checkBoxWithTextField9,
  checkBoxWithTextField10,
];

List<String> allStateCodeList = [
  "AR*",
  'IA',
  'IN',
  'KS',
  'KY',
  'MI',
  'MN',
  'NC',
  'ND',
  'NE',
  'NJ',
  'NV',
  'OH',
  'RI',
  'OK',
  'SD',
  'TN*',
  'UT',
  'VT',
  'WV',
  'WY',
];
