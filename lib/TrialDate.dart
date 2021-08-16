import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class TrialDart extends StatefulWidget {
  const TrialDart({Key? key}) : super(key: key);

  @override
  _TrialDartState createState() => _TrialDartState();
}

class _TrialDartState extends State<TrialDart> {

  String addDays(int sumdays){
    var today = DateTime.now();
    var newdate = today.add(Duration(days: sumdays));
    DateFormat formatter = DateFormat('dd MMMM yyyy');
    final String formatted = formatter.format(newdate);
    return formatted;
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text("Title"),),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("tanggal nya ditambah 1 bulan " +addDays(30)),
              Text("tanggal nya ditambah 3 bulan " +addDays(90)),
              Text("tanggal nya ditambah 6 bulan " +addDays(180)),
              Text("tanggal nya ditambah 1 tahun " +addDays(365)),
            ],
          )
        ),
      ),
    );
  }
}
