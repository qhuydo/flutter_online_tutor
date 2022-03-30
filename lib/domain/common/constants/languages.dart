import 'dart:collection';

import '../../tutor/models/language.dart';

final languageMap = UnmodifiableMapView(const <String, Language>{
  'aa': Language(key: 'aa', name: 'Afar', native: 'Afar'),
  'ab': Language(key: 'ab', name: 'Abkhazian', native: 'Аҧсуа'),
  'af': Language(key: 'af', name: 'Afrikaans', native: 'Afrikaans'),
  'ak': Language(key: 'ak', name: 'Akan', native: 'Akana'),
  'am': Language(key: 'am', name: 'Amharic', native: 'አማርኛ'),
  'an': Language(key: 'an', name: 'Aragonese', native: 'Aragonés'),
  'ar': Language(key: 'ar', name: 'Arabic', native: 'العربية'),
  'as': Language(key: 'as', name: 'Assamese', native: 'অসমীয়া'),
  'av': Language(key: 'av', name: 'Avar', native: 'Авар'),
  'ay': Language(key: 'ay', name: 'Aymara', native: 'Aymar'),
  'az': Language(key: 'az', name: 'Azerbaijani', native: 'Azərbaycanca / آذربايجان'),
  'ba': Language(key: 'ba', name: 'Bashkir', native: 'Башҡорт'),
  'be': Language(key: 'be', name: 'Belarusian', native: 'Беларуская'),
  'bg': Language(key: 'bg', name: 'Bulgarian', native: 'Български'),
  'bh': Language(key: 'bh', name: 'Bihari', native: 'भोजपुरी'),
  'bi': Language(key: 'bi', name: 'Bislama', native: 'Bislama'),
  'bm': Language(key: 'bm', name: 'Bambara', native: 'Bamanankan'),
  'bn': Language(key: 'bn', name: 'Bengali', native: 'বাংলা'),
  'bo': Language(key: 'bo', name: 'Tibetan', native: 'བོད་ཡིག / Bod skad'),
  'br': Language(key: 'br', name: 'Breton', native: 'Brezhoneg'),
  'bs': Language(key: 'bs', name: 'Bosnian', native: 'Bosanski'),
  'ca': Language(key: 'ca', name: 'Catalan', native: 'Català'),
  'ce': Language(key: 'ce', name: 'Chechen', native: 'Нохчийн'),
  'ch': Language(key: 'ch', name: 'Chamorro', native: 'Chamoru'),
  'co': Language(key: 'co', name: 'Corsican', native: 'Corsu'),
  'cr': Language(key: 'cr', name: 'Cree', native: 'Nehiyaw'),
  'cs': Language(key: 'cs', name: 'Czech', native: 'Čeština'),
  'cu': Language(key: 'cu', name: 'Old Church Slavonic / Old Bulgarian', native: 'словѣньскъ / slověnĭskŭ'),
  'cv': Language(key: 'cv', name: 'Chuvash', native: 'Чăваш'),
  'cy': Language(key: 'cy', name: 'Welsh', native: 'Cymraeg'),
  'da': Language(key: 'da', name: 'Danish', native: 'Dansk'),
  'de': Language(key: 'de', name: 'German', native: 'Deutsch'),
  'dv': Language(key: 'dv', name: 'Divehi', native: 'ދިވެހިބަސް'),
  'dz': Language(key: 'dz', name: 'Dzongkha', native: 'ཇོང་ཁ'),
  'ee': Language(key: 'ee', name: 'Ewe', native: 'Ɛʋɛ'),
  'el': Language(key: 'el', name: 'Greek', native: 'Ελληνικά'),
  'en': Language(key: 'en', name: 'English', native: 'English'),
  'eo': Language(key: 'eo', name: 'Esperanto', native: 'Esperanto'),
  'es': Language(key: 'es', name: 'Spanish', native: 'Español'),
  'et': Language(key: 'et', name: 'Estonian', native: 'Eesti'),
  'eu': Language(key: 'eu', name: 'Basque', native: 'Euskara'),
  'fa': Language(key: 'fa', name: 'Persian', native: 'فارسی'),
  'ff': Language(key: 'ff', name: 'Peul', native: 'Fulfulde'),
  'fi': Language(key: 'fi', name: 'Finnish', native: 'Suomi'),
  'fj': Language(key: 'fj', name: 'Fijian', native: 'Na Vosa Vakaviti'),
  'fo': Language(key: 'fo', name: 'Faroese', native: 'Føroyskt'),
  'fr': Language(key: 'fr', name: 'French', native: 'Français'),
  'fy': Language(key: 'fy', name: 'West Frisian', native: 'Frysk'),
  'ga': Language(key: 'ga', name: 'Irish', native: 'Gaeilge'),
  'gd': Language(key: 'gd', name: 'Scottish Gaelic', native: 'Gàidhlig'),
  'gl': Language(key: 'gl', name: 'Galician', native: 'Galego'),
  'gn': Language(key: 'gn', name: 'Guarani', native: 'Avañe\'ẽ'),
  'gu': Language(key: 'gu', name: 'Gujarati', native: 'ગુજરાતી'),
  'gv': Language(key: 'gv', name: 'Manx', native: 'Gaelg'),
  'ha': Language(key: 'ha', name: 'Hausa', native: 'هَوُسَ'),
  'he': Language(key: 'he', name: 'Hebrew', native: 'עברית'),
  'hi': Language(key: 'hi', name: 'Hindi', native: 'हिन्दी'),
  'ho': Language(key: 'ho', name: 'Hiri Motu', native: 'Hiri Motu'),
  'hr': Language(key: 'hr', name: 'Croatian', native: 'Hrvatski'),
  'ht': Language(key: 'ht', name: 'Haitian', native: 'Krèyol ayisyen'),
  'hu': Language(key: 'hu', name: 'Hungarian', native: 'Magyar'),
  'hy': Language(key: 'hy', name: 'Armenian', native: 'Հայերեն'),
  'hz': Language(key: 'hz', name: 'Herero', native: 'Otsiherero'),
  'ia': Language(key: 'ia', name: 'Interlingua', native: 'Interlingua'),
  'id': Language(key: 'id', name: 'Indonesian', native: 'Bahasa Indonesia'),
  'ie': Language(key: 'ie', name: 'Interlingue', native: 'Interlingue'),
  'ig': Language(key: 'ig', name: 'Igbo', native: 'Igbo'),
  'ii': Language(key: 'ii', name: 'Sichuan Yi', native: 'ꆇꉙ / 四川彝语'),
  'ik': Language(key: 'ik', name: 'Inupiak', native: 'Iñupiak'),
  'io': Language(key: 'io', name: 'Ido', native: 'Ido'),
  'is': Language(key: 'is', name: 'Icelandic', native: 'Íslenska'),
  'it': Language(key: 'it', name: 'Italian', native: 'Italiano'),
  'iu': Language(key: 'iu', name: 'Inuktitut', native: 'ᐃᓄᒃᑎᑐᑦ'),
  'ja': Language(key: 'ja', name: 'Japanese', native: '日本語'),
  'jv': Language(key: 'jv', name: 'Javanese', native: 'Basa Jawa'),
  'ka': Language(key: 'ka', name: 'Georgian', native: 'ქართული'),
  'kg': Language(key: 'kg', name: 'Kongo', native: 'KiKongo'),
  'ki': Language(key: 'ki', name: 'Kikuyu', native: 'Gĩkũyũ'),
  'kj': Language(key: 'kj', name: 'Kuanyama', native: 'Kuanyama'),
  'kk': Language(key: 'kk', name: 'Kazakh', native: 'Қазақша'),
  'kl': Language(key: 'kl', name: 'Greenlandic', native: 'Kalaallisut'),
  'km': Language(key: 'km', name: 'Cambodian', native: 'ភាសាខ្មែរ'),
  'kn': Language(key: 'kn', name: 'Kannada', native: 'ಕನ್ನಡ'),
  'ko': Language(key: 'ko', name: 'Korean', native: '한국어'),
  'kr': Language(key: 'kr', name: 'Kanuri', native: 'Kanuri'),
  'ks': Language(key: 'ks', name: 'Kashmiri', native: 'कश्मीरी / كشميري'),
  'ku': Language(key: 'ku', name: 'Kurdish', native: 'Kurdî / كوردی'),
  'kv': Language(key: 'kv', name: 'Komi', native: 'Коми'),
  'kw': Language(key: 'kw', name: 'Cornish', native: 'Kernewek'),
  'ky': Language(key: 'ky', name: 'Kyrgyz', native: 'Кыргызча'),
  'la': Language(key: 'la', name: 'Latin', native: 'Latina'),
  'lb': Language(key: 'lb', name: 'Luxembourgish', native: 'Lëtzebuergesch'),
  'lg': Language(key: 'lg', name: 'Ganda', native: 'Luganda'),
  'li': Language(key: 'li', name: 'Limburgian', native: 'Limburgs'),
  'ln': Language(key: 'ln', name: 'Lingala', native: 'Lingála'),
  'lo': Language(key: 'lo', name: 'Laotian', native: 'ລາວ / Pha xa lao'),
  'lt': Language(key: 'lt', name: 'Lithuanian', native: 'Lietuvių'),
  'lu': Language(key: 'lu', name: 'Luba-Katanga', native: 'Tshiluba'),
  'lv': Language(key: 'lv', name: 'Latvian', native: 'Latviešu'),
  'mg': Language(key: 'mg', name: 'Malagasy', native: 'Malagasy'),
  'mh': Language(key: 'mh', name: 'Marshallese', native: 'Kajin Majel / Ebon'),
  'mi': Language(key: 'mi', name: 'Maori', native: 'Māori'),
  'mk': Language(key: 'mk', name: 'Macedonian', native: 'Македонски'),
  'ml': Language(key: 'ml', name: 'Malayalam', native: 'മലയാളം'),
  'mn': Language(key: 'mn', name: 'Mongolian', native: 'Монгол'),
  'mo': Language(key: 'mo', name: 'Moldovan', native: 'Moldovenească'),
  'mr': Language(key: 'mr', name: 'Marathi', native: 'मराठी'),
  'ms': Language(key: 'ms', name: 'Malay', native: 'Bahasa Melayu'),
  'mt': Language(key: 'mt', name: 'Maltese', native: 'bil-Malti'),
  'my': Language(key: 'my', name: 'Burmese', native: 'မြန်မာစာ'),
  'na': Language(key: 'na', name: 'Nauruan', native: 'Dorerin Naoero'),
  'nb': Language(key: 'nb', name: 'Norwegian Bokmål', native: 'Norsk bokmål'),
  'nd': Language(key: 'nd', name: 'North Ndebele', native: 'Sindebele'),
  'ne': Language(key: 'ne', name: 'Nepali', native: 'नेपाली'),
  'ng': Language(key: 'ng', name: 'Ndonga', native: 'Oshiwambo'),
  'nl': Language(key: 'nl', name: 'Dutch', native: 'Nederlands'),
  'nn': Language(key: 'nn', name: 'Norwegian Nynorsk', native: 'Norsk nynorsk'),
  'no': Language(key: 'no', name: 'Norwegian', native: 'Norsk'),
  'nr': Language(key: 'nr', name: 'South Ndebele', native: 'isiNdebele'),
  'nv': Language(key: 'nv', name: 'Navajo', native: 'Diné bizaad'),
  'ny': Language(key: 'ny', name: 'Chichewa', native: 'Chi-Chewa'),
  'oc': Language(key: 'oc', name: 'Occitan', native: 'Occitan'),
  'oj': Language(key: 'oj', name: 'Ojibwa', native: 'ᐊᓂᔑᓈᐯᒧᐎᓐ / Anishinaabemowin'),
  'om': Language(key: 'om', name: 'Oromo', native: 'Oromoo'),
  'or': Language(key: 'or', name: 'Oriya', native: 'ଓଡ଼ିଆ'),
  'os': Language(key: 'os', name: 'Ossetian / Ossetic', native: 'Иронау'),
  'pa': Language(key: 'pa', name: 'Panjabi / Punjabi', native: 'ਪੰਜਾਬੀ / पंजाबी / پنجابي'),
  'pi': Language(key: 'pi', name: 'Pali', native: 'Pāli / पाऴि'),
  'pl': Language(key: 'pl', name: 'Polish', native: 'Polski'),
  'ps': Language(key: 'ps', name: 'Pashto', native: 'پښتو'),
  'pt': Language(key: 'pt', name: 'Portuguese', native: 'Português'),
  'qu': Language(key: 'qu', name: 'Quechua', native: 'Runa Simi'),
  'rm': Language(key: 'rm', name: 'Raeto Romance', native: 'Rumantsch'),
  'rn': Language(key: 'rn', name: 'Kirundi', native: 'Kirundi'),
  'ro': Language(key: 'ro', name: 'Romanian', native: 'Română'),
  'ru': Language(key: 'ru', name: 'Russian', native: 'Русский'),
  'rw': Language(key: 'rw', name: 'Rwandi', native: 'Kinyarwandi'),
  'sa': Language(key: 'sa', name: 'Sanskrit', native: 'संस्कृतम्'),
  'sc': Language(key: 'sc', name: 'Sardinian', native: 'Sardu'),
  'sd': Language(key: 'sd', name: 'Sindhi', native: 'सिनधि'),
  'se': Language(key: 'se', name: 'Northern Sami', native: 'Sámegiella'),
  'sg': Language(key: 'sg', name: 'Sango', native: 'Sängö'),
  'sh': Language(key: 'sh', name: 'Serbo-Croatian', native: 'Srpskohrvatski / Српскохрватски'),
  'si': Language(key: 'si', name: 'Sinhalese', native: 'සිංහල'),
  'sk': Language(key: 'sk', name: 'Slovak', native: 'Slovenčina'),
  'sl': Language(key: 'sl', name: 'Slovenian', native: 'Slovenščina'),
  'sm': Language(key: 'sm', name: 'Samoan', native: 'Gagana Samoa'),
  'sn': Language(key: 'sn', name: 'Shona', native: 'chiShona'),
  'so': Language(key: 'so', name: 'Somalia', native: 'Soomaaliga'),
  'sq': Language(key: 'sq', name: 'Albanian', native: 'Shqip'),
  'sr': Language(key: 'sr', name: 'Serbian', native: 'Српски'),
  'ss': Language(key: 'ss', name: 'Swati', native: 'SiSwati'),
  'st': Language(key: 'st', name: 'Southern Sotho', native: 'Sesotho'),
  'su': Language(key: 'su', name: 'Sundanese', native: 'Basa Sunda'),
  'sv': Language(key: 'sv', name: 'Swedish', native: 'Svenska'),
  'sw': Language(key: 'sw', name: 'Swahili', native: 'Kiswahili'),
  'ta': Language(key: 'ta', name: 'Tamil', native: 'தமிழ்'),
  'te': Language(key: 'te', name: 'Telugu', native: 'తెలుగు'),
  'tg': Language(key: 'tg', name: 'Tajik', native: 'Тоҷикӣ'),
  'th': Language(key: 'th', name: 'Thai', native: 'ไทย / Phasa Thai'),
  'ti': Language(key: 'ti', name: 'Tigrinya', native: 'ትግርኛ'),
  'tk': Language(key: 'tk', name: 'Turkmen', native: 'Туркмен / تركمن'),
  'tl': Language(key: 'tl', name: 'Tagalog / Filipino', native: 'Tagalog'),
  'tn': Language(key: 'tn', name: 'Tswana', native: 'Setswana'),
  'to': Language(key: 'to', name: 'Tonga', native: 'Lea Faka-Tonga'),
  'tr': Language(key: 'tr', name: 'Turkish', native: 'Türkçe'),
  'ts': Language(key: 'ts', name: 'Tsonga', native: 'Xitsonga'),
  'tt': Language(key: 'tt', name: 'Tatar', native: 'Tatarça'),
  'tw': Language(key: 'tw', name: 'Twi', native: 'Twi'),
  'ty': Language(key: 'ty', name: 'Tahitian', native: 'Reo Mā`ohi'),
  'ug': Language(key: 'ug', name: 'Uyghur', native: 'Uyƣurqə / ئۇيغۇرچە'),
  'uk': Language(key: 'uk', name: 'Ukrainian', native: 'Українська'),
  'ur': Language(key: 'ur', name: 'Urdu', native: 'اردو'),
  'uz': Language(key: 'uz', name: 'Uzbek', native: 'Ўзбек'),
  've': Language(key: 've', name: 'Venda', native: 'Tshivenḓa'),
  'vi': Language(key: 'vi', name: 'Vietnamese', native: 'Tiếng Việt'),
  'vo': Language(key: 'vo', name: 'Volapük', native: 'Volapük'),
  'wa': Language(key: 'wa', name: 'Walloon', native: 'Walon'),
  'wo': Language(key: 'wo', name: 'Wolof', native: 'Wollof'),
  'xh': Language(key: 'xh', name: 'Xhosa', native: 'isiXhosa'),
  'yi': Language(key: 'yi', name: 'Yiddish', native: 'ייִדיש'),
  'yo': Language(key: 'yo', name: 'Yoruba', native: 'Yorùbá'),
  'za': Language(key: 'za', name: 'Zhuang', native: 'Cuengh / Tôô / 壮语'),
  'zh': Language(key: 'zh', name: 'Chinese', native: '中文'),
  'zu': Language(key: 'zu', name: 'Zulu', native: 'isiZulu'),
});