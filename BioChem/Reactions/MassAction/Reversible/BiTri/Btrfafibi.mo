within BioChem.Reactions.MassAction.Reversible.BiTri;
model Btrfafibi
  "Bi-tri reversible forward activation, forward inhibition, backward inhibition reaction"
  extends BioChem.Interfaces.Reactions.Btr;
  extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
  extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
  extends BioChem.Interfaces.Reactions.Modifiers.InhibitorBackward;
  parameter BioChem.Units.ReactionCoefficient k1=1
    "Forwards reaction coefficient for the reaction";
  parameter BioChem.Units.ReactionCoefficient k2=1
    "Backwards reaction coefficient for the reaction";
equation
  rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V - k2/iB1.c*p1.c^nP1*p2.c^nP2*p3.c^nP3*p1.V;
  annotation(Documentation,   Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Btrfafibi;
