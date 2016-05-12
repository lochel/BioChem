within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts;
model GastroIntestinalTract
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Units.Concentration ra_signal;
  BioChem.Units.Concentration q_sto;
  BioChem.Units.Concentration d;
  parameter Real f=0.9;
  parameter Real BW=78;
  BioChem.Substances.Substance Q_sto2(c(
                                      start = 0))
                                                 annotation(Placement(transformation(origin={0,50}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance Q_gut(c(
                                     start = 0))
                                                annotation(Placement(transformation(origin={0,-20}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_abs(k=0.057) annotation(Placement(transformation(origin={38.33,-20}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.k_empt k_empt1 annotation(Placement(transformation(origin={0,17.8419}, extent={{-10,-10},{10,10}}, rotation=-90)));
  BioChem.Substances.Substance Q_sto1(c(
                                      start = 0))
                                                 annotation(Placement(transformation(origin={-60,50}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.dirac dirac annotation(Placement(transformation(origin={-100,50}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance Q_sto(c(start=0)=q_sto) annotation(Placement(transformation(origin={100,30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance D(c(start=0)=d) annotation(Placement(transformation(origin={100,5.76656}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.SubstrateConnector Ra_connector annotation(Placement(transformation(origin={0,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={0,-110}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance GlucoseIntake(c(
                                                     start = 78000))
                                                                    annotation(Placement(transformation(origin={-130,50}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.FlowReaction k_gri(k=0.0558) annotation(Placement(transformation(origin={-28.43,50}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance End annotation(Placement(transformation(origin={80,-20}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance Ra_calc(c=ra_signal) annotation(Placement(transformation(origin={0,-50}, extent={{-10,-10},{10,10}})));
equation
  connect(Ra_calc.n1,Ra_connector) annotation(Line(origin={0,-65}, points={{0,15},{0,-15}}));
  connect(k_abs.p1,End.n1) annotation(Line(origin={64.79,-20}, points={{-15.21,0},{15.21,0}}));
  connect(Q_sto1.n1,k_gri.s1) annotation(Line(origin={-49.84,50}, points={{-10.16,0},{10.16,0}}));
  connect(k_gri.p1,Q_sto2.n1) annotation(Line(origin={-8.59,50}, points={{-8.59,0},{8.59,0}}));
  connect(GlucoseIntake.n1,dirac.s1) annotation(Line(origin={-120.625,50}, points={{-9.375,0},{9.375,0}}));
  connect(D.n1,k_empt1.m2) annotation(Line(origin={34.2512,9.30423}, points={{65.7488,-3.53767},{-20.2487,-3.53767},{-20.2487,3.53767},{-25.2512,3.53767}}));
  connect(Q_sto.n1,k_empt1.m1) annotation(Line(origin={34.2512,26.4209}, points={{65.7488,3.57905},{-20.2487,3.57905},{-20.2487,-3.57905},{-25.2512,-3.57905}}));
  connect(dirac.p1,Q_sto1.n1) annotation(Line(origin={-74.375,50}, points={{-14.375,0},{14.375,0}}));
  connect(k_empt1.p1,Q_gut.n1) annotation(Line(origin={1.11022e-17,-6.70406}, points={{1.11022e-17,13.2959},{-1.11022e-17,-13.2959}}));
  connect(Q_sto2.n1,k_empt1.s1) annotation(Line(origin={-1.11022e-17,39.5459}, points={{1.11022e-17,10.4541},{-1.11022e-17,-10.4541}}));
  connect(Q_gut.n1,k_abs.s1) annotation(Line(origin={13.54,-20}, points={{-13.54,0},{13.54,0}}));
  ra_signal=f*k_abs.k*Q_gut.c/BW;
  q_sto=Q_sto1.c + Q_sto2.c;
  d=GlucoseIntake.c;
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={-7.23323,45}, fillPattern=FillPattern.Solid, extent={{-45,-45},{45,45}}, textString="GI", fontName="Arial"),Text(origin={-2.44435,-51.2385}, fillPattern=FillPattern.Solid, extent={{-93.0638,-41.2385},{93.0638,41.2385}}, textString="tract", fontName="Arial")}));
end GastroIntestinalTract;
