within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model PlasmaInsulin
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Units.Concentration i_p_signal;
  BioChem.Units.Concentration i_p;
  BioChem.Units.Concentration i_signal;
  parameter BioChem.Units.Volume V_I=0.05;
  BioChem.Substances.Substance I_p(c(start=1.25)=i_p) annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction m_4(k=0.194) annotation(Placement(transformation(origin={-60,0}, extent={{10,-10},{-10,10}})));
  BioChem.Interfaces.Nodes.ModifierConnector I_p_connector annotation(Placement(transformation(origin={120,0}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,4.44089e-16}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ProductConnector I_connector annotation(Placement(transformation(origin={0,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,-110}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ModifierConnector I_signal_connector annotation(Placement(transformation(origin={120,-30}, extent={{-10,-10},{10,10}}), iconTransformation(origin={110,-56.82}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance I_p_signal(c=i_p_signal) annotation(Placement(transformation(origin={60,7.77156e-16}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance I_signal(c=i_signal) annotation(Placement(transformation(origin={60,-30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance Deg annotation(Placement(transformation(origin={-120,0}, extent={{-10,-10},{10,10}})));
equation
  connect(Deg.n1,m_4.p1) annotation(Line(origin={-95.625,1.11022e-17}, points={{-24.375,-1.11022e-17},{24.375,1.11022e-17}}));
  connect(I_signal.n1,I_signal_connector) annotation(Line(origin={90,-30}, points={{-30,0},{30,0}}));
  connect(I_p_signal.n1,I_p_connector) annotation(Line(origin={90,3.88578e-16}, points={{-30,3.88578e-16},{30,-3.88578e-16}}));
  connect(I_p.n1,I_connector) annotation(Line(origin={0,-40}, points={{0,40},{0,-40}}));
  connect(m_4.s1,I_p.n1) annotation(Line(origin={-24.375,-1.11022e-17}, points={{-24.375,-1.11022e-17},{24.375,1.11022e-17}}));
  i_p_signal=i_p;
  i_signal=i_p/V_I;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-7.10543e-15,46.05}, fillPattern=FillPattern.Solid, extent={{-93.8311,-36.05},{93.8311,36.05}}, textString="Plasma", fontName="Arial"),Text(origin={-3.55271e-15,-36.936}, fillPattern=FillPattern.Solid, extent={{-86.0653,-45},{86.0653,45}}, textString="insulin", fontName="Arial")}));
end PlasmaInsulin;
