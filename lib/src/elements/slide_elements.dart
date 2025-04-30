import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:projectapii/global_config.dart';
import 'package:projectapii/src/controllers/slide_controller.dart';

class SlideElements extends StatelessWidget {
  SlideElements({super.key});
  final _con = Get.put(SlideController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        color: Colors.red,
        width: double.infinity,
        height: 220,
        child: _con.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : CarouselSlider.builder(
          itemCount: _con.listSlider.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final imageUrl = "${apiBaseUrl}${_con.listSlider[index].images}";
            return CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Center(child: Icon(Icons.error, color: Colors.white)),
            );
          },
          options: CarouselOptions(
            height: 220,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollPhysics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
          ),
        ),
      );
    });
  }
}
