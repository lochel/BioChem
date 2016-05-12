within BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue;
model Adipocyte
  extends BioChem.Compartments.Compartment(V(
                                           start = 1.0));
  BioChem.Substances.Substance IR(c(
                                  start = 2340000000000.0))
                                                           annotation(Placement(transformation(origin={-110,60}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance IR_tot annotation(Placement(transformation(origin={110,60}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance IRS1(c(
                                    start = 16100000000.0))
                                                           annotation(Placement(transformation(origin={-80,30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance IRS1_P(c(
                                      start = 0))
                                                 annotation(Placement(transformation(origin={-20,30}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction2(k_1=0.038, k_2=580000000) annotation(Placement(transformation(origin={-50,30}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction3(k_1=1.348, k_2=24800000) annotation(Placement(transformation(origin={-20,0}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance PKB(c(
                                   start = 16800000))
                                                     annotation(Placement(transformation(origin={-50,0}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance PKB_P(c(
                                     start = 0))
                                                annotation(Placement(transformation(origin={10,0}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ActivationReaction activationReaction4(k_1=0.019, k_2=336000000) annotation(Placement(transformation(origin={10,-30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance IRS1_tot annotation(Placement(transformation(origin={110,30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance PKB_tot annotation(Placement(transformation(origin={110,0}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.SignalSubstance GLUT4_tot annotation(Placement(transformation(origin={110,-30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance GlucoseUtilization annotation(Placement(transformation(origin={110,-80}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ModifierConnector modifierConnector1 annotation(Placement(transformation(origin={-80,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-110,0}, extent={{-10,-10},{10,10}})));
  BioChem.Interfaces.Nodes.ProductConnector productConnector1 annotation(Placement(transformation(origin={-7.77156e-16,-80}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.22125e-15,-110}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance GLUT4_MEMBRANE(c(
                                              start = 0))
                                                         annotation(Placement(transformation(origin={40,-30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance GLUT4_CYTOSOL(c(
                                             start = 580000000))
                                                                annotation(Placement(transformation(origin={-20,-30}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance IR_insulin(c(
                                          start = 0))
                                                     annotation(Placement(transformation(origin={-50,60}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.MM_insulin MM_insulin1(k_1=2.464, k_2=54100000000.0, Km=1499) annotation(Placement(transformation(origin={-80,60}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.GlucoseUptakeReaction
                                                                                 GlucoseUptake_GLUT4(k=12.435, glut_1=0.071, Km1=0.012, Km4=3462, k_wholebody=2.45) annotation(Placement(transformation(origin={40,-80}, extent={{-10,-10},{10,10}})));
equation
  connect(productConnector1,GlucoseUptake_GLUT4.s1) annotation(Line(origin={14.375,-80}, points={{-14.375,0},{14.375,0}}));
  connect(GlucoseUptake_GLUT4.p1,GlucoseUtilization.n1) annotation(Line(origin={80.625,-80}, points={{-29.375,0},{29.375,0}}));
  connect(GLUT4_MEMBRANE.n1,GlucoseUptake_GLUT4.m1) annotation(Line(origin={40,-50.5}, points={{0,20.5},{0,-20.5}}));
  connect(MM_insulin1.p1,IR_insulin.n1) annotation(Line(origin={-59.375,60}, points={{-9.375,0},{9.375,0}}));
  connect(modifierConnector1,MM_insulin1.m1) annotation(Line(origin={-80,79.5}, points={{0,10.5},{0,-10.5}}));
  connect(IR.n1,MM_insulin1.s1) annotation(Line(origin={-100.625,60}, points={{-9.375,0},{9.375,0}}));
  connect(IR_insulin.n1,activationReaction2.m1) annotation(Line(origin={-50,49.5}, points={{0,10.5},{0,-10.5}}));
  connect(GLUT4_CYTOSOL.n1,activationReaction4.s1) annotation(Line(origin={-10.625,-30}, points={{-9.375,0},{9.375,0}}));
  connect(activationReaction4.p1,GLUT4_MEMBRANE.n1) annotation(Line(origin={30.625,-30}, points={{-9.375,0},{9.375,0}}));
  IR_tot.c=IR.c + IR_insulin.c;
  IRS1_tot.c=IRS1.c + IRS1_P.c;
  PKB_tot.c=PKB.c + PKB_P.c;
  GLUT4_tot.c=GLUT4_CYTOSOL.c + GLUT4_MEMBRANE.c;
  connect(PKB_P.n1,activationReaction4.m1) annotation(Line(origin={10,-10.5}, points={{0,10.5},{-1.77636e-15,-10.5}}));
  connect(activationReaction3.p1,PKB_P.n1) annotation(Line(origin={0.625,1.11022e-17}, points={{-9.375,1.11022e-17},{9.375,-1.11022e-17}}));
  connect(PKB.n1,activationReaction3.s1) annotation(Line(origin={-40.625,1.11022e-17}, points={{-9.375,-1.11022e-17},{9.375,1.11022e-17}}));
  connect(IRS1_P.n1,activationReaction3.m1) annotation(Line(origin={-20,19.5}, points={{0,10.5},{0,-10.5}}));
  connect(activationReaction2.p1,IRS1_P.n1) annotation(Line(origin={-29.375,30}, points={{-9.375,-3.55271e-15},{9.375,0}}));
  connect(IRS1.n1,activationReaction2.s1) annotation(Line(origin={-70.625,30}, points={{-9.375,0},{9.375,0}}));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="", revisions=""));
end Adipocyte;
