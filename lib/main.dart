import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameController = TextEditingController(text: '');
  TextEditingController _numberController = TextEditingController();

  // void _updateName(String name) {
  //   if (name.length <= 16) {
  //     setState(() {
  //       nome = name.toUpperCase();
  //     });
  //   }
  // }

  // void _updateCardNumber(String cardNumber) {
  //   if (cardNumber.length <= 16) {
  //     setState(() {
  //       card = cardNumber;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Growdev Bootcamp - Nubank Card Clone',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: Color.fromRGBO(153, 51, 153, 0.5),
        appBar: AppBar(
          title: Text('Cartão do Nubank'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.credit_card_outlined),
            ),
          ],
          backgroundColor: Color.fromRGBO(109, 33, 119, 1),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlipCard(
                  front: Column(
                    children: [
                      Container(
                        height: 250.0,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(109, 33, 119, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Image.asset(
                                'assets/mastercard.png',
                                height: 70.0,
                              ),
                              top: 10.0,
                              right: 10.0,
                            ),
                            Positioned(
                              child: Image.asset(
                                'assets/chip.png',
                                height: 50.0,
                              ),
                              top: 70.0,
                              left: 50.0,
                            ),
                            Positioned(
                              child: Image.asset(
                                'assets/nfc.png',
                                height: 30.0,
                                color: Colors.white,
                              ),
                              top: 80.0,
                              left: 110.0,
                            ),
                            Positioned(
                              child: Image.asset(
                                'assets/nu_logo.png',
                                height: 120.0,
                                color: Colors.white,
                              ),
                              top: 120.0,
                              left: 40.0,
                            ),
                            Positioned(
                              child: Text(
                                _nameController.text.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              top: 170.0,
                              left: 150.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextFormField(
                          maxLength: 16,
                          maxLengthEnforced: true,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 10.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            focusColor: Colors.white,
                            hintText: 'Digite o nome do usuário',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                          controller: _nameController,
                          onChanged: (value) {
                            setState(() {
                              // o
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  back: Column(
                    children: [
                      Container(
                        height: 250.0,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color.fromRGBO(109, 33, 119, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                width: 500,
                                height: 80.0,
                                color: Colors.grey[500],
                              ),
                              top: 20.0,
                            ),
                            Positioned(
                              child: Image.asset(
                                'assets/cirrus.png',
                                height: 70.0,
                              ),
                              bottom: 10.0,
                              right: 10.0,
                            ),
                            Positioned(
                              child: Text(
                                _numberController.text,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              bottom: 35.0,
                              left: 20.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          maxLength: 16,
                          maxLengthEnforced: true,                          
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 10.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            focusColor: Colors.white,
                            hintText: 'Digite o número do cartão',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                          controller: _numberController,
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
