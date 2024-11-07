import 'package:ayurvedic_og/data_pages/datas.dart';
import 'package:ayurvedic_og/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                  child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
              Container(
                height: 40,
                width: 84.44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 61, 143, 64)),
                child: Center(
                    child: Text(
                  "login",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("sort by:"),
              ),
              MaterialButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2025));
                },
                child: Text("Date        >"),
              )
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Data_Page.length,
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 166,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            top: 20,
                            child: Text(
                              Data_Page[index].name,
                              style: TextStyle(
                                  fontSize: 30, decorationThickness: 30),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: 50,
                            child: Text(
                              Data_Page[index].subtitles,
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          Positioned(
                              top: 90,
                              left: 45,
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.date_range_outlined,
                                      color: Colors.red,
                                    ),
                                    Text(Data_Page[index].dates),
                                  ],
                                ),
                              )),
                          Positioned(
                              top: 90,
                              right: 130,
                              child: Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.people_outline,
                                      color: Colors.red,
                                    ),
                                    Text(Data_Page[index].doctror_name)
                                  ],
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(top: 125),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 50),
                                      child: Text(
                                        "Veiw Booking Details",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.navigate_next),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                );
              },
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    "register now",
                    style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600,),
                    
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
