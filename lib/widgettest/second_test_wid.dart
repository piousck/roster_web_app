import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:roster_web_app/mockdata/data.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class MySecondTestWidget extends StatefulWidget {
  MySecondTestWidget({Key? key}) : super(key: key);

  @override
  _MySecondTestWidgetState createState() => _MySecondTestWidgetState();
}

class _MySecondTestWidgetState extends State<MySecondTestWidget> {
  late PayrollData _payrollData;

  @override
  void initState() {
    var _payrollData = MyPayrollData().myjsonData;
    getPayrollData(_payrollData);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }

  DataTable getPayrollData(data) {
    print(data
        .map((data) => (print(data))));
        return(DataTable(columns: const [
          DataColumn(label: Text("Forename")),
          DataColumn(label: Text("Surname")),
          DataColumn(label: Text("Wages")),
          DataColumn(label: Text("Net")),
          
        ], rows: data.toString().);
  }
}

class PayrollData {
  String forename;
  String surname;
  int iD;
  int wages;
  int net;
  int tax;
  int pRSI;
  int uSC;
  int emplrPRSI;
  String address;

  PayrollData(this.forename, this.surname, this.iD, this.wages, this.net,
      this.tax, this.pRSI, this.uSC, this.emplrPRSI, this.address);

  PayrollData.fromJson(Map<String, dynamic> json)
      : forename = json['Forename'],
        surname = json['Surname'],
        iD = json['ID'],
        wages = json['Wages'],
        net = json['Net'],
        tax = json['Tax'],
        pRSI = json['PRSI'],
        uSC = json['USC'],
        emplrPRSI = json['EmplrPRSI'],
        address = json['Address'];
}
