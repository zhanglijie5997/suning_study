import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../Pages/SeachPage/SeachPage.dart';
import '../../Utils/ScreenutilSetting/ScreenutilSetting.dart';

class Index extends StatefulWidget {
  Index({Key key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List _iconList = [
    { 'name': '家乐福', 'id': 0, 'img': Image.asset("images/1.png") },
    { 'name': '苏宁超市', 'id': 1, 'img': Image.asset("images/2.png") },
    { 'name': '苏宁拼购', 'id': 2, 'img': Image.asset("images/3.png") },
    { 'name': '爆款手机', 'id': 3, 'img': Image.asset("images/4.png") },
    { 'name': '苏宁家电', 'id': 4, 'img': Image.asset("images/5.png") },
    { 'name': '免费领水果', 'id': 5, 'img': Image.asset("images/6.png") },
    { 'name': '赚钱消消乐', 'id': 6, 'img': Image.asset("images/7.png") },
    { 'name': '签到有礼', 'id': 7, 'img': Image.asset("images/8.png") },
    { 'name': '领取中心', 'id': 8, 'img': Image.asset("images/9.png") },
    { 'name': '更多频道', 'id': 9, 'img': Image.asset("images/10.png") }
  ];

  // 顶部
  Widget _titleWidget(BuildContext context) { 
    return Container(
      height: ScreentulilSetting.setWidth(context, 550),
      child: Stack(
        children: <Widget>[
          // 背景图
          Positioned(
              child: Container(
                margin: EdgeInsets.only(top: ScreentulilSetting.setWidth(context, 40)),
                width: MediaQuery.of(context).size.width,
                height: ScreentulilSetting.setWidth(context, 500),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/bg.png"),fit: BoxFit.cover),
                ),
              )
          ), 
          // 分类和用户中心
          Positioned(
            top: ScreentulilSetting.setWidth(context, 40),
            child: Container(
              decoration: BoxDecoration(
                // image: DecorationImage(image: AssetImage("images/title.png"),fit: BoxFit.cover)
              ),
              height: ScreentulilSetting.setWidth(context, 80),
              // color: Colors.red,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.4),
                      child: Image.asset("images/type.png", width: ScreentulilSetting.setWidth(context, 36), height: ScreentulilSetting.setWidth(context, 60)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4),
                      child: Image.asset("images/login.png", width: ScreentulilSetting.setWidth(context, 36), height: ScreentulilSetting.setWidth(context, 60)),
                    ),
                  )
                ],
              ),
            )
          ),
          // 搜索框
          Positioned(
            top: ScreentulilSetting.setWidth(context, 150),
            child: GestureDetector(
              child: ClipRect(
                clipBehavior: Clip.antiAlias,
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: ScreentulilSetting.setHeight(context, 70),
                    margin: EdgeInsets.only(left: ScreentulilSetting.setWidth(context, MediaQuery.of(context).size.width * 0.05)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: ScreentulilSetting.setWidth(context, 40),
                          child: Image.asset("images/TabBar/seach.png", width: ScreentulilSetting.setWidth(context, 30),),
                          margin: EdgeInsets.only(left: ScreentulilSetting.setWidth(context, 10)),
                        ),
                        Container(
                          child: Text("万券齐发 领5亿消费券", style:  TextStyle(
                            fontSize: ScreentulilSetting.setFontSize(context, 30),
                            color: Color.fromRGBO(139, 117, 117, 1)
                          )),
                          margin: EdgeInsets.only(left: ScreentulilSetting.setWidth(context, 10)) ,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(ScreentulilSetting.setWidth(context, 30),) 
                    ),
                  )
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SeachPage()));
              },
            )
          ),
          // 轮播图
          Positioned(
            top: ScreentulilSetting.setHeight(context, 240),
            child: ClipRect(
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.red,
                  // borderRadius: BorderRadius.circular(ScreentulilSetting.setWidth(context, 30))
                ),
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.028),
                width: MediaQuery.of(context).size.width * 0.95,
                height: ScreentulilSetting.setHeight(context, 300),
                child: new Swiper(
                  autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ScreentulilSetting.setWidth(context, 25)),
                        image: DecorationImage(
                          image: NetworkImage("https://image1.suning.cn/uimg/cms/img/158441343631146552.jpg?format=_is_1242w_610h"),
                          fit: BoxFit.cover
                        ) 
                      ),
                      
                    ) ;
                  },
                  itemCount: 3,
                  pagination: new SwiperPagination(),
                )
              ) 
            )
          ),
        ],
      )
    );
     
  }
  
  // 广告
  Widget _ad (BuildContext context) => Row(
    children: <Widget>[
      Image.network("https://image3.suning.cn/uimg/cms/img/158443003629164657.png?from=mobile", width: MediaQuery.of(context).size.width * 0.33,),
      Image.network("https://image2.suning.cn/uimg/cms/img/158442999310168407.png?from=mobile", width: MediaQuery.of(context).size.width * 0.33,),
      Image.network("https://image1.suning.cn/uimg/cms/img/158442948698986561.png?from=mobile", width: MediaQuery.of(context).size.width * 0.33,),
    ],
  );
  
  // 选择icon
  GridView _iconListBuild() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        mainAxisSpacing: ScreentulilSetting.setWidth(context, 10),
                        crossAxisSpacing: ScreentulilSetting.setWidth(context, 10),
                        childAspectRatio: 0.8
                      ), 
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Image.asset(_iconList[index]['img']),
            Text(_iconList[index]['name'])
          ],
        );
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Color.fromRGBO(242, 242, 242, 1),
          child: Column(
            children: <Widget>[
              _titleWidget(context),
              _ad(context),
              // _iconListBuild(),
            ],
          ),
        ) 
      )
    );
  }
}