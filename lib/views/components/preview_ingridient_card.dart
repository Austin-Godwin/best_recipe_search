import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PreviewIngridientCard extends StatelessWidget {
  final String heroTag;
  final String imageUrl;
  const PreviewIngridientCard({Key? key, required this.heroTag, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: MediaQuery.of(context).size.width / 250.0,
          child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:imageUrl,
                    // "https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
              )
              // width: MediaQuery.of(context).size.width,
              // height: ,
              ),
        ),
        AspectRatio(
          aspectRatio: MediaQuery.of(context).size.width / 250.0,
          child: Hero(
            tag: heroTag,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 85,
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: const Color(0xFF8C756B),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow_rounded,
                  size: 30,
                  color: Color(0XFFFFFFFF),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
