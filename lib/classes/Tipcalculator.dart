import 'package:flutter/material.dart';

class Tipcalc extends StatefulWidget {
  @override
  _TipcalcState createState() => _TipcalcState();
}

class _TipcalcState extends State<Tipcalc> {
  //some initial variables
  int _tipPercent = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tip Calculator App"),
        centerTitle: true,
        //backgroundColor: _red1,
      ),
      body: Container(
        alignment: Alignment.center,
        // color: Colors.white,
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height *
                0.1), //sets margin to be auto for any device

        child: ListView(
          //enables elements to be in a list view
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: [
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                  style: BorderStyle.solid,
                ),
                //color: _red1.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Bill: $_billAmount",
                      style: TextStyle(
                        // color: _red1.withOpacity(1.0),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Total per person",
                      style: TextStyle(
                        // color: _red1.withOpacity(1.0),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${calculateTotalPerPerson(calculateTotalTip(_billAmount,
                            _personCounter, _tipPercent),
                            _billAmount, _personCounter)}",
                        style: TextStyle(
                          //color: _red1.withOpacity(1.0),
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 300,
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(11.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                //color: Colors.transparent,
                border: Border.all(
                  width: 0.5,
                  color: Colors.deepPurpleAccent.withOpacity(0.5),
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    style: TextStyle(
                        color: Colors.blueGrey,
                        ),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      hintText: "Input BillAmount",
                      prefixIcon: Icon(
                        Icons.list_alt,
                         color: Colors.deepPurpleAccent.withOpacity(0.5),
                      ),
                    ),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                      } catch (exception) {
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Split",
                        style: TextStyle(
                             color: Colors.blueGrey,
                            ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            //code of people reduction
                            onTap: () {
                              setState(() {
                                if (_personCounter > 1) {
                                  _personCounter--;
                                } else {
                                  //nothing
                                }
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color:Colors.deepPurpleAccent.withOpacity(0.5),
                              ),
                              child: Center(
                                  child: Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.blueGrey.withOpacity(1.0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              )),
                            ),
                          ),
                          Text(
                            "$_personCounter", //code for total persons
                            style: TextStyle(
                              color: Colors.blueGrey.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                          InkWell(
                            //code of people increment
                            onTap: () {
                              setState(() {
                                _personCounter++;
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                color: Colors.deepPurpleAccent.withOpacity(0.5),
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.blueGrey.withOpacity(1.0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          "Tip",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Text(
                            "\$ ${calculateTotalTip(_billAmount, _personCounter, _tipPercent)}",
                            style: TextStyle(
                              color: Colors.blueGrey.withOpacity(1.0),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //slider
                    children: [
                      Text(
                        "$_tipPercent%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      Slider(
                          //code of slider bar
                          min: 0,
                          max: 100,
                          divisions: 10,
                          activeColor: Colors.deepPurpleAccent.withOpacity(0.5),
                          inactiveColor: Colors.blueGrey,
                          value: _tipPercent.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              _tipPercent = newValue.round();
                            });
                          })
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  calculateTotalPerPerson(double totalTip, double billAmount, int splitBy) {
    var totalPerPerson = (totalTip + billAmount) / splitBy;
    return totalPerPerson.toStringAsFixed(2);
  } //code for calculating total tip per person

  calculateTotalTip(double billAmount, int splitBy, int tipPercent) {
    double totalTip = 0.0;

    if (billAmount < 0 || billAmount.toString().isEmpty || billAmount == null) {
    } else {
      totalTip = (billAmount * tipPercent) / 100;
    } //code for calculating total tip
    return totalTip;
  }
}