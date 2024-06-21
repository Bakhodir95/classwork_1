import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ClassApp());
}

class ClassApp extends StatelessWidget {
  const ClassApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverAppBar(
                leading: const Icon(Icons.arrow_back),
                actions: const [Icon(Icons.more_vert_rounded)],
                clipBehavior: Clip.hardEdge,
                title: const Text("Order Details"),
                centerTitle: true,
                pinned: true,
                floating: true,
                primary: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      "https://png.pngtree.com/png-vector/20230918/ourmid/pngtree-man-in-shirt-smiles-and-gives-thumbs-up-to-show-approval-png-image_10094381.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                expandedHeight: 300,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(15),
              sliver: SliverPersistentHeader(
                pinned: false,
                delegate: _SliverAppBarDelegate(
                  minHeight: 60,
                  maxHeight: 60,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.network(
                            "https://media.istockphoto.com/id/964163202/photo/young-handsome-hispanic-man-against-green-background.jpg?s=612x612&w=0&k=20&c=mvdrdVwFDEPDlv6vRdm_wdB5Q7e1UFb-U1lCek26ZY4=",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("\$25.0",
                                style: TextStyle(fontWeight: FontWeight.w600)),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_outline),
                            ),
                          ],
                        ),
                        const Text(
                          "Zara United",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 8,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(15),
              sliver: SliverPersistentHeader(
                pinned: false,
                delegate: _SliverAppBarDelegate(
                  minHeight: 60,
                  maxHeight: 60,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Men's Fashion",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 350,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://media.istockphoto.com/id/964163202/photo/young-handsome-hispanic-man-against-green-background.jpg?s=612x612&w=0&k=20&c=mvdrdVwFDEPDlv6vRdm_wdB5Q7e1UFb-U1lCek26ZY4=",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Men's fashion Collection"),
                                Text("Discount up to :80%")
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                  childCount: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.maxHeight,
    required this.minHeight,
    required this.child,
  });

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant _SliverAppBarDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }
}
