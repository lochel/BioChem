within BioChem.Reactions.HyperbolicModifier;
model Uhmr "Reversible general hyperbolic modifier kinetics"
  extends BioChem.Interfaces.Reactions.Uur;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  parameter Real a=1 "Ratio of dissociaton constants, ES+M->ESM over E+M->EM";
  parameter Real b=1 "Ratio of rate constants, ESM->EM+P over ES->E+P";
  parameter Real Kd=1 "Dissociation constant of E+M->EM";
  parameter BioChem.Units.Concentration KmS=1
    "Forward Michaelis-Menten constant";
  parameter BioChem.Units.Concentration KmP=1
    "Reverse Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  parameter BioChem.Units.ReactionRate vR=1 "Reverse maximum velocity";
equation
  rr=(vF*s1.c/KmS - vR*p1.c/KmP)*(1 + b*m1.c/(a*Kd))/(1 + m1.c/Kd + (s1.c/KmS + p1.c/KmP)*(1 + m1.c/(a*Kd)));
  annotation(Documentation(info="<html>
 <p>
 Reversible general hyperbolic modifier kinetics.
 </p>
 </html>"),
          Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Uhmr;
