within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model LiverInsulin
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Units.Concentration s;
  BioChem.Units.Concentration s_signal;
  BioChem.Substances.Substance I_l(c(
                                   start = 5))
                                              annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance S_signal(c=s_signal) annotation(Placement(transformation(origin={-70,50}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.m_3 m_3 annotation(Placement(transformation(origin={-70,0}, extent={{10,-10},{-10,10}})));
  BioChem.Interfaces.Nodes.ProductConnector S_connector(c=s) annotation(Placement(transformation(origin={120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-1.93864}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstrateConnector I_connector annotation(Placement(transformation(origin={7.10543e-15,79.59}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,110}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction S_reaction(k=1) annotation(Placement(transformation(origin={70,-7.21645e-16}, extent={{10,-10},{-10,10}})));
  BioChem.Substances.BoundarySubstance Deg annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}})));
equation
  connect(m_3.p1,Deg.n1) annotation(Line(origin={-100.625,1.11022e-17}, points={{19.375,1.11022e-17},{-19.375,-1.11022e-17}}));
  connect(S_reaction.s1,S_connector) annotation(Line(origin={100.625,-3.71925e-16}, points={{-19.375,-3.71925e-16},{19.375,3.71925e-16}}));
  connect(S_reaction.p1,I_l.n1) annotation(Line(origin={29.375,-3.4972e-16}, points={{29.375,-3.4972e-16},{-29.375,3.4972e-16}}));
  connect(I_connector,I_l.n1) annotation(Line(origin={3.55271e-15,39.795}, points={{3.55271e-15,39.795},{-3.55271e-15,-39.795}}));
  connect(I_l.n1,m_3.s1) annotation(Line(origin={-29.375,-1.11022e-17}, points={{29.375,1.11022e-17},{-29.375,-1.11022e-17}}));
  connect(S_signal.n1,m_3.m1) annotation(Line(origin={-70,29.5}, points={{0,20.5},{0,-20.5}}));
  s=s_signal;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={0.247749,43.7203}, fillPattern=FillPattern.Solid, extent={{-92.2066,-43.7203},{92.2066,43.7203}}, textString="Liver", fontName="Arial"),Text(origin={-0.875609,-51.2968}, fillPattern=FillPattern.Solid, extent={{-89.1244,-31.2968},{89.1244,31.2968}}, textString="insulin", fontName="Arial")}));
end LiverInsulin;
