within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model PlasmaGlucose
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  parameter Real V_G=1.88;
  BioChem.Units.Concentration g_p_signal;
  BioChem.Units.Concentration g_p;
  BioChem.Units.Concentration g_signal;
  BioChem.Interfaces.Nodes.ProductConnector EGP_connector annotation(Placement(transformation(origin={4.44089e-16,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.73862,-110}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ModifierConnector G_p_connector annotation(Placement(transformation(origin={-110,-70}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,-70}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstrateConnector E_connector annotation(Placement(transformation(origin={120,-30}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-48.4304}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ProductConnector Ra_connector annotation(Placement(transformation(origin={-80,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-77.9724,110}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstrateConnector G_connector annotation(Placement(transformation(origin={0,80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,110}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance G_p_signal(c=g_p_signal) annotation(Placement(transformation(origin={-110,-23.3921}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance G_signal(c=g_signal) annotation(Placement(transformation(origin={-120,40}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ModifierConnector G_signal_connector annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,1.94}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance G_p(c(
                                   start = 178) = g_p) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction Ra_reaction(k=1) annotation(Placement(transformation(origin={-80,50}, extent={{-10,-10},{10,10}}, rotation=-90)));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction EGP_reaction(k=1) annotation(Placement(transformation(origin={0,-48}, extent={{-10,10},{10,-10}}, rotation=90)));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.U_ii_reaction u_ii_reaction1 annotation(Placement(transformation(origin={90,30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance U_ii annotation(Placement(transformation(origin={120,30}, extent={{-10,-10},{10,10}})));
equation
  connect(U_ii.n1,u_ii_reaction1.p1) annotation(Line(origin={110.625,30}, points={{9.375,0},{-9.375,0}}));
  connect(G_p.n1,u_ii_reaction1.s1) annotation(Line(origin={56.9367,15}, points={{-56.9367,-15},{17.5617,-15},{17.5617,15},{21.8133,15}}));
  connect(EGP_reaction.s1,EGP_connector) annotation(Line(origin={2.10942e-16,-69.625}, points={{-2.33147e-16,10.375},{2.33147e-16,-10.375}}));
  connect(G_p.n1,EGP_reaction.p1) annotation(Line(origin={1.11022e-17,-18.375}, points={{-1.11022e-17,18.375},{1.11022e-17,-18.375}}));
  connect(Ra_connector,Ra_reaction.s1) annotation(Line(origin={-80,70.625}, points={{0,9.375},{0,-9.375}}));
  connect(Ra_reaction.p1,G_p.n1) annotation(Line(origin={-53.3333,12.9167}, points={{-26.6667,25.8333},{-26.6667,-12.9167},{53.3333,-12.9167}}));
  connect(G_p.n1,E_connector) annotation(Line(origin={83.5,-15}, points={{-83.5,15},{23.5,15},{23.5,-15},{36.5,-15}}));
  connect(G_p.n1,G_connector) annotation(Line(origin={0,40}, points={{0,-40},{0,40}}));
  connect(G_p_signal.n1,G_p_connector) annotation(Line(origin={-110,-46.696}, points={{0,23.304},{0,-23.304}}));
  connect(G_signal.n1,G_signal_connector) annotation(Line(origin={-120,20}, points={{0,20},{0,-20}}));
  g_p_signal=g_p;
  g_signal=g_p_signal/V_G;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={9.76996e-15,43.56}, fillPattern=FillPattern.Solid, extent={{-83.88,-33.56},{83.88,33.56}}, textString="Plasma", fontName="Arial"),Text(origin={2.66454e-15,-40}, fillPattern=FillPattern.Solid, extent={{-86.96,-35.65},{86.96,35.65}}, textString="glucose", fontName="Arial")}));
end PlasmaGlucose;
