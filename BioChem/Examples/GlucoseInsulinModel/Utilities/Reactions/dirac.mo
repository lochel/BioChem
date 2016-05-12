within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model dirac
  extends BioChem.Interfaces.Reactions.Uui;
  parameter Real k=78000000;
equation
  if time < 0.001 then
    rr=k;
  else
    rr=0;
  end if;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end dirac;
