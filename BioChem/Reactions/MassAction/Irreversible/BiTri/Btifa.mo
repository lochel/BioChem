within BioChem.Reactions.MassAction.Irreversible.BiTri;
model Btifa "Bi-tri irrerversible forward activation reaction"
  extends BioChem.Interfaces.Reactions.Bti;
  extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
  parameter BioChem.Units.ReactionCoefficient k1=1
    "Forwards reaction coefficient for the reaction";
equation
  rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V;
  annotation(Documentation,   Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Btifa;
