import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Samba White',
      price: '150',
      description: 'VINTAGE-STYLE SHOES IN WEARABLE WHITE TONES.',
      imagePath: 'lib/images/Samba_White.png'
    ),
    Shoe(
      name: 'Samba Black',
      price: '150',
      description: 'VINTAGE-STYLE SHOES IN WEARABLE DARK TONES.',
      imagePath: 'lib/images/Samba_Black.png'
    ),
    Shoe(
      name: 'Superstar White FV',
      price: '100',
      description: 'CASUAL TRAINERS CELEBRATING 50 YEARS OF STREETWEAR HISTORY.',
      imagePath: 'lib/images/Superstar_White_FV.png'
    ),
    Shoe(
      name: 'Superstar White IF',
      price: '100',
      description: 'CASUAL TRAINERS CELEBRATING 50 YEARS OF STREETWEAR HISTORY.',
      imagePath: 'lib/images/Superstar_White_IF.png'
    ),
    Shoe(
      name: 'Ultraboost White',
      price: '190',
      description: 'ENERGY-RETURNING SNEAKERS MADE IN PART WITH PARLEY OCEAN PLASTIC.',
      imagePath: 'lib/images/Ultraboost_White.png'
    ),
    Shoe(
      name: 'Ultraboost Black',
      price: '190',
      description: 'ENERGY-RETURNING SNEAKERS MADE IN PART WITH PARLEY OCEAN PLASTIC.',
      imagePath: 'lib/images/Ultraboost_Black.png'
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}