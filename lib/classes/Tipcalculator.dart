import 'package:flutter/material.dart';
import 'package:flutter_application/ui/util/hexcolor.dart';

class Tipcalc extends StatefulWidget {
  @override
  _TipcalcState createState() => _TipcalcState();
}

class _TipcalcState extends State<Tipcalc> {
  int _tipPercent = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;
  Color _red1 = HexColor("6625B1FF");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
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
                color: _red1.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total Bill: $_billAmount",
                      style: TextStyle(
                        color: _red1.withOpacity(1.0),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Total per person",
                    style: TextStyle(
                      color: _red1.withOpacity(1.0),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${calculateTotalPerPerson(calculateTotalTip(_billAmount, _personCounter, _tipPercent), _billAmount, _personCounter)}",
                        style: TextStyle(
                          color: _red1.withOpacity(1.0),
                          fontSize: 30.0,
                          fontWeight: FontWeight.normal,
                        ),),
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
                  color: Colors.transparent,
                  border: Border.all(
                    width: 0.5,
                    color: Colors.blueGrey.shade100,
                    style: BorderStyle.solid,
                  ),
              ),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    style: TextStyle(color: Colors.pinkAccent.shade100),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      prefixText: "BillAmount",
                      prefixIcon: Icon(
                        Icons.list_alt,
                        color: Colors.grey,
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
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
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
                                color: _red1.withOpacity(0.2),
                              ),
                              child: Center(
                                  child: Text(
                                "-",
                                style: TextStyle(
                                  color: _red1.withOpacity(1.0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              )),
                            ),
                          ),
                          Text(
                            "$_personCounter",
                            style: TextStyle(
                              color: _red1.withOpacity(1.0),
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                          InkWell(
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
                                color: _red1.withOpacity(0.2),
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: _red1.withOpacity(1.0),
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
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Text(
                            "\$ ${calculateTotalTip(_billAmount, _personCounter, _tipPercent)}",
                            style: TextStyle(
                              color: _red1.withOpacity(1.0),
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
                        min: 0,
                          max: 100,
                          divisions: 10,
                          activeColor: _red1,
                          inactiveColor: Colors.grey,
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

        // child: Container(
        //   width: 500,
        //   height: 200,
        //   margin: EdgeInsets.all(30.0),
        //   decoration: BoxDecoration(
        //       color: Colors.grey,
        //       borderRadius: BorderRadius.circular(10.0)),
        //   child: Center(
        //     child: Text("Hello There",
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //         fontStyle: FontStyle.italic,
        //         fontSize: 17,
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }

  calculateTotalPerPerson(double totalTip, double billAmount, int splitBy){
    var totalPerPerson = (totalTip + billAmount) / splitBy;
    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTotalTip(double billAmount,int splitBy, int tipPercent){
    double totalTip = 0.0;

    if(billAmount < 0 || billAmount.toString().isEmpty || billAmount == null){

    }else{
      totalTip = (billAmount * tipPercent) / 100;
    }
    return totalTip;
  }
}
