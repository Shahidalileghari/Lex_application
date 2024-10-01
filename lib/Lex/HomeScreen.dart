import 'package:flutter/material.dart';
import 'AddExperience.dart';
import 'DrawerScreen.dart';
import 'MapScreen.dart';
import 'ProfileScreen.dart';
import 'SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const AddExperienceScreen(),
    const MapScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index)
  {
    setState(() {
      _selectedIndex=index;
    });
  }


  final List<String> categories = [
    'Trending',
    'Food & Drink',
    'Events',
    'Nature',
    'Art & Culture',
  ];

  final List<Map<String, String>> experiences = [
    {
      'image'       :" assets/shahid.jpg"          ,
      'title'       : 'Gourmet Dinner             ',
      'description' : 'A 5-star dining experience.',
    },
  ];
  final ScrollController _scrollController= ScrollController();

  double _scrollPosition=0.0;
  @override

  void initState()
  {
    super.initState();
    _startController();
  }

  void _startController(){
    Future.delayed(const Duration(seconds: 1),(){
      _scroll();
    });

  }
  void  _scroll(){
    if(_scrollController.hasClients)
    {
      setState(() {

        _scrollPosition +=1.0;
      });
      _scrollController.animateTo(_scrollPosition, duration: const Duration(microseconds: 50), curve: Curves.linear,).then((_){
        if(_scrollController.position.pixels>=_scrollController.position.maxScrollExtent){
          _scrollController.jumpTo(0.0);
          _scrollPosition=0.0;
        }
        _scroll();
      });
    }


  }
  @override
  void dispose()
  {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(



        backgroundColor: Colors.blue,
        title: const Text("LOCAL EXPERIENCE EXPLORER",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        actions: [
          //
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()));
          },
              tooltip: "search",

              icon: const Icon(
                Icons.search,size: 30,color: Colors.black,)),

          IconButton(onPressed: (){},
              tooltip: "chat",
              icon: const Icon(Icons.chat_bubble_outline_outlined,size: 30,color: Colors.black,)),

        ],

      ),
      drawer: const DrawerScreen(),

      body: Column(
        children: [
          SizedBox(height: 60,
            child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return  Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Chip(
                      shape: const StadiumBorder(
                          side: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          )
                      ),
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      backgroundColor: Colors.white70,
                      label: Text(categories[index]),
                    ),
                  );
                }),),

          Expanded(child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context,index){

                return  Card(
                  margin: const EdgeInsets.all(8),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("",height: 250,width: double.infinity,fit: BoxFit.cover,),
                      Padding(padding: const EdgeInsets.all(10),

                        child: Text(experiences[index]['title']!,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),



                      ),
                      Padding(padding: const EdgeInsets.all(8),
                        child: Text((experiences[index]['description']!),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),

                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up,size: 30,color: Colors.indigo,),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.comment,size: 30,color: Colors.indigo,),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: 30,color: Colors.indigo,),)

                        ],
                      )

                    ],
                  ),
                );
              }),),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){},child: const Icon(Icons.explore,color: Colors.white,size: 30,),),
      /////////////
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        showSelectedLabels: true,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items:  [
          const BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: 'Home',),
          BottomNavigationBarItem(icon: Container(
              width: 50,
              height: 28,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.add,color: Colors.white,size: 30,)), label: 'Add'),
          const BottomNavigationBarItem(icon: Icon(Icons.map,color: Colors.black,), label: 'Map'),

          const BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,), label: 'Me'),
        ],
        onTap: _onItemTapped,
      ),
    );

  }
}
