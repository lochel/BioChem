within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model ReversibleFlowReaction
  extends BioChem.Interfaces.Reactions.Uur;
  parameter Real k_1;
  parameter Real k_2;
equation
  rr=s1.c*k_1 - p1.c*k_2;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end ReversibleFlowReaction;
