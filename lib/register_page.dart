import 'package:ayurvedic_og/costums/costom_textfeeld.dart';
import 'package:ayurvedic_og/costums/coustom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //count add and less

 int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter==10){
        _counter=0;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if(_counter==0){
        _counter=9;
      }
    });
  }
  //Show daialog:-

  void callenderCreate() {
    showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          content: Container(
            height: 428,
            width: 348,
            child: Column(
              children: [
                Container(
                  // width: 308,
                  child: Column(
                    children: [
                      const Text("Choose Treatment  "), Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton(
                      underline: Container(
                        color: Colors.white,
                      ),
                      isExpanded: true,
                      hint: const Text("Select Your Location"),
                      items: list
                          .map<DropdownMenuItem<String>>(
                              (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ))
                          .toList(),
                      value: dropdownvalue,
                      onChanged: (String? value) {
                        setState(() {
                          dropdownvalue = value;
                        });
                      }),
                ),
                      const Text("Add Patians :"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50,
                              width: 154,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.53),
                                  border: Border.all(color: Colors.grey)),
                              child: Center(child: const Text("Male")),
                            ),
                            Container(
                              height: 44,
                              width: 165,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        _incrementCounter();
                                      });
                                    },
                                    child: const CircleAvatar(
                                      radius: 29,
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                        Icons.minimize,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 48,
                                    width: 44,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(10)),
                                        child: Center(child: Text("$_counter")),
                                  ),
                                  InkWell(
                                    onTap: () {
                                     _decrementCounter;
                                    },
                                    child: const CircleAvatar(
                                      radius: 29,
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50,
                              width: 154,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.53),
                                  border: Border.all(color: Colors.grey)),
                              child: const Center(child: Text("Female")),
                            ),
                            Container(
                              height: 44,
                              width: 165,
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 29,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.minimize,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    height: 48,
                                    width: 44,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(10)),
                                  ),
                                  const CircleAvatar(
                                    radius: 29,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 308,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8.52)),
                    child: Center(
                      child: Text(
                        "Save",
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

//dropdownbar:-

  List<String> list1 = <String>["palazhi", "kuttikattur", "palayam"];
  List<String> list = <String>[
    'kasargode',
    'kannoor',
    'kozhikode',
    'wayanad',
    'malapura',
    'trissur',
  ];

  String? dropdownvalue;
  String? dropdownvalue1;

//  List<DropdownMenuItem<String>> createDrop() {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        actions: [const Icon(Icons.notifications_active_outlined)],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Register",
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
              ),
              CostomTextfeeld(subject: "Name :", HintTexT: "Enter Your Name"),
              CostomTextfeeld(
                  subject: "Watsapp Number :",
                  HintTexT: "Enter Your Watsapp Number"),
              CostomTextfeeld(
                  subject: "Address :", HintTexT: "Enter Your Address"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Location :"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton(
                      underline: Container(
                        color: Colors.white,
                      ),
                      isExpanded: true,
                      hint: const Text("Select Your Location"),
                      items: list
                          .map<DropdownMenuItem<String>>(
                              (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ))
                          .toList(),
                      value: dropdownvalue,
                      onChanged: (String? value) {
                        setState(() {
                          dropdownvalue = value;
                        });
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Brach :"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton(
                      borderRadius: BorderRadius.circular(10),
                      underline: Container(
                        color: const Color.fromARGB(255, 24, 6, 6),
                      ),
                      isExpanded: true,
                      hint: const Text("Select Your Branch"),
                      items: list1
                          .map<DropdownMenuItem<String>>(
                              (s) => DropdownMenuItem(
                                    value: s,
                                    child: Text(s),
                                  ))
                          .toList(),
                      value: dropdownvalue1,
                      onChanged: (String? value) {
                        setState(() {
                          dropdownvalue1 = value;
                        });
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Treatment :"),
              ),
              Center(
                child: Container(
                  height: 84,
                  width: 370,
                  color: Colors.grey[300],
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("  1.  Couple Combo Package I..."),
                          Icon(
                            Icons.close,
                            color: Colors.red,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("male",
                              style: TextStyle(color: Colors.green)),
                          Container(
                            height: 26,
                            width: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey)),
                          ),
                          const Text(
                            "female",
                            style: TextStyle(color: Colors.green),
                          ),
                          Container(
                            height: 26,
                            width: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey)),
                          ),
                          const Icon(
                            Icons.edit,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        callenderCreate();
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 370,
                      color: Colors.green,
                      child: Center(
                          child: Text(
                        "+ Add Treatment",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      )),
                    ),
                  ),
                ),
              ),
              CostomTextfeeld(subject: "Totel Amount :"),
              CostomTextfeeld(subject: "Discound Amount :"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Payment option :"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Text(
                      "Cash",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Text(
                      "Card",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Text(
                      "UPI",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              CostomTextfeeld(subject: "Advance Amount :"),
              CostomTextfeeld(subject: "Balance Amount :"),
              const Text("Treatment Date"),
              CostomTextfeeld(
                subject: "Treatment Date",
                prefixIcon: IconButton(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2025),
                        initialDate: DateTime.now());
                  },
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.green,
                  ),
                ),
              ),
              InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Center(
                        child: Text(
                          "Save",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
