import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var maplist = new Map();
List<String> state = [
  "Andhra Pradesh",
  "Arunachal Pradesh",
  "Assam",
  "Bihar",
  "Chhattisgarh",
  "Goa",
  "Gujarat",
  "Haryana",
  "Himachal Pradesh",
  "Jharkhand",
  "Karnataka",
  "Kerala",
  "Madhya Pradesh",
  "Maharashtra",
  "Manipur",
  "Meghalaya",
  "Mizoram",
  "Nagaland",
  "Odisha",
  "Punjab",
  "Rajasthan",
  "Sikkim",
  "Tamil Nadu",
  "Telangana",
  "Tripura",
  "Uttarakhand",
  "Uttar Pradesh",
  "West Bengal"
];
List<int> number = [
  08662410978,
  9436055743,
  6913347770,
  104,
  104,
  104,
  104,
  8558893911,
  104,
  104,
  104,
  04712552056,
  104,
  02026127394,
  3852411668,
  108,
  102,
  7005539653,
  9439994859,
  104,
  01412225624,
  104,
  04429510500,
  104,
  03812315879,
  104,
  18001805145,
  1800313444222,
];

class Contact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*actions: <Widget>[
          IconButton(icon: Icon(Theme.of(context).brightness==Brightness.dark?Icons.lightbulb_outline:Icons.highlight), onPressed: (){
            DynamicTheme.of(context).setBrightness(Theme.of(context).brightness==Brightness.dark?Brightness.dark:Brightness.light);
          })
        ],*/
        /*actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          })
        ],*/
        elevation: 0.0,
        centerTitle: true,
        iconTheme: new IconThemeData(),
        //backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.bottomCenter,
          child: Text('Contacts',
            style:
            TextStyle(
              //color: Colors.black87,
                fontSize: 38.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        child: new Container(
          child: new ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
            shrinkWrap: true,
            itemCount: state == null ? 0 : state.length,
            itemBuilder: (context, position) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                elevation: 5,
                child: new InkWell(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    12.0, 12.0, 12.0, 2.0),
                                child: Text(
                                  state[position],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12.0, 6.0, 12.0, 2.0),
                                      child: Text(
                                        "Number:",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12.0, 3.0, 6.0, 3.0),
                                      child: Text(
                                        number[position].toString(),
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      ),
                      /*Divider(
                        height: 2.0,
                        color: Colors.grey,
                      )*/
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () {
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    for (var i = 0; i < state.length; i++) {
      maplist[state[i]] = number[i];
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
      child: new Container(
        child:
        new ListView.separated(
          //physics: BouncingScrollPhysics(),
          //scrollDirection: Axis.vertical,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          //shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, position) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 5,
              child: new InkWell(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  12.0, 12.0, 12.0, 2.0),
                              child: Text(
                                this.query,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                            Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12.0, 6.0, 12.0, 2.0),
                                    child: Text(
                                      "Number:",
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        12.0, 3.0, 6.0, 3.0),
                                    child: Text(
                                      maplist[this.query].toString(),
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ],
                    ),
                    /*Divider(
                      height: 2.0,
                      color: Colors.grey,
                    )*/
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return null;

    /*for(var i=0;i<state.length;i++){
      maplist[state[i]] = number[i];
    }

    print(maplist);

    List recentStates = [
      "Maharashtra",
      "Uttar Pradesh",
      "Haryana",
      "Madhya Pradesh"
    ];*/
    //final suggestionList = query.isEmpty?recentStates:state.where((p)=>p.startsWith(query)).toList();

    /*return ListView.builder(itemBuilder: (context, index) =>
        ListTile(
          onTap: () {
            showResults(context);
          },
          leading: Icon(Icons.location_city),
          title: RichText(
              text: TextSpan(
                text: suggestionList[index],
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )),
        ),
        itemCount: suggestionList.length
    );*/
  }

}