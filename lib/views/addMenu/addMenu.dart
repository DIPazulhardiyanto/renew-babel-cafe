import 'package:flutter/material.dart';
import '../../widgets/baseAppBar.dart';
import '../../mixins/validation.dart';

var textDrawer = Colors.yellow[900];

class AddMenuPage extends StatelessWidget {
  static const String routeName = '/addmenu';

  AddMenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(slivers: [
        BaseAppBar('Bubble Cafe'),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
          SizedBox(height: 16.0),
          AddMenuScreen(),
        ]))
      ],
    )
    );
  }
}

class AddMenuScreen extends StatefulWidget {
  createState() {
    return AddMenuScreenState();
  }
}

class AddMenuScreenState extends State<AddMenuScreen> with Validation {
  final formKey = GlobalKey<FormState>();

  String judulProduct = '';
  String deskripsiProduct = '';
  String ratingProduct = '';
  String priceProduct = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 12.0,
              ),
              nameField(),
              SizedBox(
                height: 8.0,
              ),
              description(),
              SizedBox(
                height: 8.0,
              ),
              rating(),
              SizedBox(
                height: 8.0,
              ),
              price(),
              SizedBox(
                height: 12.0,
              ),
              saveButton()
            ],
          ))),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Judul Product',
        labelStyle: TextStyle(color: textDrawer),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textDrawer),
        ),
      ),
      validator: validateName,
      onSaved: (String value) {
        judulProduct = value;
      },
    );
  }

  Widget description() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Deskripsi Product',
        labelStyle: TextStyle(color: textDrawer),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textDrawer),
        ),
      ),
      validator: validateName,
      onSaved: (String value) {
        deskripsiProduct = value;
      },
    );
  }

  Widget rating() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Rating Product',
        labelStyle: TextStyle(color: textDrawer),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textDrawer),
        ),
      ),
      validator: validateName,
      onSaved: (String value) {
        ratingProduct = value;
      },
    );
  }

  Widget price() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Price Product',
        labelStyle: TextStyle(color: textDrawer),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textDrawer),
        ),
      ),
      validator: validateName,
      onSaved: (String value) {
        priceProduct = value;
      },
    );
  }

  Widget saveButton() {
    return RaisedButton(
      color: textDrawer,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Judul : $judulProduct');
          print('Deskripsi: $deskripsiProduct');
          print('rating: $ratingProduct');
          print('price: $priceProduct');
        }
      },
      child: Text('Save New Product'),
    );
  }
}
