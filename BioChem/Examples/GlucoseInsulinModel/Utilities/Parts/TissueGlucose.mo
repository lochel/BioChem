within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model TissueGlucose
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Interfaces.Nodes.ProductConnector G_connector annotation(Placement(transformation(origin={0,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,-110}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance G_t(c(
                                   start = 130))
                                                annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstrateConnector U_idf_connector annotation(Placement(transformation(origin={120,40}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,60}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstrateConnector U_idm_connector annotation(Placement(transformation(origin={120,-40}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-63.4979}, extent={{-10,-10},{10,10}})));
equation
  connect(G_t.n1,U_idm_connector) annotation(Line(origin={83.5,-20}, points={{-83.5,20},{23.5,20},{23.5,-20},{36.5,-20}}));
  connect(G_t.n1,U_idf_connector) annotation(Line(origin={83.5,20}, points={{-83.5,-20},{23.5,-20},{23.5,20},{36.5,20}}));
  connect(G_t.n1,G_connector) annotation(Line(origin={0,-40}, points={{0,40},{0,-40}}));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-0.55,-36.0512}, fillPattern=FillPattern.Solid, extent={{-100.55,-33.9488},{100.55,33.9488}}, textString="glucose", fontName="Arial"),Text(origin={3.56664,43.6442}, fillPattern=FillPattern.Solid, extent={{-86.4334,-33.6442},{86.4334,33.6442}}, textString="Tissue", fontName="Arial")}));
end TissueGlucose;
