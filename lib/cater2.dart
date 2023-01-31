import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  var imageUrlList = [
    "https://cdn.pixabay.com/photo/2015/03/22/17/28/rings-684944__340.jpg",
    "https://cdn.pixabay.com/photo/2014/11/13/06/10/boy-529065__340.jpg",
    "https://cdn.pixabay.com/photo/2020/05/26/07/43/sea-5221913__340.jpg",
    "https://cdn.pixabay.com/photo/2017/04/15/12/08/chain-2232278__340.jpg",
    "https://cdn.pixabay.com/photo/2017/08/22/11/55/linked-in-2668692__340.png",
    "https://cdn.pixabay.com/photo/2018/06/18/22/51/architecture-3483531__340.jpg",
    "https://cdn.pixabay.com/photo/2013/06/07/15/45/sky-122701__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/26/16/59/horse-1354791__340.jpg",
    "https://cdn.pixabay.com/photo/2022/09/08/09/10/rings-7440500__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/24/12/48/dad-1349427__340.jpg",
    "https://cdn.pixabay.com/photo/2019/10/29/14/35/candle-4587072__340.jpg",
    "https://cdn.pixabay.com/photo/2013/06/07/15/47/sky-122703__340.jpg",
    "https://cdn.pixabay.com/photo/2016/04/20/19/05/horse-1341780__340.jpg",
    "https://cdn.pixabay.com/photo/2017/06/08/18/19/chain-2384436__340.jpg",

    // "https://i0.hdslb.com/bfs/manga-static/42b2143b5694835ae35763bea634cdfc36392801.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/87e22d652eb4c456fe251e15b57bbb25da39925a.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/3f01609c36d4816eb227c95ac31471710fa706e6.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/6b5ab1a7cb883504db182ee46381835e70d6d460.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
    // "https://i0.hdslb.com/bfs/manga-static/5482454680757477d728dae82f80a280a9cc97a2.jpg@300w.jpg",
  ];

  int currentIndex = 0;

  Widget buildGallery3D() {
    return Gallery3D(
        itemCount: imageUrlList.length,
        width: MediaQuery.of(context).size.width,
        height: 160,
        isClip: true,

        // ellipseHeight: 50,
        itemConfig: const GalleryItemConfig(
            width: 300,
            height: 160,
            radius: 15,
            isShowTransformMask: false,
            shadows: [
              BoxShadow(
                  color: Color(0x90000000),
                  offset: Offset(2, 0),
                  blurRadius: 10)
            ]),
        currentIndex: currentIndex,
        onItemChanged: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        onClickItem: (index) => print("No of Video:$index"),
        itemBuilder: (context, index) {
          return Image.network(
            imageUrlList[index],
            fit: BoxFit.fill,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
            itemCount: 3,
            itemBuilder: ((context, index)
    {
      return Column(
        children: [buildGallery3D()],

      );
    }
    ),
    );
  }
  }






