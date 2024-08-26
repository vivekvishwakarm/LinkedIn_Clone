import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linkedin/data/data.dart';
import 'package:linkedin/widget/custom_appbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _post = Data.postList;
  bool _showAppNavBar = true;
  late ScrollController _scrollController;
  bool _isScrollDown = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _initialScroll();
  }

  void _initialScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollDown) {
          _isScrollDown = true;
          _hideAppNavBarr();
        }
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollDown) {
          _isScrollDown = false;
          _showAppNavvBar();
          setState(() {});
        }
      }
    });
  }

  void _hideAppNavBarr() {
    setState(() {
      _showAppNavBar = false;
    });
  }

  void _showAppNavvBar() {
    _showAppNavBar = true;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Container(
          color: Colors.black12,
          child: Column(
            children: [
              _showAppNavBar
                  ? CustomAppBar(
                      sizingInformation: sizingInformation,
                    )
                  : Container(
                      height: 0,
                      width: 0,
                    ),
              _listPostWidget(sizingInformation),
            ],
          ),
        );
      },
    );
  }

  Widget _listPostWidget(SizingInformation sizingInformation) {
    return Expanded(
      child: MediaQuery.removePadding(
        context: context,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _post.length,
          itemBuilder: (context, index) {
            return Container();
          },
        ),
      ),
    );
  }
}
