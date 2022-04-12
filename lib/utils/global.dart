import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FileResources {
  static const FLAGS_PATH = 'assets/icons/flags/';
}

class FontResources {
/*fonts*/
  static const fontRegular = 'Regular';
  static const fontMedium = 'Medium';
  static const fontSemiBold = 'Semibold';
  static const fontBold = 'Bold';

/* font sizes*/
  static const textSizeSmall = 12.0; //
  static const textSizeSMedium = 14.0;
  static const textSizeMedium = 16.0;
  static const textSizeLargeMedium = 18.0; //
  static const textSizeNormal = 21.0; //
  static const textSizeLarge = 25.0;
  static const textSizeXLarge = 28.0;
  static const textSizeXXLarge = 30.0;
  static const textSizeBig = 50.0;

  static const spacing_control_half = 2.0;
  static const spacing_control = 4.0;
  static const spacing_standard = 8.0;
  static const spacing_middle = 10.0; //
  static const spacing_middle_new = 17.0; //
  static const spacing_standard_new = 20.0; //
  static const spacing_large = 25.0; //
  static const spacing_xlarge = 32.0;
  static const spacing_xxLarge = 50.0; //
  static const spacing_xxxLarge = 70.0; //

  static const circular_border = 10.0; //

}

class EdgeResources {
  static EdgeInsets EDGE_MIDDLE_NEW = EdgeInsets.symmetric(
      horizontal: FontResources.spacing_middle_new.w,
      vertical: FontResources.spacing_middle_new.h);

  static EdgeInsets EDGE_STANDARD_NEW = EdgeInsets.symmetric(
      horizontal: FontResources.spacing_standard_new.w,
      vertical: FontResources.spacing_standard_new.h);
  static EdgeInsets EDGE_LARGE = EdgeInsets.symmetric(
      horizontal: FontResources.spacing_large.w,
      vertical: FontResources.spacing_large.h);
  static EdgeInsets EDGE_XLARGE = EdgeInsets.symmetric(
      horizontal: FontResources.spacing_xlarge.w,
      vertical: FontResources.spacing_xlarge.h);
}

class StyleResources {
  static TextStyle APP_BAR_TITLE_STYLE = const TextStyle(
    fontSize: FontResources.textSizeLargeMedium,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );

  static TextStyle HINT_TEXT_FONT_STYLE_INPUT = const TextStyle(
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    fontSize: FontResources.textSizeSmall,
    color: Color.fromRGBO(173, 181, 189, 1),
  );

  static TextStyle TITLE_STYLE = const TextStyle(
    fontSize: FontResources.textSizeLargeMedium,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );

  static TextStyle SUBTITLE_TITLE_STYLE = TextStyle(
    fontSize: FontResources.textSizeSmall,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(0.5),
    fontStyle: FontStyle.normal,
  );

  static TextStyle LABEL_TEXT_STYLE = TextStyle(
    fontSize: FontResources.textSizeSmall,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );

  static TextStyle VALUE_TEXT_STYLE = TextStyle(
    fontSize: FontResources.textSizeSMedium,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );

  static TextStyle HINT_TEXT_FONT_STYLE = TextStyle(
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: FontResources.textSizeSmall,
    color: Colors.white.withOpacity(0.5),
  );

  static OutlineInputBorder ROUNDED_EDIT_TEXT_BORDER = OutlineInputBorder(
    borderRadius: BorderRadius.circular(FontResources.circular_border),
    borderSide: const BorderSide(
      color: AppColors.t12_border_color,
    ),
  );

  static BoxShadow SEARCH_BOX_SHADOW = BoxShadow(
    color: Colors.white.withOpacity(0.25),
    blurRadius: 20,
    offset: Offset(0, 0),
  );

  static BoxDecoration BOX_DECORATION = BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),
    border: Border.all(color: AppColors.t12_border_color, width: 0),
  );

  static TextStyle EDIT_TEXT_FONT_STYLE = const TextStyle(
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 14,
  );

  static InputDecoration ROUNDED_EDIT_TEXT(String? hintText,
      {Icon? fieldIcon}) {
    return InputDecoration(
      disabledBorder: ROUNDED_EDIT_TEXT_BORDER,
      focusedBorder: ROUNDED_EDIT_TEXT_BORDER,
      enabledBorder: ROUNDED_EDIT_TEXT_BORDER,
      hintText: hintText,
      icon: fieldIcon,
      hintStyle: StyleResources.HINT_TEXT_FONT_STYLE_INPUT,
      filled: true,
      isDense: false,
      contentPadding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
    );
  }
}

