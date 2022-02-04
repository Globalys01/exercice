import 'package:get/get.dart';

class Message extends Translations{
  @override
 
  Map<String, Map<String, String>> get keys =>{
    'en_US' : {
      'hello': 'Hello'
    },

    'hi_IN':{
      'hello':'مرحبا',
    },
 'fr_FR' : {
      'hello': 'Bonjour',
    },

  };
  
}