within BioChem.Examples.MultiCompartments;
model GlucoseMetabolism "Glycolysis and the TCA"
  extends BioChem.Compartments.Compartment;
  Substances.Substance Glucose(c(
                               start = 1/1000)) "Glucose"
                                                         annotation(Placement(transformation(origin={-0.0,140.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui5(k1=1) annotation(Placement(transformation(origin={0.0,120.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
  Substances.Substance G6P(c(
                           start = 0)) "Glucose-6-phosphate"
                                                            annotation(Placement(transformation(origin={0.0,100.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Reactions.MassAction.Reversible.UniUni.Uur uur(k1=1) annotation(Placement(transformation(origin={-0.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
  Substances.Substance F6P(c(
                           start = 0)) "Fructose-6-phosphate"
                                                             annotation(Placement(transformation(origin={-0.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui annotation(Placement(transformation(origin={0.0,40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
  Substances.Substance F16BP(c(
                             start = 0)) "Fructose-1,6-bisphosphate"
                                                                    annotation(Placement(transformation(origin={-0.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  Reactions.MassAction.Irreversible.UniBi.Ubi ubi annotation(Placement(transformation(origin={-0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
  Reactions.MassAction.Reversible.UniUni.Uur uur1 annotation(Placement(transformation(origin={0.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Substances.Substance G3P(c(
                           start = 0)) "Glyceraldehyde-3-phosphate"
                                                                   annotation(Placement(transformation(origin={-30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Substances.Substance DHAP1(c(
                             start = 0)) "Dihydroxyacetone phosphate"
                                                                     annotation(Placement(transformation(origin={30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Substances.Substance GA3P(c(
                            start = 0)) "Glycerate-3-phosphate"
                                                               annotation(Placement(transformation(origin={-0.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Substances.Substance Pyruvate(c(
                                start = 0))
                                           annotation(Placement(transformation(origin={-0.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Examples.MultiCompartments.Utilities.TCA TCA1 annotation(Placement(transformation(origin={70.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa annotation(Placement(transformation(origin={30.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Substances.Substance G2P1(c(
                            start = 0)) "Glycerate-2-phosphate"
                                                               annotation(Placement(transformation(origin={-60.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Substances.Substance PEP1(c(
                            start = 0)) "Phosphoenol pyruvate"
                                                              annotation(Placement(transformation(origin={-60.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Reactions.MassAction.Reversible.UniUni.Uur uur2 annotation(Placement(transformation(origin={-30.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Reactions.MassAction.Irreversible.UniUni.Uui uui4 annotation(Placement(transformation(origin={-30.0,-130.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Reactions.MassAction.Irreversible.UniUni.Uui uui3 annotation(Placement(transformation(origin={-80.0,-105.6444}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
  Substances.Substance G13BP(c(
                             start = 0)) "Glycerate-1,3-bisphosphate"
                                                                     annotation(Placement(transformation(origin={60.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Reactions.MassAction.Irreversible.UniUni.Uui uui2 annotation(Placement(transformation(origin={30.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui1 annotation(Placement(transformation(origin={16.5092,-56.5092}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-28.8073)));
  Substances.BoundarySubstance pyruvateDehydrogenase annotation(Placement(transformation(origin={30.0,-110.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
equation
  connect(uuifa.aF1,pyruvateDehydrogenase.n1) annotation(Line(origin={30.0,-113.6667}, points={{0.0,-7.3333},{0.0,3.6667},{0.0,3.6667}}, smooth=Smooth.Bezier));
  connect(uui1.p1,G13BP.n1) annotation(Line(origin={-1.7639,7.5306}, points={{28.1308,-69.4608},{61.7639,-87.5306}}));
  connect(G3P.n1,uui1.s1) annotation(Line(origin={-1.7639,-2.4694}, points={{-28.2361,-27.5306},{8.4153,-48.6188}}));
  connect(uui2.p1,GA3P.n1) annotation(Line(origin={9.375,-80.0}, points={{9.375,0.0},{-9.375,0.0}}));
  connect(uui2.s1,G13BP.n1) annotation(Line(origin={50.625,-80.0}, points={{-9.375,0.0},{9.375,0.0}}));
  connect(uui3.p1,PEP1.n1) annotation(Line(origin={-73.3333,-125.6315}, points={{-6.6667,8.737},{-6.6667,-4.3685},{13.3333,-4.3685}}, smooth=Smooth.Bezier));
  connect(uui3.s1,G2P1.n1) annotation(Line(origin={-73.3333,-84.7981}, points={{-6.6667,-9.5963},{-6.6667,4.7981},{13.3333,4.7981}}, smooth=Smooth.Bezier));
  connect(PEP1.n1,uui4.s1) annotation(Line(origin={-50.625,-130.0}, points={{-9.375,0.0},{9.375,0.0}}));
  connect(uui4.p1,Pyruvate.n1) annotation(Line(origin={-9.375,-130.0}, points={{-9.375,0.0},{9.375,0.0}}));
  connect(uur2.p1,GA3P.n1) annotation(Line(origin={-9.375,-80.0}, points={{-9.375,0.0},{9.375,0.0}}));
  connect(uur2.s1,G2P1.n1) annotation(Line(origin={-50.625,-80.0}, points={{9.375,0.0},{-9.375,0.0}}));
  connect(TCA1.sPyruvate,uuifa.p1) annotation(Line(origin={50.125,-130.0}, points={{8.875,0.0},{-8.875,0.0}}));
  connect(uuifa.s1,Pyruvate.n1) annotation(Line(origin={-1.76,-2.47}, points={{20.51,-127.53},{1.76,-127.53}}));
  connect(ubi.p2,G3P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{-3.2361,-8.7806},{-3.2361,-17.5306},{-28.2361,-17.5306},{-28.2361,-27.5306}}, smooth=Smooth.Bezier));
  connect(ubi.p1,DHAP1.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{6.7639,-8.7806},{6.7639,-17.5306},{31.7639,-17.5306},{31.7639,-27.5306}}, smooth=Smooth.Bezier));
  connect(uur1.p1,DHAP1.n1) annotation(Line(origin={20.625,-30.0}, points={{-9.375,0.0},{9.375,0.0}}));
  connect(uur1.s1,G3P.n1) annotation(Line(origin={-20.625,-30.0}, points={{9.375,0.0},{-9.375,0.0}}));
  connect(ubi.s1,F16BP.n1) annotation(Line(origin={-0.0,17.0833}, points={{-0.0,-5.8333},{-0.0,2.9167},{0.0,2.9167}}));
  connect(uui.p1,F16BP.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,31.2194},{1.7639,22.4694}}));
  connect(uui.s1,F6P.n1) annotation(Line(origin={0.0,57.0833}, points={{0.0,-5.8333},{0.0,2.9167},{-0.0,2.9167}}));
  connect(uur.p1,F6P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,71.2194},{1.7639,62.4694}}));
  connect(uur.s1,G6P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,93.7194},{1.7639,102.4694}}));
  connect(uui5.p1,G6P.n1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,111.2194},{1.7639,102.4694}}));
  connect(Glucose.n1,uui5.s1) annotation(Line(origin={-1.7639,-2.4694}, points={{1.7639,142.4694},{1.7639,133.7194}}));
  annotation(Documentation(info="<html>
 <p>
 A simple glucose metabolism model which combines the glycolysis and<br>
 the TCA, which is located in another compartment.<br>
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>"),
          Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0.0,100.0},{0.0,25.0},{-25.0,0.0},{0.0,-25.0},{0.0,-100.0}}, color={170,0,0}, thickness=0.5),Line(points={{0.0,25.0},{25.0,0.0},{-25.0,0.0}}, color={170,0,0}, thickness=0.5)}), Diagram(coordinateSystem(extent={{-105,148.5},{105,-148.5}}, preserveAspectRatio=true, grid={10,10})));
end GlucoseMetabolism;
