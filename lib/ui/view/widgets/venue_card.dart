import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woltapp/bloc/venue_bloc.dart';
import 'package:woltapp/data/models/item.dart';
import 'package:woltapp/ui/styles/app_style.dart';
import 'package:woltapp/ui/view/widgets/favorite_button.dart';

class VenueCard extends StatelessWidget {
  final Item item;
  const VenueCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: item.image?.url ?? '',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.venue?.name ?? 'No title',
                  style: AppTextStyle.body.copyWith(
                      color: AppColor.darkBlue, fontWeight: FontWeight.w700),
                ),
                Text(
                  item.venue?.shortDescription ?? 'No Description',
                  style: AppTextStyle.body.copyWith(color: AppColor.gray1),
                )
              ],
            ),
          ),
          FavoriteButton(
              isFavorite: item.isFavorite,
              valueChanged: (value) {
                context.read<VenueBloc>().add(VenueEvent.favorite(item));
              }),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
