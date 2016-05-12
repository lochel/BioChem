within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model UtilizationMuscleTissue
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(Placement(transformation(origin={-120,50}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,83.5696}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ProductConnector G_t_connector annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,1.62}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance U_idm annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.UtilizationReaction UtilizationReaction(K_m0=225.59, V_m0=2.5, V_mX=0.047, p_2U=0.0331, part=0.8) annotation(Placement(transformation(origin={-64.11,0}, extent={{-10,-10},{10,10}})));
equation
  connect(UtilizationReaction.p1,U_idm.n1) annotation(Line(origin={-26.43,1.11022e-17}, points={{-26.43,1.11022e-17},{26.43,-1.11022e-17}}));
  connect(UtilizationReaction.m1,I_connector) annotation(Line(origin={-82.74,36.3333}, points={{18.63,-27.3333},{18.63,13.6667},{-37.26,13.6667}}));
  connect(G_t_connector,UtilizationReaction.s1) annotation(Line(origin={-97.68,-1.11022e-17}, points={{-22.32,1.11022e-17},{22.32,-1.11022e-17}}));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-2.91,52.76}, fillPattern=FillPattern.Solid, extent={{-82.91,-30.17},{82.91,30.17}}, textString="Muscle", fontName="Arial"),Text(origin={-7.10543e-15,-34.69}, fillPattern=FillPattern.Solid, extent={{-77.92,-34.69},{77.92,34.69}}, textString="tissue", fontName="Arial")}));
end UtilizationMuscleTissue;
