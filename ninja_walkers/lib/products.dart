import 'package:cloud_firestore/cloud_firestore.dart';

class Products {

  String imgURL;
  String pro_desc;
  String pro_name;
  String pro_price;
  String product_id;

  Products({required this.imgURL, required this.pro_desc, required this.pro_name,
    required this.pro_price, required this.product_id });

  factory Products.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Products(
      imgURL: data?['imgURL'],
      pro_desc: data?['pro_desc'],
      pro_name: data?['pro_name'],
      pro_price: data?['pro_price'],
      product_id: data?['product_id'],
    );
  }


  Map<String, dynamic> toFirestore() {
    return {
      if (imgURL != null) "imgURL": imgURL,
      if (pro_desc != null) "pro_desc": pro_desc,
      if (pro_name != null) "pro_name": pro_name,
      if (pro_price != null) "pro_price": pro_price,
      if (product_id != null) "product_id": product_id,
    };
  }
}




