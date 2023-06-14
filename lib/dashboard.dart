import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/bghome.png'),
                    fit: BoxFit.cover
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 55.0, top: 42, right: 170),
                              child: Text('Location', style: SubTextStyle,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 55.0, right: 90.0),
                              child: Text('Mojokerto, Sooko', style: ButtonTextStyle,),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 46.0, left: 45.0, right: 16.0 ),
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/user.png'),
                              )
                            ),
                        ),
                        )],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 23, left: 55, right: 55),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Color(0xFF313131)),
                          minimumSize: MaterialStateProperty.all(Size(315, 52)),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8), // Untuk memberikan ruang antara ikon dan teks (opsional)
                            Text(
                              'Search coffee',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: [
                          Image(image: AssetImage("images/hot.png"),
                          width: 315,
                          height: 140,)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0, left: 55.0),
                      child: Container(
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 120,
                              //color: Color(0xFFC67C4E),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                  ),
                                  backgroundColor: MaterialStateProperty.all(Color(0xFFC67C4E))
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Text("Capucino",
                                      style: SubTextBoldStyle,),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Center(
                                      child: Text("Machiato",
                                      style: SubTextBlackStyle,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Center(
                                      child: Text("Latte",
                                        style: SubTextBlackStyle,),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                    ),
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Center(
                                      child: Text("Americano",
                                        style: SubTextBlackStyle,),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    // CardView with FractionallySizedBox and heightFactor
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left: 55),
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      width: 150,
                                      height: 250,
                                      child: FractionallySizedBox(
                                        alignment: Alignment.topCenter,
                                        heightFactor: 0.5,
                                        child: Image.asset('images/kopi.png'),
                                      ),
                                    ),
                                  ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        width: 50,
                                        height: 45,
                                        child: FractionallySizedBox(
                                          alignment: Alignment.topCenter,
                                          heightFactor: 0.5,
                                          child: Image.asset('images/ratings.png'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 250,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 148.0, left: 12.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Cappucino', style: SubTextBlackStyle,),
                                            Text('with Chocolate', style: SubTextBoldBlcStyle,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Text("\$ 4.53", style: SubTextBlackStyle,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 45.0),
                                                    child: Image.asset('images/btnAdd.png'),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left: 8),
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Container(
                                        width: 150,
                                        height: 250,
                                        child: FractionallySizedBox(
                                          alignment: Alignment.topCenter,
                                          heightFactor: 0.5,
                                          child: Image.asset('images/kopi2.png'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        width: 50,
                                        height: 45,
                                        child: FractionallySizedBox(
                                          alignment: Alignment.topCenter,
                                          heightFactor: 0.5,
                                          child: Image.asset('images/rating2.png'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 250,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 148.0, left: 12.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Cappucino', style: SubTextBlackStyle,),
                                            Text('with Oat Milk', style: SubTextBoldBlcStyle,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Text("\$ 3.90", style: SubTextBlackStyle,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 45.0),
                                                    child: Image.asset('images/btnAdd.png'),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left: 55),
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Container(
                                        width: 150,
                                        height: 250,
                                        child: FractionallySizedBox(
                                          alignment: Alignment.topCenter,
                                          heightFactor: 0.5,
                                          child: Image.asset('images/kopi3.png'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        width: 50,
                                        height: 45,
                                        child: FractionallySizedBox(
                                          alignment: Alignment.topCenter,
                                          heightFactor: 0.5,
                                          child: Image.asset('images/rating3.png'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 250,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 148.0, left: 12.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Cappucino', style: SubTextBlackStyle,),
                                            Text('with Chocolate', style: SubTextBoldBlcStyle,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Text("\$ 4.53", style: SubTextBlackStyle,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 45.0),
                                                    child: Image.asset('images/btnAdd.png'),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0, left: 8),
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Container(
                                        width: 150,
                                        height: 250,
                                        child: FractionallySizedBox(
                                          alignment: Alignment.topCenter,
                                          heightFactor: 0.5,
                                          child: Image.asset('images/kopi4.png'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        width: 50,
                                        height: 45,
                                        child: FractionallySizedBox(
                                          alignment: Alignment.topCenter,
                                          heightFactor: 0.5,
                                          child: Image.asset('images/rating4.png'),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 250,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 148.0, left: 12.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Cappucino', style: SubTextBlackStyle,),
                                            Text('with Oat Milk', style: SubTextBoldBlcStyle,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20.0),
                                              child: Row(
                                                children: [
                                                  Text("\$ 3.90", style: SubTextBlackStyle,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 45.0),
                                                    child: Image.asset('images/btnAdd.png'),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
