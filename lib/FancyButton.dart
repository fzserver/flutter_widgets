import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FancyButton extends StatelessWidget {

  FancyButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) =>
    // RotatedBox(
      // quarterTurns: 3,
    // child: 
    RawMaterialButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RotatedBox(
              quarterTurns: 1,
                child: Icon(
                Icons.explore,
                color: Colors.amber,
              ),
            ),
            SizedBox(width: 8.0,),
            PulseAnimator(
              child: Text('PURCHASE',
              style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      onPressed: onPressed,
      shape: StadiumBorder(),
    )
    // ,)
    ;
}

class PulseAnimator extends StatefulWidget {
  final Widget child;

  const PulseAnimator({Key key, this.child}) : super(key: key);

  @override
  _PulseAnimatorState createState() => _PulseAnimatorState();
}

class _PulseAnimatorState extends State<PulseAnimator> 
with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) =>
  FadeTransition(
    opacity: TweenAndBack(begin: 0.5, end: 1.0).animate(_controller),
    child: widget.child,
  );
}

class TweenAndBack<T> extends Tween<T> {
  TweenAndBack({T begin, T end}) : super(begin: begin, end: end);

  @override
    T lerp(double t) {
      return super.lerp(t);
    }
}