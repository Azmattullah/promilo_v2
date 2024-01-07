import 'package:flutter/material.dart';
import 'package:promilo_v2/View/Widgets/cardWidget.dart';

class FirstPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://img.freepik.com/free-photo/people-business-meeting-high-angle_23-2148911819.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1704585600&semt=sph',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG26fFS_zmRaGmAlYc-gE_Pf3wWXVgIdMdOg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqOwHjZ0pjrtNfaYXGhazGdUxsb27yiKKey9_XKpJMjkP2_iMce8owlXRkgcvsfYkdwXQ&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: " Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: Icon(Icons.mic_none),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: 380,
              child: PageView.builder(
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 200,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Trending Popular People',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CatBlock(categoryName: 'Author', categoryImgSrc: ''),
                  CatBlock(categoryName: 'Writer', categoryImgSrc: ''),
                  CatBlock(categoryName: 'Event Manager', categoryImgSrc: ''),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Top Trending Meetups',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CatBlock2(
                      categoryName: '01',
                      categoryImgSrc:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNXv2E2-V16WK4puxfcXBzJHINfXJd-1G5PqW0nbF6t8-m2UCVTyrdsaScInfyY0NH4e4&usqp=CAU'),
                  CatBlock2(
                      categoryName: '02',
                      categoryImgSrc:
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR2ZFhvSGKMHCN1EmbGWK_WL-hi61tdLEdhjY7UZX0DuY6sTwbK'),
                  CatBlock2(
                      categoryName: '03',
                      categoryImgSrc:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNXv2E2-V16WK4puxfcXBzJHINfXJd-1G5PqW0nbF6t8-m2UCVTyrdsaScInfyY0NH4e4&usqp=CAU'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Account Page'),
    );
  }
}
