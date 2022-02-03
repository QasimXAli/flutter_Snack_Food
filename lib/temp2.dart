import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Temp2 extends StatelessWidget {
  const Temp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        // Setting floatHeaderSlivers to true is required in order to float
        // the outer slivers over the inner scrollable.
        floatHeaderSlivers: true,

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: true,
              flexibleSpace: MainImage(),
            ),
          ];
        },
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ListView(
            children: [
              InfoCard(),
              ...List.generate(
                15,
                (index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('images/card1.jpg'),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://blogs.biomedcentral.com/on-medicine/wp-content/uploads/sites/6/2019/09/iStock-1131794876.t5d482e40.m800.xtDADj9SvTVFjzuNeGuNUUGY4tm5d6UGU5tkKM0s3iPk-620x342.jpg");
  }
}

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: const [
                  SizedBox(height: 10),
                  Icon(
                    Icons.star,
                    size: 60,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 20),
                    Text(
                      "Res 1",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Description",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Column(
                children: const [
                  SizedBox(height: 20),
                  Icon(Icons.ac_unit, size: 40),
                ],
              )
            ],
          ),
          Text(
            "Description",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
