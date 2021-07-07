import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Builder(builder: (context) => 
            IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {})
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Find The Best Hotels",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "The fasts and the simplest way to book",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "hotels online with best prices.",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      
                        prefixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            onPressed: () {}),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff202732),
                                ),
                                child: IconButton(
                                    icon: Icon(Icons.equalizer,color: Colors.white,),
                                    onPressed: () {})),
                          ),
                        ),
                        border: new OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffF6F6F6)),
                          borderRadius: const BorderRadius.all(

                            const Radius.circular(21.0),
                            
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey),
                        hintText: "Search for a place",
                        fillColor: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Categories",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text("See All",style: TextStyle(color: Colors.black,fontSize: 15),),
                )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
