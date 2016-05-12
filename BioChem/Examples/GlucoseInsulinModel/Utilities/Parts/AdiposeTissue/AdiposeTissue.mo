within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue;
model AdiposeTissue
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(Placement(transformation(origin={-120,50}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,83.8877}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ProductConnector G_t_connector annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,1.61}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue.Adipocyte adipocyte1 annotation(Placement(transformation(origin={0,6.66134e-16}, extent={{-10,-10},{10,10}})));
equation
  connect(adipocyte1.productConnector1,G_t_connector) annotation(Line(origin={-66.8,-8.2005}, points={{66.8,-2.7995},{66.8,-6.80075},{-40.2,-6.80075},{-40.2,8.2005},{-53.2,8.2005}}));
  connect(I_connector,adipocyte1.modifierConnector1) annotation(Line(origin={-40.2506,25}, points={{-79.7494,25},{25.2494,25},{25.2494,-25},{29.2506,-25}}));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-3.97,38.38}, fillPattern=FillPattern.Solid, extent={{-96.03,-31.62},{96.03,31.62}}, textString="Fat", fontName="Arial"),Text(origin={-2.5601,-40}, fillPattern=FillPattern.Solid, extent={{-77.4399,-42.4487},{77.4399,42.4487}}, textString="tissue", fontName="Arial")}));
end AdiposeTissue;
