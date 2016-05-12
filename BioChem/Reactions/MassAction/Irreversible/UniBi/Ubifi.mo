within BioChem.Reactions.MassAction.Irreversible.UniBi;
model Ubifi "Uni-bi irrerversible forward inhibition reaction"
  extends BioChem.Interfaces.Reactions.Ubi;
  extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
  parameter BioChem.Units.ReactionCoefficient k1=1
    "Forwards reaction coefficient for the reaction";
equation
  rr=k1/iF1.c*s1.c^nS1*s1.V;
  annotation(Documentation,   Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Ubifi;
