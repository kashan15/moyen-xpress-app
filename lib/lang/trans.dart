import 'dart:math';

import 'package:get/get.dart';

import '../utils/lang_string_util.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          editAccount: "Edit Account",
          myOrder: "My Orders",
          myInformation: "My Information",
          shippingAddress: "Shipping Address",
          paymentMethod: "Payment Methods",
          settings: "Settings",
          logout: "Logout",

          notifications: 'Notifications',
          markAsRead: 'mark as read',
          notificationText1: 'order',
          notificationText2: 'has been placed',
          notificationText3: 'm ago'
        },

        "fr_FR": {
          editAccount: "Modifier le compte",
          myOrder: "Mes commandes",
          myInformation: "Mon information",
          shippingAddress: "adresse de livraison",
          paymentMethod: "méthodes de payement",
          settings: "Paramètres",
          logout: "Se déconnecter",

          notifications: 'Avis',
          markAsRead: 'Marquer comme lu',
          notificationText1: 'commande',
          notificationText2: 'a été placé',
          notificationText3: 'il y a un mois'
        },
      };
}

//

//eng
//URDU
//french
//spanish,
