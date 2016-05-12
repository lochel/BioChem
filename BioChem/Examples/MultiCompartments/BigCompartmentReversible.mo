within BioChem.Examples.MultiCompartments;
model BigCompartmentReversible
  extends BioChem.Compartments.Compartment;
  BioChem.Reactions.MichaelisMenten.Uur uur annotation(Placement(transformation(origin={0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Substances.Substance substance(c(
                                 start = 2))
                                            annotation(Placement(transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Examples.MultiCompartments.Utilities.SmallCompartment smallCompartment annotation(Placement(transformation(origin={-30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
equation
  connect(smallCompartment.substanceConnector,uur.s1) annotation(Line(origin={-23.75,-6.33}, points={{-6.25,-12.6733},{-6.25,6.33},{12.5,6.3267}}, smooth=Smooth.Bezier));
  connect(uur.p1,substance.n1) annotation(Line(origin={25.625,0.0}, points={{-14.375,0.0},{14.375,-0.0}}));
  annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={0.0,4.4965}, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-80.0,-84.4965},{80.0,75.5035}}, textString="BCR", fontName="Arial")}));
end BigCompartmentReversible;
