import 'package:flutter/material.dart';
import 'package:woltapp/ui/styles/app_style.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    bool? isFavorite,
    required Function valueChanged,
    Key? key,
  })  : _isFavorite = isFavorite ?? false,
        _valueChanged = valueChanged,
        super(key: key);

  final bool _isFavorite;
  final Function _valueChanged;

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  final int _animationTime = 400;

  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();

    _isFavorite = widget._isFavorite;

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: _animationTime),
    );
  }

  @override
  void didUpdateWidget(FavoriteButton oldWidget) {
    _isFavorite = widget._isFavorite;

    if (_controller.duration != Duration(seconds: _animationTime)) {
      _controller.dispose();
      _controller = AnimationController(
          duration: Duration(seconds: _animationTime), vsync: this);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return InkResponse(
            onTap: () {
              setState(() {
                _isFavorite = !_isFavorite;
                widget._valueChanged(_isFavorite);
              });
            },
            child: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? AppColor.red : AppColor.gray1,
              size: 30,
            ));
      },
    );
  }
}
