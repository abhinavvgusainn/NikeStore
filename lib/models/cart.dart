import 'shoe.dart';

class Cart {
  //LIST OF SHOES FOR SALE
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Flyease',
        image: 'images/flyease.png',
        price: '399',
        desc: 'Futuristic design, Unique architecture'),
    Shoe(
        name: 'Air Jorden 1',
        image: 'images/air1high.png',
        price: '399',
        desc: 'Sleak design, latest signature shoe'),
    Shoe(
        name: 'Custom Dunk',
        image: 'images/dunk.png',
        price: '349',
        desc: 'The forward thinking with amazing Craft work'),
        Shoe(
        name: 'Air Force 1',
        image: 'images/air1.png',
        price: '239',
        desc: 'Next level designs with next level comfort'),
  ];

  //LIST OF ITEMS N CART
  List<Shoe> userCart = [];
  //GET LIST OF SHOES FOR SALE
  List<Shoe> getShoeList() {
    return shoeShop;
  }
  //GET CART
List<Shoe> getUserCart(){
  return userCart;
}
  //ADD ITEMS TO CART
void addItemsToCart(Shoe shoe){
  userCart.add(shoe);
}
  //REMOVE OTEMS FROM CART
  void removeItem(Shoe shoe){
    userCart.remove(shoe);
  }
}
