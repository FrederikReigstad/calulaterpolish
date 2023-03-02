import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPM Calculator',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SafeArea(child: MyHomePage(title: 'RPM Calculator')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(

        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 320, // Set the desired width of the container
              height: 25, // Set the desired height of the container
              child: FittedBox(
                  fit: BoxFit.scaleDown, // Scale the text down to fit within the constraints
                  alignment: Alignment.centerRight, // Align the text to the right
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.format_list_numbered, color: Colors.white, size: 100),
                    Text(
                      "1, 2, 3, 4, 5",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 100.0,
                          fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 333, // Set the desired width of the container
              height: 80, // Set the desired height of the container
              child: FittedBox(
                fit: BoxFit.scaleDown, // Scale the text down to fit within the constraints
                alignment: Alignment.centerRight, // Align the text to the right
                child: Text(
                  "42069",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80.0,
                    fontWeight: FontWeight.w300
                  ),
                )
              ),
            ),
            const SizedBox(height: 6),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    ElevatedButton( //CLEAR
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[400],
                          shape: const CircleBorder(),
                          minimumSize: const Size(85.0, 85.0),
                          padding: const EdgeInsets.all(5),

                        ),
                        child: const Text("C",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.0,
                          ),
                        )
                    ),

                    ElevatedButton( //UNDO
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[400],
                          shape: const CircleBorder(),
                          minimumSize: const Size(85.0, 85.0),
                          padding: const EdgeInsets.all(20),
                        ),
                      child: const Icon(Icons.replay, color: Colors.black, size: 45,),
                    ),

                    SizedBox(
                      child: ElevatedButton( //BUTTON ETR
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade700),
                          minimumSize: MaterialStateProperty.all<Size>(
                            const Size(177, 83.0),
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
                    const SizedBox(width: 10),
                  ],
                ),

            const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10),
                  ElevatedButton( //BUTTON 7
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),

                    ),
                    child: const Text("7",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w400,
                        ),
                        )
                  ),

                  ElevatedButton( //BUTTON 8
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[900],
                        shape: const CircleBorder(),
                        minimumSize: const Size(85.0, 85.0),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Text("8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                  ),

                  ElevatedButton( //BUTTON 9
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[900],
                        shape: const CircleBorder(),
                        minimumSize: const Size(85.0, 85.0),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Text("9",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                  ),

                  ElevatedButton( //BUTTON -
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[700],
                        shape: const CircleBorder(),
                        minimumSize: const Size(85.0, 85.0),
                        padding: const EdgeInsets.all(20),
                      ),
                    child: const Icon(Icons.remove, color: Colors.white, size: 45,),
                  ),
                  const SizedBox(width: 10),
                ],
              ),

            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton( //BUTTON 4
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),

                    ),
                    child: const Text("4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON 5
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text("5",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON 6
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text("6",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON +
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[700],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                  child: const Icon(Icons.add, color: Colors.white, size: 45,),
                ),
                const SizedBox(width: 10),
              ],
            ),

            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton( //BUTTON 7
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),

                    ),
                    child: const Text("7",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON 8
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text("8",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON 9
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text("9",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON x
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[700],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Icon(Icons.close, color: Colors.white, size: 45,),
                ),
                const SizedBox(width: 10),
              ],
            ),

            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 10),
                ElevatedButton( //BUTTON 0
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),

                    ),
                    child: const Text("0",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON .
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text(".",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON π
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[900],
                      shape: const CircleBorder(),
                      minimumSize: const Size(85.0, 85.0),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: const Text("π",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                ),

                ElevatedButton( //BUTTON %
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[700],
                    shape: const CircleBorder(),
                    minimumSize: const Size(85.0, 85.0),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(Icons.percent_sharp, color: Colors.white, size: 45,),
                ),
                const SizedBox(width: 10),
              ],
            ),


          ],
        ),
      ),
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      */
    );
  }
}
