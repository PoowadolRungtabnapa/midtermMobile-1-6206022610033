import 'package:flutter/material.dart';

class NotebookPage extends StatelessWidget {
  String Notebook, Notebook_Installment;

  double wh = 0, total = 0, i = 0;

  NotebookPage(
      {Key? key, required this.Notebook, required this.Notebook_Installment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BangBon IT Shop'),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/NoteBook.jpg')),
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(15)),
                  height: 75,
                ),
                Text('ชื่อ : Notebook'),
                Text("ราคา: $Notebook"),
                Text("จำนวนงวด : $Notebook_Installment"),
                Text("อัตรดอกเบี้ย : " +
                    Installment(double.parse(Notebook_Installment)).toString() +
                    "%"),
                Text("จำนวนผ่อนต่องวด : " +
                    Installment2(double.parse(Notebook),
                            double.parse(Notebook_Installment))
                        .toString()),
                Text("จำนวนเงินของดอกเบี้ยทั้งหมด : " +
                    Installment3(double.parse(Notebook),
                            double.parse(Notebook_Installment))
                        .toString()),
                Text("จำนวนเงินทั้งหมดเมื่อผ่อนครบงวด : " +
                    numberAdd(double.parse(Notebook),
                            double.parse(Notebook_Installment))
                        .toString())
              ],
            ),
          ),
        ),
      ),
    );
  }

  double Installment(double h) {
    if (h == 6) {
      i = 0;
    } else if (h == 10) {
      i = 1;
    } else if (h == 24) {
      i = 2;
    }
    return i;
  }

  double Installment3(double w, double h) {
    if (h == 6) {
      total = w * 0;
    } else if (h == 10) {
      total = w * 0.01;
    } else if (h == 24) {
      total = w * 0.02;
    }
    return total * h;
  }

  double Installment2(double w, double h) {
    if (h == 6) {
      total = w * 0;
    } else if (h == 10) {
      total = w * 0.01;
    } else if (h == 24) {
      total = w * 0.02;
    }
    return (total * h) / h;
  }

  double numberAdd(double w, double h) {
    if (h == 6) {
      total = w * 0;
    } else if (h == 10) {
      total = w * 0.01;
    } else if (h == 24) {
      total = w * 0.02;
    }
    return total * h + w;
  }
}
