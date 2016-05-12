within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model EndogenousGlucoseProduction
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  parameter Real k_p1=2.7;
  parameter Real k_p2=0.0021;
  parameter Real k_p3=0.009;
  parameter Real k_p4=0.0618;
  BioChem.Units.Concentration egp_signal;
  BioChem.Units.Concentration i_d;
  BioChem.Units.Concentration g_p;
  BioChem.Units.Concentration i_po;
  BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(Placement(transformation(origin={0,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={2.22045e-16,110}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstrateConnector EGP_connector annotation(Placement(transformation(origin={60,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={73.83,110}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ModifierConnector I_connector annotation(Placement(transformation(origin={-60,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-72.29,110}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ModifierConnector I_po_connector annotation(Placement(transformation(origin={120,-60}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,0}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i1(k=0.0079) annotation(Placement(transformation(origin={-90,63.2158}, extent={{10,-10},{-10,10}}, rotation=-270)));
  BioChem.Substances.Substance I_1(c(
                                   start = 25))
                                               annotation(Placement(transformation(origin={-90,40}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i2(k=0.0079) annotation(Placement(transformation(origin={-90,10}, extent={{10,-10},{-10,10}}, rotation=-270)));
  BioChem.Substances.Substance I_d(c(
                                   start = 25) = i_d) annotation(Placement(transformation(origin={-90,-10}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_i3(k=0.0079) annotation(Placement(transformation(origin={-90,-40}, extent={{10,-10},{-10,10}}, rotation=-270)));
  BioChem.Substances.BoundarySubstance End annotation(Placement(transformation(origin={-90,-60}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance EGP_calc(c=egp_signal) annotation(Placement(transformation(origin={60,40}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance G_p(c=g_p) annotation(Placement(transformation(origin={8.88178e-16,40}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance I_po(c=i_po) annotation(Placement(transformation(origin={80,-60}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance1 annotation(Placement(transformation(origin={100,-60}, extent={{10,-10},{-10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.signaltosubstance signaltosubstance2 annotation(Placement(transformation(origin={0,60}, extent={{-10,-10},{10,10}}, rotation=-90)));
equation
  connect(signaltosubstance2.p1,G_p.n1) annotation(Line(origin={3.10862e-16,42.9167}, points={{-2.88658e-16,5.83333},{-2.88658e-16,-2.91667},{5.77316e-16,-2.91667}}));
  connect(G_p_connector,signaltosubstance2.s1) annotation(Line(origin={-7.4015e-18,74.1667}, points={{7.4015e-18,5.83333},{7.4015e-18,-2.91667},{-1.4803e-17,-2.91667}}));
  connect(I_po_connector,signaltosubstance1.s1) annotation(Line(origin={115.625,-60}, points={{4.375,0},{-4.375,0}}));
  connect(signaltosubstance1.p1,I_po.n1) annotation(Line(origin={84.375,-60}, points={{4.375,0},{-4.375,0}}));
  connect(EGP_calc.n1,EGP_connector) annotation(Line(origin={60,60}, points={{0,-20},{0,20}}));
  connect(End.n1,k_i3.p1) annotation(Line(origin={-90,-54.1667}, points={{0,-5.83333},{0,2.91667},{0,2.91667}}));
  connect(k_i3.s1,I_d.n1) annotation(Line(origin={-90,-19.375}, points={{0,-9.375},{0,9.375}}));
  connect(k_i2.p1,I_d.n1) annotation(Line(origin={-90,-7.08333}, points={{0,5.83333},{0,-2.91667},{0,-2.91667}}));
  connect(I_1.n1,k_i2.s1) annotation(Line(origin={-90,30.625}, points={{0,9.375},{0,-9.375}}));
  connect(k_i1.p1,I_1.n1) annotation(Line(origin={-90,43.9886}, points={{0,7.97721},{0,-3.9886},{0,-3.9886}}));
  connect(k_i1.s1,I_connector) annotation(Line(origin={-80,78.1553}, points={{-10,-3.68946},{-10,1.84473},{20,1.84473}}));
  egp_signal=k_p1 - k_p2*g_p - k_p3*i_d - k_p4*i_po;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-107.257,0}, rotation=-270, fillPattern=FillPattern.Solid, extent={{-25.4753,-2.74277},{25.4753,2.74277}}, textString="delayed insulin signal", fontName="Arial")}), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={4.68254,4.83}, fillPattern=FillPattern.Solid, extent={{-77.28,-45.17},{77.28,45.17}}, textString="EGP", fontName="Arial")}));
end EndogenousGlucoseProduction;
