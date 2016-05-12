within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model k_empt
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.TwoModifiers;
  Real k;
  Real aa;
  Real cc;
  parameter Real k_max=0.0558;
  parameter Real k_min=0.008;
  parameter Real b=0.82;
  parameter Real d=0.01;
equation
  rr=s1.c*k;
  k=k_min + (k_max - k_min)/2*(Modelica.Math.tanh(aa*(m1.c - b*m2.c)) - Modelica.Math.tanh(cc*(m1.c - d*m2.c)) + 2);
  aa=5/2/(1 - b)/m2.c;
  cc=5/2/d/m2.c;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end k_empt;
