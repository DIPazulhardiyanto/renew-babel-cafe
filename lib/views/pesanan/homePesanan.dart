import 'package:flutter/material.dart';
import '../../widgets/baseAppBar.dart';

class PageHomePesanan extends StatelessWidget {
  PageHomePesanan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: [
        BaseAppBar('Bubble Cafe'),
        SliverList(
            delegate: SliverChildListDelegate(
                <Widget>[SizedBox(height: 16.0), menuItemList()]))
      ],
    ));
  }
}

Widget menuItemList() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Daftar Pesanan Anda',
          style: TextStyle(fontSize: 22.0, color: Colors.black54),
        ),
        SizedBox(height: 16.0),
      ],
    ),
  );
}

Widget menuItem() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          child: Image.network(
            burgerImage,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Container(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: iconYellow,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 15.0,
                        ),
                        Text('4.5')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Special Chicken Burger',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                    width: 200.0,
                    child: Text(
                      'Chicken, Yogurt, Red chilli, Ginger paste, Carlic paste, ...',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

var headerColor = Colors.white.withOpacity(0.5);
var textHeadColor = Colors.yellow[900];
var textDrawer = Colors.yellow[900];
// IMAGES
var meatImage = 'https://i.ibb.co/5FRwHtB/unnamed.jpg';
var foodImage = 'https://i.ibb.co/qk6PzDy/London-broil.jpg';

var burgerImage =
    'https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var chickenImage =
    'https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

// COLORS
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);
