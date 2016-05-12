within BioChem.Examples.MultiCompartments;
model BigCompartmentIrreversible
  extends BioChem.Compartments.Compartment(V(start=3));
  Reactions.MassAction.Irreversible.UniUni.Uui uui annotation(Placement(transformation(origin={0.0,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
  BioChem.Examples.MultiCompartments.Utilities.SmallCompartment smallCompartment annotation(Placement(transformation(origin={-40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
  Substances.Substance substance annotation(Placement(transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
equation
  connect(smallCompartment.substanceConnector,uui.s1) annotation(Line(origin={-30.4167,-9.6667}, points={{-9.5833,-19.3333},{-9.5833,9.6667},{19.1667,9.6667}}, smooth=Smooth.Bezier));
  connect(uui.p1,substance.n1) annotation(Line(origin={25.625,0.0}, points={{-14.375,0.0},{14.375,-0.0}}));
  annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={2.8035,5.0159}, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-82.8035,-85.0159},{77.1965,74.9841}}, textString="BCI", fontName="Arial")}));
end BigCompartmentIrreversible;
