within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model ActivationReaction
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  parameter Real k_1;
  parameter Real k_2;
equation
  rr=k_1*s1.c*m1.c - p1.c*k_2;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end ActivationReaction;
