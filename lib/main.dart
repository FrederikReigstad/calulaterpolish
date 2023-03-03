import 'package:calulaterpolish/stack.dart';
import 'package:flutter/material.dart';

import 'command.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: SafeArea(child: CaluaterScreen()));
  }
}

class CaluaterScreen extends StatefulWidget {
  const CaluaterScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CaluaterScreenState();
  }
}

class CaluaterScreenState extends State<CaluaterScreen> {
  CalcStack stack = CalcStack();
  String equation = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              width: 333, // Set the desired width of the container
            ),
            SizedBox(
              height: 80, // Set the desired height of the container
              width: 333, // Set the desired width of the container
              child: FittedBox(
                fit: BoxFit.scaleDown,
                // Scale the text down to fit within the constraints
                alignment: Alignment.centerRight,
                // Align the text to the right
                child: Text(stack.isEmpty() ? "Empty" : stack.toString(),
                    style: TextStyle(fontSize: 50)),
              ),
            ),
            SizedBox(
              width: 333, // Set the desired width of the container
              height: 100, // Set the desired height of the container
              child: FittedBox(
                fit: BoxFit.scaleDown,
                // Scale the text down to fit within the constraints
                alignment: Alignment.centerRight,
                // Align the text to the right
                child: Text(
                  equation.toString(),
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton(
                    //CLEAR
                    onPressed: () {
                      setState(() {
                        equation = "0";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[400],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                    ),
                    child: const Text(
                      "C",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                      ),
                    )),
                SizedBox(
                  child: ElevatedButton(
                    //BUTTON ETR
                    onPressed: () {
                      setState(() {
                        if (equation != "0") {
                          stack.push(num.tryParse(equation)!);
                        }
                      });
                      equation = "0";
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.green.shade700),
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(170, 83.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'ENTER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                          ),
                        ),
                        Icon(Icons.arrow_upward, color: Colors.white, size: 45),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: ElevatedButton(
                    //AC
                    onPressed: () {
                      setState(() {
                        equation = "0";
                        stack.clear();
                      });
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey[400],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                    ),
                    child: const Text(
                      "AC",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton(
                    //BUTTON 7
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "7";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "7",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON 8
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "8";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "8",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON 9
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "9";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "9",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                  //BUTTON -
                  onPressed: () {
                    setState(() {
                      Minus().execute(stack);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: const CircleBorder(),
                    minimumSize: const Size(85.0, 85.0),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton(
                    //BUTTON 4
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "4";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON 5
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "5";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "5",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON 6
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "6";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "6",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                  //BUTTON +
                  onPressed: () {
                    setState(() {
                      Add().execute(stack);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: const CircleBorder(),
                    minimumSize: const Size(85.0, 85.0),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton(
                    //BUTTON 1
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "1";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON 2
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "2";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON 3
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "3";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                  //BUTTON x
                  onPressed: () {
                    setState(() {
                      Multiply().execute(stack);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: const CircleBorder(),
                    minimumSize: const Size(85.0, 85.0),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton(
                    //BUTTON 0
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        equation += "0";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "0",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON .
                    onPressed: () {
                      setState(() {
                        if (!equation.contains(".")) {
                          equation += ".";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      ".",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                    //BUTTON π
                    onPressed: () {
                      setState(() {
                        if (equation == "0") {
                          equation = "";
                        }
                        if (!equation.contains("3.14") && !equation.contains(".")) {
                          equation += "3.14";
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(
                      "π",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                ElevatedButton(
                  //BUTTON /
                  onPressed: () {
                    setState(() {
                      Multiply().execute(stack);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: const CircleBorder(),
                    minimumSize: const Size(85.0, 85.0),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Text(
                    "/",
                    style: TextStyle(fontSize: 45, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
