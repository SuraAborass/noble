import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar_AR': {
          ////////////////                  Splash Screen
          "noble": "Noble",
          "real_estate_service": "Realestate Service",

          ///////////////                    Login Screen
          "login": "تسجيل الدخول",
          "enter_your_phone_number": "قم بإدخال رقم هاتفك",
          "send_code": "إرسال الرمز",
          "skip": "تخطي",
          "you_can_create_account":
              'سيمكنك إنشاء الحساب من الاستفادة\nمن جميع خدمات التطبيق',

          //////////////                      Otp Check Screen
          "we_send_code":
              "قمنا بإرسال رمز إلى هاتفك لتتمكن من تأكيد حسابك\nقم بإدخاله في الخانات في الأسفل حال وصوله",
          "enter_the_code": "قم بإدخال الرمز",
          "re_sent_code": "إعادة إرسال الرمز",
          "confirm": "تأكيد",
          "verification": "التحقق",

          //////////////                      Home Page
          "noble_realstate": "عقارات نوبل",
          "search_hint": "ابحث في نوبل, عقارات, مكاتب عقارية, مدينة",
          "last_story": "آخر القصص",
          "show_all": "عرض الكل",
          "real_estate_ofices": "المكاتب العقارية",
          "top_real_estate_announcements": "أبرز الإعلانات العقارية",
          "sell": "بيع",

          //////////////                      office screen
          "real_state": "عقار",
          "followers": "متابعين",
          "address": "العنوان",
          "damascus_salhiya": "دمشق, الصالحية",
          "last_properties": "آخر الإعلانات العقارية",
          "villa_for_sale": "فيلا للبيع",

          /////////////                   Drawer
          "home": "الصفحة الرئيسية",
          "language": "اللغة",
          "createnew": "إنشاء جديد",
          "ads": "الإعلانات",
          "realestate": "عقارات",
          "about": "حول",
          "logout": "تسجيل الخروج",

          /////////////                   Notifications
          "search_in_notification": "ابحث في الإشعارات",
          "notifications": "الإشعارات",
          "new_watch": "حاز إعلانك على مشاهدة جديدة",
          "now": "الآن",
          "ten_min": "منذ 10 دقائق",
          "one_hour": "منذ ساعة",
          "tow_hour": "منذ ساعتين",

          ////////////                      Property Screen
          "buy_the_realstate": "شراء العقار",
          "villa_for_sale_in_damascus": "فيلا للبيع في دمشق",
          "realstate_specifications": "مواصفات العقار",
          "rooms": "غرف",
          "bath": "حمام",
          "about_realstate": "وصف العقار",
          "hint_realstate":
              "هنا نكتب مواصفات العقار أو نبذة تعريفيه عنه\nوعن مكوناته وموقعه",
          "east": "شرقي",
          "west": "غربي",
          "north": "شمالي",
          "south": "جنوبي",
          "sham_office": "مكتب الشام",
          "show_proclaim": "عارض الإعلان",

          ///////////                       On Boarding Screen
          "the_home": "الرئيسية",
          "the_favorite": "المفضلة",
          "the_notification": "الإشعارات",
          "the_more": "المزيد",

          ///////////             HighLights Screen
          "search_in_highlights": "ابحث عن أبرز الإعلانات",
          "highlights": "أبرز الإعلانات",

          ////////////////// Auth
          "welcomeyouare": "شكراً لإنشاء حسابك في نوبل",
          "sorryerror": "هناك خطأ ما , تأكد من اتصالك بالإنترنت",
          "wrongotp": "الرقم المدخل خاطئ , تأكد من الرسالة",
          "phonecantbeempty": "الرجاء إدخال رقم الهاتف",
          "enter10digits": "الرجاء إدخال رقم مكون من 10 خانات",
          "sryiannumbervalidation": "يجب أن يبدأ الرقم بـ 09",

          ////////////////// Profie
          "profile": "الملف الشخصي",
          "name": "الإسم ",
          "mobilenumber": "رقم الموبايل",
          "passowrd": "كلمة المرور",
          "keepitempty": "أبقها فارغة لتجنب التعديل",
          "editprofiledata": "تعديل بيانات الحساب",
          "editng": "جار التعديل ...",

          //Advertisings
          "spec": "المواصفات",
          "price": "السعر",
          "contactwith": "تواصل مع المعلن",

          //add Property
          "addnewproperty": "إنشاء إعلان",
          "newrealestate": "إنشاء إعلان عقاري",
          "addimages": "إضافة صور للإعلان",
          "title": "نص إعلاني",
          "titlehint": "منزل للبيع في المالكي",
          "p_type": "نمط الإعلان",
          "p_options": " نوع الإعلان",
          "p_city": " المدينة",
          "p_space": "المساحة",
          "p_place": "المنطقة",
          "p_adress": "العنوان",
          "p_direction": "الاتجاه",
          "p_cladding": "الاكساء",
          "p_mobnumber": "رقم للتواصل",
          "p_mobnumber_hint": "يساعد رقم التواصل في سرعة تواصل العملاء معك",
          "p_rooms": "عدد الغرف",
          "p_salons": "عدد الصالونات",
          "p_baths": "عدد الحمامات",
          "p_floor": "الطابق",
          "p_floors": "الطوابق",
          "mesaad": "مصعد",
          "moaldeh": "مولدة",
          "terras": "تراس",
          "baranda": "شرفة",
          "pool": "بركة سباحة",
          "mokaiif": "مكيف",
          "saona": "ساونا",
          "carage": "كراج",
          "shofag": "شوفاج",
          "jakoozy": "جاكوزي",
          "garden": "حديقة",
          "desc": "الوصف",
          "submitforreview": "إرسال للتدقيق",

          ///Fixes
          "latestproperties": "آخر الإعلانات العقارية",
          "searchresult": "نتائج البحث",
          "favorites": "المفضلة",
          "aboutus": "عن التطبيق",
          "aboutdesc":
              "هو تطبيق يتيح للمستخدمين البحث و التواصل مع أصحاب العقارات و المكاتب العقارية في سبيل شراء عقارهم المستقبلي , كما يتيح للمكاتب إضافة إعلاناتهم العقارية لتصل لآلاف المستخدمين داخل و خارج أراضي الجمهورية العربية السورية"
        },
        ////////////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////

        'en_US': {
          ////////////////                  Splash Screen
          "noble": "Noble",
          "real_estate_service": "Real Estate Service",

          ///////////////                    Login Screen
          "login": "Login",
          "enter_your_phone_number": "Enter your phone number",
          "send_code": "Send code",
          "skip": "Skip",
          "you_can_create_account":
              'you can create an account to handle\n with app services',

          //////////////                      Otp Check Screen
          "we_send_code":
              "We've Sent 6 Digits Code in SMS , Enter it Below To Confirm Your Login",
          "enter_the_code": "Enter code number",
          "re_sent_code": "Re-sent the code",
          "confirm": "Confirm",
          "verification": "Verification",

          //////////////                      Home Page
          "noble_realstate": "Noble Real State",
          "search_hint": "Search in noble, house, office, city"
              "Search, realstate ofices, city",
          "last_story": "Lastest Stories",
          "show_all": "Show All",
          "real_estate_ofices": "Nearby Offices",
          "top_real_estate_announcements": "Highlights",
          "sell": "Sell",

          //////////////                      office screen
          "real_state": "Real State",
          "followers": "Followers",
          "address": "Address",
          "damascus_salhiya": "Damascus, Salhiya",
          "last_properties": "Latest Properties",
          "villa_for_sale": "Villa for sale",

          /////////////                   Drawer
          "home": "Home",
          "language": "Language",
          "theme": "Theme",
          "createnew": "Create New",
          "ads": "Advertisings",
          "realestate": "Realestate",
          "about": "About",
          "logout": "Logout",

          /////////////                   Notifications
          "search_in_notification": "Search in notifications",
          "notifications": "Notifications",
          "new_watch": "your proclaim has a new watch",
          "now": "Now",
          "ten_min": "10 minute ago",
          "one_hour": "1 Hour ago",
          "tow_hour": "2 Hours ago",

          ////////////                      Property Screen
          "buy_the_realstate": "Buy RealState",
          "villa_for_sale_in_damascus": "Villa for sale in Damascus",
          "realstate_specifications": "RealState Specifications",
          "rooms": "Rooms",
          "bath": "Bath",
          "about_realstate": "About RealState",
          "hint_realstate":
              "write about the real state and about\nhis specifications",
          "east": "East",
          "west": "West",
          "north": "North",
          "south": "South",
          "sham_office": "Sham Office",
          "show_proclaim": "Ad Viewer",

          ///////////                       On Boarding Screen
          "the_home": "Home",
          "the_favorite": "Favorite",
          "the_notification": "Notifications",
          "the_more": "More",

          ///////////             HighLights Screen
          "search_in_highlights": "Search in HighLights",
          "highlights": "HighLights",

          ////////////////// Auth
          "welcomeyouare": "Welcome, you are a noble member now",
          "sorryerror":
              "Sorry There Was an Error , Check Your Internet Connection",
          "wrongotp": "Wrong Otp, please enter the right number",
          "phonecantbeempty": "Phone Number Cannot Be Empty",
          "enter10digits": "Please Enter a 10 Digits Number",
          "sryiannumbervalidation": "Phone Number Must Start With 09",

          ////////////////// Profie
          "profile": "Profile",
          "name": "Name",
          "mobilenumber": "Mobile Number",
          "passowrd": "Password",
          "keepitempty": "Keep it Empty To Avoid Change",
          "editprofiledata": "Edit Profile Data",
          "editng": "Editing ...",

          //Advertisings
          "spec": "Spefications",
          "price": "Price",
          "contactwith": "Contact With Advertisor",

          //add Property
          "addnewproperty": "New Advertising",
          "newrealestate": "New Realestate Advertising",
          "addimages": "Upload Images",
          "title": "Title",
          "titlehint": "house for sale in damascus",
          "p_type": "Type",
          "p_options": "Purshase Option",
          "p_city": " City",
          "p_space": "Space",
          "p_place": "Place",
          "p_adress": "Adress",
          "p_direction": "Direction",
          "p_cladding": "Cladding",
          "p_mobnumber": "Mobile Number",
          "p_mobnumber_hint":
              "The contact number helps in the speed of customer contact with you",
          "p_rooms": "Rooms Count",
          "p_salons": "Salons",
          "p_baths": "Baths",
          "p_floor": "Floor",
          "p_floors": "Floors Count",
          "mesaad": "Elevator",
          "moaldeh": "Generator",
          "terras": "Terrace",
          "pool": "Pool",
          "mokaiif": "Conditioner",
          "saona": "Saona",
          "carage": "Garag",
          "shofag": "Shofag",
          "jakoozy": "Jacuzzi",
          "garden": "Garden",
          "desc": "Desctiption",
          "submitforreview": "Submit For Review",

          ///Fixes
          "latestproperties": "Latest Properties",
          "searchresult": "Search Result",
          "favorites": "Favorites",
          "aboutus": "About Noble",
          "aboutdesc":
              "It is an application that allows users to search and communicate with real estate owners and real estate offices in order to buy their future property. It also allows offices to add their real estate ads to reach thousands of users inside and outside the territory of the Syrian Arab Republic."
        }
      };
}
