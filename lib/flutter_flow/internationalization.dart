import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'srvkgne3': {
      'en': 'Logout',
      'ar': '',
    },
    'h1ki1jkd': {
      'en': 'Home Page',
      'ar': '',
    },
    'y1dgawam': {
      'en': 'Transactions',
      'ar': '',
    },
    'a28lnol2': {
      'en': 'Inventories',
      'ar': '',
    },
    '9eugwgx5': {
      'en': 'Users',
      'ar': '',
    },
    '40g6jkmz': {
      'en': 'Complaints',
      'ar': '',
    },
    'pewexkp2': {
      'en': 'Orders Management',
      'ar': '',
    },
    'xao4fhh1': {
      'en': 'New User',
      'ar': '',
    },
    '977obot3': {
      'en': 'New Complaint',
      'ar': '',
    },
    'pq9rz1ox': {
      'en': 'New Transaction',
      'ar': '',
    },
    'iknr9tzn': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Home
  {
    '9rotjxcj': {
      'en': 'Analytics',
      'ar': '',
    },
    'xsb5fp8n': {
      'en': 'Reports',
      'ar': '',
    },
    'm5fhlix9': {
      'en': 'Add Menu',
      'ar': '',
    },
    'nbxk7iug': {
      'en': 'Setting',
      'ar': '',
    },
    '11mzc9oq': {
      'en': '1',
      'ar': '',
    },
    'px099aqo': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AddToMenu
  {
    'jntebaxr': {
      'en': 'Add Image',
      'ar': '',
    },
    'rogddsfn': {
      'en': 'Item Name',
      'ar': '',
    },
    'nemtgw55': {
      'en': 'Burgers and Sandwiches',
      'ar': '',
    },
    '5wfmzgrw': {
      'en': 'Chicken ',
      'ar': '',
    },
    'kvwc55te': {
      'en': 'French Fries and Sides',
      'ar': '',
    },
    'nx5nbbjf': {
      'en': 'Desserts ',
      'ar': '',
    },
    'i8dllll3': {
      'en': 'Beverages',
      'ar': '',
    },
    'm31mxio8': {
      'en': 'Category',
      'ar': '',
    },
    '5rzlocut': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'cc9wbeow': {
      'en': 'Beverages',
      'ar': '',
    },
    'nrpf55yu': {
      'en': 'Dew',
      'ar': '',
    },
    'a0s4lto9': {
      'en': 'Iced Tea',
      'ar': '',
    },
    'k8d5hs5l': {
      'en': 'Water',
      'ar': '',
    },
    '635dgnul': {
      'en': 'Lemonade',
      'ar': '',
    },
    '9qhpk5wz': {
      'en': 'Milkshakes',
      'ar': '',
    },
    'x64y9ymh': {
      'en': 'Description',
      'ar': '',
    },
    '2tfi75o2': {
      'en': '  Price',
      'ar': '',
    },
    '14xq9pvi': {
      'en': 'Discount',
      'ar': '',
    },
    '926ad028': {
      'en': 'Confirme',
      'ar': '',
    },
    's4ixeou3': {
      'en': 'Add To Menu',
      'ar': '',
    },
    '5jhvb38g': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Orders
  {
    'mb61a1hj': {
      'en': 'Orders',
      'ar': '',
    },
    'qnlcp8sz': {
      'en': 'Accept',
      'ar': '',
    },
    'azmhqon9': {
      'en': 'Reject',
      'ar': '',
    },
    'm7hfjlrd': {
      'en': 'Name ',
      'ar': '',
    },
    'pk5czq4s': {
      'en': 'Location',
      'ar': '',
    },
    'mkkvhp88': {
      'en': 'Order',
      'ar': '',
    },
    'e7m9ealy': {
      'en': '2 minutes ago',
      'ar': '',
    },
    'mjohfxrm': {
      'en': 'Accept',
      'ar': '',
    },
    'ww67nrfc': {
      'en': 'Reject',
      'ar': '',
    },
    'gh2qmh4f': {
      'en': 'Name ',
      'ar': '',
    },
    'gi7utaxi': {
      'en': 'Location',
      'ar': '',
    },
    'vh78q2dn': {
      'en': 'Order',
      'ar': '',
    },
    'cm1j0s0f': {
      'en': '2 minutes ago',
      'ar': '',
    },
    'b1o0x6qn': {
      'en': 'Accept',
      'ar': '',
    },
    'm1wng1ea': {
      'en': 'Reject',
      'ar': '',
    },
    '5aoh8nuh': {
      'en': 'Name ',
      'ar': '',
    },
    'najcf42f': {
      'en': 'Location',
      'ar': '',
    },
    '0nadbrdd': {
      'en': 'Order',
      'ar': '',
    },
    'jt7p4qb0': {
      'en': '2 minutes ago',
      'ar': '',
    },
    'ddc186xd': {
      'en': 'Accept',
      'ar': '',
    },
    'lcm9husy': {
      'en': 'Reject',
      'ar': '',
    },
    '4y78yip8': {
      'en': 'Name ',
      'ar': '',
    },
    'f8okui9n': {
      'en': 'Location',
      'ar': '',
    },
    'u8elvjew': {
      'en': 'Order',
      'ar': '',
    },
    'b6jes0jt': {
      'en': '2 minutes ago',
      'ar': '',
    },
    'fwdynxhx': {
      'en': 'Accept',
      'ar': '',
    },
    'nb9d09nt': {
      'en': 'Reject',
      'ar': '',
    },
    '5slvqmjq': {
      'en': 'Orders',
      'ar': '',
    },
  },
  // Profile
  {
    'zkm76v40': {
      'en': 'Andrea Davis',
      'ar': '',
    },
    'rlf91wvf': {
      'en': 'andrea@domainname.com',
      'ar': '',
    },
    'umy3ludb': {
      'en': 'Edit Profile',
      'ar': '',
    },
    'hyg6mokj': {
      'en': 'View Analytics',
      'ar': '',
    },
    'axcuio95': {
      'en': 'Reports',
      'ar': '',
    },
    '9x7yi9cb': {
      'en': 'Account Settings',
      'ar': '',
    },
    'zd7i28rg': {
      'en': 'Log Out',
      'ar': '',
    },
    'hkzl3iu0': {
      'en': 'Profile',
      'ar': '',
    },
  },
  // Analytics
  {
    'f031yt5g': {
      'en': 'Most Popular Items',
      'ar': '',
    },
    '3n504zie': {
      'en': 'Last 30 Days',
      'ar': '',
    },
    '8xu63j0c': {
      'en': 'Avg. Grade',
      'ar': '',
    },
    'z6v3ebt7': {
      'en': 'Sales Performance',
      'ar': '',
    },
    'dv1f57c5': {
      'en': 'Total Sales :',
      'ar': '',
    },
    'murggq3j': {
      'en': 'Daily ',
      'ar': '',
    },
    '285vskxe': {
      'en': 'Weekly ',
      'ar': '',
    },
    'uwrj0f51': {
      'en': 'Monthly ',
      'ar': '',
    },
    'hwr4bmdz': {
      'en': 'Orders :',
      'ar': '',
    },
    '8xdpj3mp': {
      'en': 'Daily ',
      'ar': '',
    },
    '7h0te50v': {
      'en': 'Weekly ',
      'ar': '',
    },
    'per0r23u': {
      'en': 'Monthly ',
      'ar': '',
    },
    'ksnnkzew': {
      'en': 'Analyics',
      'ar': '',
    },
    '6ihbyfrb': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Reports
  {
    '945qncu4': {
      'en': 'Reports',
      'ar': '',
    },
    'ex86m7kp': {
      'en': 'Customer Name',
      'ar': '',
    },
    'g0z1ouri': {
      'en':
          'The meal arrived not only later than expected but was also cold and poorly packaged, resulting in a less than satisfactory dining experience.',
      'ar': '',
    },
    'ip64p71t': {
      'en': 'Customer Name',
      'ar': '',
    },
    'yvndx5fm': {
      'en':
          'The meal arrived not only later than expected but was also cold and poorly packaged, resulting in a less than satisfactory dining experience.',
      'ar': '',
    },
    '5hd6prd5': {
      'en': 'Customer Name',
      'ar': '',
    },
    'i9vzl3cp': {
      'en':
          'The meal arrived not only later than expected but was also cold and poorly packaged, resulting in a less than satisfactory dining experience.',
      'ar': '',
    },
    'r3eoh58e': {
      'en': 'Home',
      'ar': '',
    },
  },
  // UpdateProfile
  {
    '5tf0fjsx': {
      'en': 'Your Name',
      'ar': '',
    },
    'hbhksbhi': {
      'en': 'Email',
      'ar': '',
    },
    '8jxchc2x': {
      'en': 'Password',
      'ar': '',
    },
    'wpu3bbjq': {
      'en': 'Phone Number',
      'ar': '',
    },
    'lkzjh5gt': {
      'en': 'Save Changes',
      'ar': '',
    },
    '4jnxhe5f': {
      'en': 'Update Profile',
      'ar': '',
    },
  },
  // OrderStatus
  {
    'v9ioux2c': {
      'en': 'Order Status',
      'ar': '',
    },
    '2a7ogl5r': {
      'en': 'Name',
      'ar': '',
    },
    'xsivcy63': {
      'en': 'Name',
      'ar': '',
    },
    'dlb6hjf7': {
      'en': 'order Process',
      'ar': '',
    },
    'uujlrm3p': {
      'en': 'Order Accepted',
      'ar': '',
    },
    'oyjysoeg': {
      'en':
          'You have accepted the order press the button when you about to finish preparing the order for finding driver.',
      'ar': '',
    },
    'a4a0iuxb': {
      'en': 'Order Processed',
      'ar': '',
    },
    '1iqp6z96': {
      'en':
          'After preparing the order press the button to find a driver to pick up the order.',
      'ar': '',
    },
    '4fj8xbal': {
      'en': 'Ready to pick up',
      'ar': '',
    },
    'kanx8g18': {
      'en':
          'The order ready to pick up, press the button when the driver pick up the order.',
      'ar': '',
    },
    '2nhcxzz8': {
      'en': 'The Order Completed',
      'ar': '',
    },
    'u7r3cos1': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Saved
  {
    '8kss6z2k': {
      'en': 'Saved',
      'ar': '',
    },
    'jwhxh9th': {
      'en': 'Home',
      'ar': '',
    },
  },
  // MainPage
  {
    't0rhavrv': {
      'en': 'Food Delivery',
      'ar': '',
    },
    'l0azvcf8': {
      'en': 'Select Location',
      'ar': '',
    },
    'u67ti4v3': {
      'en': 'Search for restaurants',
      'ar': '',
    },
    'q99xebgp': {
      'en': 'All restaurants',
      'ar': '',
    },
    '6h1nkkh0': {
      'en': 'Vouchers',
      'ar': '',
    },
    'iidpq03y': {
      'en': 'Reorder',
      'ar': '',
    },
    'ar20o134': {
      'en': 'View Profile',
      'ar': '',
    },
    'rap4zhv9': {
      'en': 'Log Out',
      'ar': '',
    },
    'p2hx8qsa': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Menu
  {
    'ovvaxweh': {
      'en': 'Back',
      'ar': '',
    },
    'uqlmpwbk': {
      'en': 'See Reviews',
      'ar': '',
    },
    'd8gas9j2': {
      'en': 'RM4.50',
      'ar': '',
    },
    'rf73ve6z': {
      'en': 'Home',
      'ar': '',
    },
  },
  // MealCustomization
  {
    'kn6e9pa2': {
      'en': 'Customization',
      'ar': '',
    },
    'i0f674y3': {
      'en': 'Optional',
      'ar': '',
    },
    'r3mdv3ht': {
      'en': 'e.g. no meat',
      'ar': '',
    },
    'w9yadl6b': {
      'en': 'Add to cart',
      'ar': '',
    },
    '2thdbcji': {
      'en': 'Back',
      'ar': '',
    },
    'pdskvwcq': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ViewCart
  {
    '9n9yxgtb': {
      'en': 'Delivery Time',
      'ar': '',
    },
    'h5xfg1ub': {
      'en': 'Food Name',
      'ar': '',
    },
    'ebgpclt4': {
      'en': 'Price',
      'ar': '',
    },
    'l92ek8az': {
      'en': 'Customization',
      'ar': '',
    },
    'qeukimzk': {
      'en': 'Hello World',
      'ar': '',
    },
    'bz8ly74n': {
      'en': '+ Add more items',
      'ar': '',
    },
    'opsr2ljn': {
      'en': 'Subtotal',
      'ar': '',
    },
    '69zsfcw5': {
      'en': 'Delivery Fee',
      'ar': '',
    },
    'xxva1crg': {
      'en': 'RM4.50',
      'ar': '',
    },
    '3kfy0a4l': {
      'en': 'Service Tax',
      'ar': '',
    },
    'g9cklmba': {
      'en': 'RM4.00',
      'ar': '',
    },
    'fx167v88': {
      'en': 'Discount',
      'ar': '',
    },
    'mp284tvz': {
      'en': 'Apply a voucher',
      'ar': '',
    },
    'jcdq9evn': {
      'en': 'Review payment and address',
      'ar': '',
    },
    '2kpi0x8r': {
      'en': 'Back',
      'ar': '',
    },
    'vln62gkr': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Payment
  {
    'pjwd8mtk': {
      'en': 'Payment Method',
      'ar': '',
    },
    'efzogp21': {
      'en': 'Cash on Delivery',
      'ar': '',
    },
    'vpwznen0': {
      'en': 'Cash on Delivery',
      'ar': '',
    },
    '21vtzjl6': {
      'en': 'Credit or Debit card',
      'ar': '',
    },
    'rtdxe1vx': {
      'en': 'Apple Pay',
      'ar': '',
    },
    'oew8cogz': {
      'en': 'Boost',
      'ar': '',
    },
    'ywgxk076': {
      'en': 'Online Banking',
      'ar': '',
    },
    'wdhgpq3d': {
      'en': 'Touch \'n Go eWallet',
      'ar': '',
    },
    'gig9xzcw': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '0inu9a81': {
      'en': 'Total',
      'ar': '',
    },
    'l7jzt0vg': {
      'en': 'Place Order',
      'ar': '',
    },
    'm8t9hp2a': {
      'en': 'Back',
      'ar': '',
    },
    'volma93m': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Reorder
  {
    '1i8gooxe': {
      'en': 'Past Orders',
      'ar': '',
    },
    'aaoi6tdn': {
      'en': 'Reorder',
      'ar': '',
    },
    'tceu6ykj': {
      'en': 'Back',
      'ar': '',
    },
    'hz4ziksr': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ManageAccount
  {
    '1l3mefwz': {
      'en': 'Name',
      'ar': '',
    },
    'pbnvo394': {
      'en': '',
      'ar': '',
    },
    'alyswgri': {
      'en': 'Email',
      'ar': '',
    },
    'uuyrxaew': {
      'en': 'Password',
      'ar': '',
    },
    'lgywklq4': {
      'en': 'Mobile Number',
      'ar': '',
    },
    '8vs6ug89': {
      'en': 'Address',
      'ar': '',
    },
    'jqe5a98x': {
      'en': 'Save changes',
      'ar': '',
    },
    'msc4d1pc': {
      'en': 'Back',
      'ar': '',
    },
    'n3k8xpk5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // message
  {
    's76bmr27': {
      'en': 'Randy Mcdonald',
      'ar': '',
    },
    'cirb72sb': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'ar': '',
    },
    'chtkhlpy': {
      'en': 'Mon. July 3rd - 4:12pm',
      'ar': '',
    },
    'yjg7dxgs': {
      'en': 'Randy Mcdonald',
      'ar': '',
    },
    'l23w0b8z': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'ar': '',
    },
    '8b9tudx3': {
      'en': 'Mon. July 3rd - 4:12pm',
      'ar': '',
    },
    'czrg0w5z': {
      'en': 'Randy Mcdonald',
      'ar': '',
    },
    'q7u5wpwm': {
      'en':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'ar': '',
    },
    'un4mu0xf': {
      'en': 'Mon. July 3rd - 4:12pm',
      'ar': '',
    },
    'sxgv69n6': {
      'en': 'My Messages',
      'ar': '',
    },
    'ullvb7k3': {
      'en': 'Chats',
      'ar': '',
    },
  },
  // UpdateMenu
  {
    'y7i6g2s8': {
      'en': 'Add Image',
      'ar': '',
    },
    'yzkaq1mb': {
      'en': 'Item Name',
      'ar': '',
    },
    'pun25bzo': {
      'en': 'Burgers and Sandwiches',
      'ar': '',
    },
    'mjcb1zhu': {
      'en': 'Chicken ',
      'ar': '',
    },
    '2h3rybai': {
      'en': 'French Fries and Sides',
      'ar': '',
    },
    'qxf8b4y4': {
      'en': 'Desserts ',
      'ar': '',
    },
    'q395qixu': {
      'en': 'Beverages',
      'ar': '',
    },
    'hdvr1sr8': {
      'en': 'Category',
      'ar': '',
    },
    'ufb9koae': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '61mnvijt': {
      'en': 'Beverages',
      'ar': '',
    },
    'm0d81uq1': {
      'en': 'Dew',
      'ar': '',
    },
    '7j6474h8': {
      'en': 'Iced Tea',
      'ar': '',
    },
    'nt5e7uun': {
      'en': 'Water',
      'ar': '',
    },
    'v4qvv6h3': {
      'en': 'Lemonade',
      'ar': '',
    },
    'weyssulf': {
      'en': 'Milkshakes',
      'ar': '',
    },
    'fvpvqyr6': {
      'en': 'Description',
      'ar': '',
    },
    'dv8n9p52': {
      'en': '  Price',
      'ar': '',
    },
    '0hmrlafg': {
      'en': 'Discount',
      'ar': '',
    },
    'kn6aw92o': {
      'en': 'Confirme',
      'ar': '',
    },
    'ecnqg2oh': {
      'en': 'Update Menu',
      'ar': '',
    },
    '3kzdpbg3': {
      'en': 'Home',
      'ar': '',
    },
  },
  // LoginPage
  {
    'filml1qi': {
      'en': 'brand.ai',
      'ar': '',
    },
    'hvs2g5ie': {
      'en': 'Create Account',
      'ar': '',
    },
    '2rz62due': {
      'en': 'Create Account',
      'ar': '',
    },
    '64306beq': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
    },
    'b4lfwo4v': {
      'en': 'Email',
      'ar': '',
    },
    'hejax45a': {
      'en': 'Password',
      'ar': '',
    },
    '1hpu2ddb': {
      'en': 'Password',
      'ar': '',
    },
    'nnssmsr7': {
      'en': 'Create Account',
      'ar': '',
    },
    'u12pos5t': {
      'en': 'Or sign up with',
      'ar': '',
    },
    '6s1h59m0': {
      'en': 'Continue with Google',
      'ar': '',
    },
    'qmjoy3xx': {
      'en': 'Continue with Apple',
      'ar': '',
    },
    'mzqsycfm': {
      'en': 'Log In',
      'ar': '',
    },
    'ictd117a': {
      'en': 'Welcome Back',
      'ar': '',
    },
    'qqew1tif': {
      'en': 'Fill out the information below in order to access your account.',
      'ar': '',
    },
    '5x6lzc1q': {
      'en': 'Email',
      'ar': '',
    },
    'n5n3xtwi': {
      'en': 'Password',
      'ar': '',
    },
    '8ud3i9ns': {
      'en': 'Sign In',
      'ar': '',
    },
    '06td2yls': {
      'en': 'Or sign in with',
      'ar': '',
    },
    'g8ydfva5': {
      'en': 'Continue with Google',
      'ar': '',
    },
    '5sce923y': {
      'en': 'Continue with Apple',
      'ar': '',
    },
    'mbqzio9l': {
      'en': 'Forgot Password?',
      'ar': '',
    },
    'egpvajbm': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Transactions
  {
    'nuvu00a0': {
      'en': 'Logout',
      'ar': '',
    },
    'yq1rp6s0': {
      'en': 'Home Page',
      'ar': '',
    },
    '4dy73vas': {
      'en': 'Transactions',
      'ar': '',
    },
    'mprg2xqp': {
      'en': 'Inventories',
      'ar': '',
    },
    'foj11yfa': {
      'en': 'Users',
      'ar': '',
    },
    '5o36inf6': {
      'en': 'Complaints',
      'ar': '',
    },
    'q6t03q05': {
      'en': 'Orders Management',
      'ar': '',
    },
    'gfze0qjp': {
      'en': 'Edit Header 1',
      'ar': '',
    },
    'zko01kt3': {
      'en': 'Edit Header 2',
      'ar': '',
    },
    'dlp77ea1': {
      'en': 'Edit Header 3',
      'ar': '',
    },
    'zfhwz6l0': {
      'en': 'Edit Column 1',
      'ar': '',
    },
    'yvth2hlc': {
      'en': 'Edit Column 2',
      'ar': '',
    },
    'jbmggzj6': {
      'en': 'Edit Column 3',
      'ar': '',
    },
    '7eze6m5z': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Inventories
  {
    '5qspjeoz': {
      'en': 'Logout',
      'ar': '',
    },
    '5zom372h': {
      'en': 'Home Page',
      'ar': '',
    },
    'pgalmrl9': {
      'en': 'Transactions',
      'ar': '',
    },
    '28ij2480': {
      'en': 'Inventories',
      'ar': '',
    },
    'xeiah9eo': {
      'en': 'Users',
      'ar': '',
    },
    '2j0iwltv': {
      'en': 'Complaints',
      'ar': '',
    },
    'em7cj0dj': {
      'en': 'Orders Management',
      'ar': '',
    },
    'im5bw7cj': {
      'en': 'Edit Header 1',
      'ar': '',
    },
    'clma2die': {
      'en': 'Edit Header 2',
      'ar': '',
    },
    'rlnbs4eg': {
      'en': 'Edit Header 3',
      'ar': '',
    },
    'xp1umc21': {
      'en': 'Edit Column 1',
      'ar': '',
    },
    'jyua1z5x': {
      'en': 'Edit Column 2',
      'ar': '',
    },
    'vzfs5e2c': {
      'en': 'Edit Column 3',
      'ar': '',
    },
    '28hcfh6i': {
      'en': 'Home',
      'ar': '',
    },
  },
  // UserAnalytics
  {
    'kbc74nxl': {
      'en': 'Logout',
      'ar': '',
    },
    'c5du5zl2': {
      'en': 'Home Page',
      'ar': '',
    },
    'mkaxh3r4': {
      'en': 'Transactions',
      'ar': '',
    },
    '7tcldqdp': {
      'en': 'Inventories',
      'ar': '',
    },
    'ybbut8hr': {
      'en': 'Users',
      'ar': '',
    },
    'dwnutcva': {
      'en': 'Complaints',
      'ar': '',
    },
    '2skppsx5': {
      'en': 'Orders Management',
      'ar': '',
    },
    'ee8hve1u': {
      'en': 'Edit Header 1',
      'ar': '',
    },
    'm7664by8': {
      'en': 'Edit Header 2',
      'ar': '',
    },
    '8alomqqd': {
      'en': 'Edit Header 3',
      'ar': '',
    },
    '2wtdmc95': {
      'en': 'Edit Column 1',
      'ar': '',
    },
    'l9449u4p': {
      'en': 'Edit Column 2',
      'ar': '',
    },
    'wg8n1jrq': {
      'en': 'Edit Column 3',
      'ar': '',
    },
    'l0zgck15': {
      'en': 'Home',
      'ar': '',
    },
  },
  // chats
  {
    'xymz8vhk': {
      'en': 'Hello World',
      'ar': '',
    },
    'br0mdegz': {
      'en': '9:30 PM',
      'ar': '',
    },
    'dwwg8ck4': {
      'en': 'Hello World',
      'ar': '',
    },
    'zx4qe0yd': {
      'en': '9:30 PM',
      'ar': '',
    },
    'rafrjkz7': {
      'en': '',
      'ar': '',
    },
    'riv3kwgo': {
      'en': 'Type here......',
      'ar': '',
    },
    'e4sb6mi3': {
      'en': 'Button',
      'ar': '',
    },
    '7lodvaxi': {
      'en': 'Home',
      'ar': '',
    },
  },
  // NewUser
  {
    'yt09my3h': {
      'en': 'Logout',
      'ar': '',
    },
    'v8soeqm9': {
      'en': 'New User 1',
      'ar': '',
    },
    'pqgf7tmb': {
      'en': 'Subtitle goes here...',
      'ar': '',
    },
    'oavcnykv': {
      'en': 'New User 2',
      'ar': '',
    },
    'ubertwfp': {
      'en': 'Subtitle goes here...',
      'ar': '',
    },
    'yznlzlxk': {
      'en': 'New User 3',
      'ar': '',
    },
    'nsximkcf': {
      'en': 'Subtitle goes here...',
      'ar': '',
    },
    'fzh70kzq': {
      'en': 'Home',
      'ar': '',
    },
  },
  // OrderManagement
  {
    '35n17l0s': {
      'en': 'Logout',
      'ar': '',
    },
    '8shxrhqs': {
      'en': 'Home Page',
      'ar': '',
    },
    '5qfaexn2': {
      'en': 'Transactions',
      'ar': '',
    },
    'nttrkxzh': {
      'en': 'Inventories',
      'ar': '',
    },
    '8a36mck4': {
      'en': 'Users',
      'ar': '',
    },
    'pkxmbiti': {
      'en': 'Complaints',
      'ar': '',
    },
    'lyvc1gsh': {
      'en': 'Orders Management',
      'ar': '',
    },
    'k5is0zur': {
      'en': 'Edit Header 1',
      'ar': '',
    },
    'atyfwz1x': {
      'en': 'Edit Header 2',
      'ar': '',
    },
    'b43p3hfe': {
      'en': 'Edit Header 3',
      'ar': '',
    },
    'b48do2id': {
      'en': 'Edit Column 1',
      'ar': '',
    },
    'hx8ddnht': {
      'en': 'Edit Column 2',
      'ar': '',
    },
    'd1x1lz7c': {
      'en': 'Edit Column 3',
      'ar': '',
    },
    '5hnt7v5w': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AdminProfile
  {
    '6n6jeada': {
      'en': 'David Jerome',
      'ar': '',
    },
    '67oex5v2': {
      'en': 'Settings',
      'ar': '',
    },
    'g35uy13n': {
      'en': 'Phone Number',
      'ar': '',
    },
    'f1xlc9h5': {
      'en': 'Edit Number',
      'ar': '',
    },
    'o4jc8iun': {
      'en': 'Email',
      'ar': '',
    },
    '6jilxse0': {
      'en': 'Edit Email',
      'ar': '',
    },
    'afc0fds1': {
      'en': 'Address',
      'ar': '',
    },
    'dlibnhm3': {
      'en': 'Edit Address',
      'ar': '',
    },
    'sgfxpqzc': {
      'en': 'Log out of account',
      'ar': '',
    },
    '9zwx6x0u': {
      'en': 'Home',
      'ar': '',
    },
  },
  // chat_2_Details
  {
    'wutl0ez9': {
      'en': 'Group Chat',
      'ar': '',
    },
    'tgeoz7m9': {
      'en': 'Home',
      'ar': '',
    },
  },
  // chat_2_main
  {
    'h4i9q8w8': {
      'en': 'Complaint',
      'ar': '',
    },
    '4sc6pz8a': {
      'en': 'Complaints',
      'ar': '',
    },
    '5dp0u136': {
      'en': '__',
      'ar': '',
    },
  },
  // image_Details
  {
    'g7cf1eqq': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Voucher
  {
    'f9xm953s': {
      'en': 'Code: ',
      'ar': '',
    },
    'vaz4y8ed': {
      'en': 'Back',
      'ar': '',
    },
    'e9lf0c5c': {
      'en': 'Vouchers',
      'ar': '',
    },
    'pvbs0yab': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Navbar
  {
    '40ilfpbk': {
      'en': 'Name',
      'ar': '',
    },
    'jvcndht0': {
      'en': '1',
      'ar': '',
    },
  },
  // chat_DetailsOverlay
  {
    'qei2fp7e': {
      'en': 'Chat Details',
      'ar': '',
    },
    '2tuytt4g': {
      'en': 'Group Chat ID: ',
      'ar': '',
    },
    '9i5fuj8x': {
      'en': 'In this chat',
      'ar': '',
    },
    'i0o9cb1r': {
      'en': 'Close',
      'ar': '',
    },
  },
  // chat_ThreadComponent
  {
    'g2u5rwh7': {
      'en': 'Start typing here...',
      'ar': '',
    },
    'kdhd26cn': {
      'en': 'You must enter a message...',
      'ar': '',
    },
    'ox31914b': {
      'en': 'Please choose an option from the dropdown',
      'ar': '',
    },
  },
  // user_ListSmall
  {
    '84neotfa': {
      'en': 'ME',
      'ar': '',
    },
  },
  // deleteDialog
  {
    '4kzxvsac': {
      'en': 'Options',
      'ar': '',
    },
    'exz6d9c1': {
      'en': 'Invite Users',
      'ar': '',
    },
    '58jjfs2n': {
      'en': 'Delete Chat',
      'ar': '',
    },
    '8axbiwon': {
      'en': 'Confirm Delete',
      'ar': '',
    },
    '72d7b1b1': {
      'en': 'You can\'t undo this action.',
      'ar': '',
    },
    'i9owomff': {
      'en': 'Delete',
      'ar': '',
    },
  },
  // EditQuantity
  {
    'guo8j7cc': {
      'en': 'Confirm',
      'ar': '',
    },
    '1jue4gvy': {
      'en': 'Cancel',
      'ar': '',
    },
  },
  // Voucher1
  {
    'txv7gctt': {
      'en': 'Code: ',
      'ar': '',
    },
  },
  // UpdatePic
  {
    '43uzis64': {
      'en': 'Upload Image',
      'ar': '',
    },
    '075okbrh': {
      'en': 'Save Changes',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'hwuofcvy': {
      'en': '',
      'ar': '',
    },
    'rwjg39hs': {
      'en': '',
      'ar': '',
    },
    'x5dw18tl': {
      'en': '',
      'ar': '',
    },
    '0w3o926j': {
      'en': '',
      'ar': '',
    },
    'jz0phbpl': {
      'en': '',
      'ar': '',
    },
    'oxvs9xaq': {
      'en': '',
      'ar': '',
    },
    '7dvxmfke': {
      'en': '',
      'ar': '',
    },
    'buka8hzi': {
      'en': '',
      'ar': '',
    },
    '0lghtrhe': {
      'en': '',
      'ar': '',
    },
    'k6a6xu0e': {
      'en': '',
      'ar': '',
    },
    '34wtpxlu': {
      'en': '',
      'ar': '',
    },
    'kgcbqbi5': {
      'en': '',
      'ar': '',
    },
    'b33mn7lq': {
      'en': '',
      'ar': '',
    },
    'vag3nb06': {
      'en': '',
      'ar': '',
    },
    'yxtforh3': {
      'en': '',
      'ar': '',
    },
    'udr1htzo': {
      'en': '',
      'ar': '',
    },
    'mizm5bvn': {
      'en': '',
      'ar': '',
    },
    '7bfbl8l7': {
      'en': '',
      'ar': '',
    },
    '1ygmx1y4': {
      'en': '',
      'ar': '',
    },
    'dvku6uz7': {
      'en': '',
      'ar': '',
    },
    '5akrki2w': {
      'en': '',
      'ar': '',
    },
    'vagxnjo6': {
      'en': '',
      'ar': '',
    },
    'tszsnhzt': {
      'en': '',
      'ar': '',
    },
    'xwbpuxpn': {
      'en': '',
      'ar': '',
    },
    'hau2l2np': {
      'en': '',
      'ar': '',
    },
    's6an6x4r': {
      'en': '',
      'ar': '',
    },
    'mzonu3lr': {
      'en': '',
      'ar': '',
    },
    'jcgw03cm': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
