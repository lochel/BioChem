within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model signaltosubstance
  extends BioChem.Interfaces.Reactions.Uui;
equation
  s1.c=p1.c;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end signaltosubstance;
