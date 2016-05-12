within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model UtilizationReaction
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  BioChem.Units.Concentration X;
  Real V_max;
  parameter Real part;
  parameter Real V_m0;
  parameter Real V_mX;
  parameter Real K_m0;
  parameter Real p_2U;
  parameter Real I_b=25;
equation
  rr=V_max*s1.c/(K_m0 + s1.c);
  V_max=part*(V_m0 + V_mX*X);
  der(X)=-p_2U*X + p_2U*(m1.c - I_b);
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end UtilizationReaction;
