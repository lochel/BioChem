within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model RenalReaction
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  parameter Real k_e1=0.0005;
  parameter Real k_e2=339;
equation
  if m1.c > k_e2 then
    rr=s1.c*(k_e1*(m1.c - k_e2));
  else
    rr=0;
  end if;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end RenalReaction;
