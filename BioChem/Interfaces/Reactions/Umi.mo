within BioChem.Interfaces.Reactions;
partial model Umi "Uni-Multi irreversible reaction"
  extends BioChem.Interfaces.Reactions.Basics.Reaction;
  extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
  extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
  BioChem.Units.StoichiometricCoefficient nS1=1
    "Stoichiometric coefficient for substrate 1";
  BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP)
    "Stoichiometric coefficients for the products";
equation
  s1.r=nS1*rr;
  p.r=-nP*rr;
  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Umi;
