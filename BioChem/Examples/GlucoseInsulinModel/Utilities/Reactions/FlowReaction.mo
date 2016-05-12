within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model FlowReaction
  extends BioChem.Interfaces.Reactions.Uui;
  parameter Real k;
equation
  rr=s1.c*k;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end FlowReaction;
