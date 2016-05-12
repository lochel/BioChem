within BioChem.Reactions.Inhibition;
model Ucii "Irreversible competitive inhibition kinetics"
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
  parameter Real Ki=1 "Inhibition constant for the substrate";
  parameter Real KmS=1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
equation
  rr=vF*s1.c/KmS/(1 + s1.c/KmS + i1.c/Ki);
  annotation(Documentation(info="<html>
 <p>
 Irreversible competitive inhibition kinetics.
 </p>
 </html>"),
          Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Ucii;
