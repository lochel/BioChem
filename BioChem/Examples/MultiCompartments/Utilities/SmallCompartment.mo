within BioChem.Examples.MultiCompartments.Utilities;
model SmallCompartment "Michaelis-Menten reaction between two compartments"
  extends BioChem.Compartments.Compartment;
  BioChem.Substances.Substance substance(c(
                                         start = 1))
                                                    annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstanceConnector substanceConnector annotation(Placement(transformation(origin={60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={0.0,110.0}, extent={{-15.0,-15.0},{15.0,15.0}})));
equation
  connect(substance.n1,substanceConnector) annotation(Line(points={{0.0,0.0},{60.0,0.0}}));
  annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={12.9676,-18.3909}, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-92.9676,-61.6091},{67.0324,98.3909}}, textString="SC", fontName="Arial")}));
end SmallCompartment;
