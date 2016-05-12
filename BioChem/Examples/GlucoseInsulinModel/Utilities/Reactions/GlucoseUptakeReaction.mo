within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model GlucoseUptakeReaction
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  parameter Real k_wholebody;
  parameter Real k;
  parameter Real Km4;
  parameter Real Km1;
  parameter Real glut_1;
equation
  rr=k_wholebody*(k*m1.c*s1.c/(Km4 + s1.c) + glut_1*s1.c/(Km1 + s1.c));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end GlucoseUptakeReaction;
