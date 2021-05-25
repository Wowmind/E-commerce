import 'package:flutter/material.dart';


class Shops extends StatefulWidget {
  const Shops({Key key}) : super(key: key);

  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops>with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/model1.jpeg',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                onPressed: () {},
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.shopping_basket,
                    color:  Colors.black,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 80, left: 20),
                child: Text(
                  'Woman',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Cutting edge items to stay in style, perfectly shaped to fit your basic desires.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyImage('assets/model2.jpeg', 'New in'),
                MyImage('assets/model.jpeg', 'Tops'),
                MyImage('assets/model5.jpeg', 'Pants'),
                MyImage('assets/model4.jpeg', 'Facial'),
                MyImage('assets/model6.jpeg', 'Tops'),
                MyImage('assets/model0.jpeg', 'Facial'),
                MyImage('assets/model3.jpeg', 'Gown'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.shade300,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    'Blazzers',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Tab(
                  child: Text(
                    'Coats',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Jackets',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Gowns',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),

          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/dress.jpg', fit: BoxFit.cover,height: 190.0,width: 190.0,),
                    Text(
                      '\$420',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/dress2.jpg', fit: BoxFit.cover,height: 190.0,width: 190.0,),
                    Text(
                      '\$420',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/short.jpg', fit: BoxFit.cover,height: 190.0,width: 190.0,),
                    Text(
                      '\$590',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/short2.jpeg', fit: BoxFit.cover,height: 190.0,width: 190.0,),
                    Text(
                      '\$499',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/blaz.jpg', fit: BoxFit.cover,height: 190.0,width: 190.0,),
                    Text(
                      '\$899',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/blaz2.jpg', fit: BoxFit.cover,height: 190.0,width: 190.0,),
                    Text(
                      '\$799',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget MyImage(String img, String name){
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(img),
        ),
      ),
      child: Center(
        child: Text(name,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 18,
        ),),
      ),
    );
  }
}