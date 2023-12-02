import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class TCurvedEdgesWIdget extends StatelessWidget {
  const TCurvedEdgesWIdget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      // Made a Custom Curve path - TCustomCurvedEdges
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
