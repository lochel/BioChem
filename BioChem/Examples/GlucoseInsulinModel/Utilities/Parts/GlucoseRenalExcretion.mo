within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model GlucoseRenalExcretion
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Interfaces.Nodes.ProductConnector productConnector1 annotation(Placement(transformation(origin={-120,-4.44089e-16}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,3.33067e-16}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.RenalReaction renalReaction1 annotation(Placement(transformation(origin={-90,3.88578e-16}, extent={{-10,10},{10,-10}})));
  BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(Placement(transformation(origin={-120,-70}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,-83.5976}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance E annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
equation
  connect(renalReaction1.p1,E.n1) annotation(Line(origin={-39.375,1.83187e-16}, points={{-39.375,1.83187e-16},{39.375,-1.83187e-16}}));
  connect(G_p_connector,G_p_connector) annotation(Line(origin={-120,-70}, points={{0,0},{0,0}}));
  connect(G_p_connector,renalReaction1.m1) annotation(Line(origin={-75,-82.7488}, points={{-45,12.7488},{-15,12.7487},{-15,12.7488},{-15,73.7488}}));
  connect(productConnector1,renalReaction1.s1) annotation(Line(origin={-110.625,-1.66533e-17}, points={{-9.375,-4.27436e-16},{9.375,4.27436e-16}}));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-3.87096,37.0935}, fillPattern=FillPattern.Solid, extent={{-89.7,-30},{89.7,30}}, textString="Renal", fontName="Arial"),Text(origin={-3.55271e-15,-46.0442}, fillPattern=FillPattern.Solid, extent={{-95.9469,-26.0442},{95.9469,26.0442}}, textString="excretion", fontName="Arial")}));
end GlucoseRenalExcretion;
