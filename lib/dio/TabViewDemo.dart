import 'package:flutter/material.dart';

class TabViewDemo extends StatefulWidget {
  @override
  createState() => CustomTabPageState();
}

class CustomTabPageState extends State<TabViewDemo> with TickerProviderStateMixin{

  TabController _tabController;
  PageController _pageController;
  List<String> _titleList = <String>['关注','推荐', '抗疫', '热榜', '精品课', '旅游', '旅游', '旅游'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _titleList.length);
    _pageController = PageController();
  }

  void _changeTab(int index) {
    _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  void _onPageChanged(int index) {
    _tabController.animateTo(index, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义TabBar', style: TextStyle(color: Colors.black54),),
        backgroundColor: const Color(0xffeff3f6),
        brightness: Brightness.light,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black54
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: const Color(0xffeff3f6),
            height: 44,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TabBar(
              labelColor: Colors.white,//选中的颜色
              labelStyle: TextStyle(fontSize: 13),
              unselectedLabelColor: Color(0xff1e1e1e),//未选中的颜色
              unselectedLabelStyle: TextStyle(color: Colors.black54, fontSize: 13),
              isScrollable: true,
              //自定义indicator样式
              indicator: BoxDecoration(
                  color: Color(0xffff4954),
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              controller: _tabController,
              onTap: _changeTab,
              tabs: _titleList.map((e) => Tab(text: e)).toList(),
            ),
          ),
          Expanded(
              child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: _titleList.length,
                  itemBuilder: (context, index) {
                    return Text(_titleList[index]);
                  }
              )
          )
        ],
      ),
    );
  }
}