class AppColors {
  static const t12_primary_color = Color(0xFF3d87ff);
  static const t12_success = Color(0xFF36d592);
  static const t12_error = Color(0xFFF32323);
  static const t12_text_color_primary = Color(0xFF1e253a);
  static const t12_text_secondary = Color(0xFF838591);
  static const t12_edittext_background = Color(0xFFfafafa);
  static const t12_cat1 = Color(0xFF366cfd);
  static const t12_cat2 = Color(0xFFff7d34);
  static const t12_cat3 = Color(0xFF35c88e);
  static const t12_cat4 = Color(0xFFf32323);
  static const t12_colors = [t12_cat1, t12_cat2, t12_cat3, t12_cat4];
  static const t12_gradient_colors = [
    [Color(0xFF7deaa7), Color(0xff57ca8f), Color(0xff189f6b)],
    [Color(0xFF79caff), Color(0xff5b9afb), Color(0xff3155cf)],
    [Color(0xFFFeaa7b), Color(0xfffb965e), Color(0xfff5762f)]
  ];
  static const BLUE_GRADIENT = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff396afc), Color(0xff2948ff)],
  );
  static const WHITE_GRADIENT = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.white, Color(0x7fffffff)],
  );

  static const t12_gradient_appbar_color = [
    Color.fromRGBO(205, 205, 205, 0.5),
    Color.fromRGBO(205, 205, 205, 0.2),
  ];

  static const t12_gradient_search_color = [Colors.white, Color(0x7fffffff)];

  static const t12_border_color = Color.fromRGBO(205, 205, 205, 0.2);

  static const t12_gradient_yellow_color = [
    Color.fromRGBO(252, 194, 1, 1),
    Color.fromRGBO(198, 147, 32, 1),
  ];
}

class StringResources {
  static const WELCOME_LABEL = 'welcome';
  static const SUB_WELCOME = 'sub_welcome';
  static const DEMAND_LICENCE = 'demand_licence';
  static const OR = 'or';
  static const DEMO_APP = 'try_app';
  static const CODE = 'code';
  static const USER = 'user';
  static const PASSWORD = 'password';
  static const ETABLISSMENT = 'etablissement';
  static const EMAIL = 'email';
  static const PHONE = 'telephone';
  static const INVALID_INPUT = 'invalid';
  static const ENVOYER = 'envoyer';
  static const LOGIN = 'login';
  static const RETRY = 'retry';
  static const VALIDATE = 'validate';
  static const INTERNAL_ERROR = 'internal_err';
  static const SEND_REQUEST = 'sent_request';
  static const WAIT_LICENCE = 'wait_for_licence_answer';
  static const LICENCE_EXPIRE = 'licence_expire';
  static const CONTACT_PROVIDER = 'contactez_fournisseur';
  static const CHANGE_BASE_CONFIG = 'change_base_config';
  static const LANGUE = 'langue';
  static const LOADING = 'chargement...';
  static const NO_INTERNET = 'no_connection';
  static const VERIFY_CONNEC = 'verify_connection';
  static const FAILED_SEND = 'error_sending_request';
  static const VERIFY_INFO = 'verify_information';
  static const INSERT = "remplir_information";
  static const FAILED = 'failed';
  static const ENTER_USERNAME = 'enter_username';
  static const ENTER_ETABLISSEMENT = 'enter_établissement';
  static const ENTER_PASSWORD = 'enter_pass';
  static const ENTER_VALID_EMAIL = 'enter_valid_email';
  static const ENTER_VALID_NUMBER = 'enter_valid_phone_number';
  static const LOGOUT = 'logout';
  static const CHANGE_THEME = "change_theme";
  static const CHANGE_LANG = 'change_language';
  static const ABOUT_US = 'about_us';
  static const VISIT_US = 'visit_us';
  static const ACCEUIL = 'acceuil';
  static const DELIVERY_NOTES = 'delivery_notes';
  static const RETURN_VOUCHERS = 'return_vouchers';
  static const PAYEMENTS = 'payments';
  static const CUSTOMERS = 'customers';
  static const PRODUCTS = 'products';
  static const CIRCUIT = 'circuit';
  static const SYNCHRONIZE = 'synchronize';
  static const CLOTURE_SESSION = 'cloture_session';
  static const INFO = 'info';
  static const PURCHASE = 'purchase';
  static const INVENTORY = 'inventory';
  static const TRANSFER_VOUCHER = 'transfer_voucher';
  static const DEPARTMENT_TICKET = 'department_ticket';
  static const ITEM_VIEW = 'item_view';
  static const ITEM = 'item';
  static const STATION = 'station';
  static const SESSION = 'session';
  static const EXERCICE = 'exercice';
  static const REQUIRED_FIELD = 'REQUIRED_FIELD';
  static const CURRENCIE = 'currencie';
  static const FIRT_NAME ='first_Name';
  static const LAST_NAME = 'last_Name';
  static const CONFIRM_PASSWORD='confirm_Password';
}
