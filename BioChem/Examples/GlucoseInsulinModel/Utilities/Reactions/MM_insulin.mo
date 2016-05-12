within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model MM_insulin
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  parameter Real k_1;
  parameter Real k_2;
  parameter Real Km;
equation
  rr=k_1*m1.c*s1.c/(Km + m1.c) - p1.c*k_2;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end MM_insulin;
