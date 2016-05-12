within BioChem.Examples.MultiCompartments.Utilities;
model TCA "Tricarboxylic acid cycle"
  extends BioChem.Compartments.Compartment;
  BioChem.Substances.Substance oxaloacetate(c(
                                            start = 1/10000))
                                                             annotation(Placement(transformation(origin={-30.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa5 annotation(Placement(transformation(origin={-70.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=90)));
  BioChem.Substances.BoundarySubstance succinateThiokinase annotation(Placement(transformation(origin={-0.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.Substance alphaKetoglutarate annotation(Placement(transformation(origin={70.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Reactions.MassAction.Irreversible.BiUni.Buifa buifa annotation(Placement(transformation(origin={-0.0,65.5702}, extent={{-10.0,-11.0},{10.0,11.0}}, rotation=-360)));
  BioChem.Substances.BoundarySubstance fumarase annotation(Placement(transformation(origin={-90.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa3 annotation(Placement(transformation(origin={-0.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180)));
  BioChem.Substances.Substance succinate annotation(Placement(transformation(origin={-30.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa1 annotation(Placement(transformation(origin={70.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=270)));
  BioChem.Substances.Substance isocitrate annotation(Placement(transformation(origin={70.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.Substance malate annotation(Placement(transformation(origin={-70.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.BoundarySubstance succinateDehydrogenase annotation(Placement(transformation(origin={-70.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.Substance succinylCoA annotation(Placement(transformation(origin={30.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.Substance fumarate annotation(Placement(transformation(origin={-70.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.BoundarySubstance alphaKetoglutarateDehydrogenase annotation(Placement(transformation(origin={70.0,-70.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa4 annotation(Placement(transformation(origin={-55.8579,45.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=45)));
  BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa6 annotation(Placement(transformation(origin={-55.8579,-55.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=135)));
  BioChem.Reactions.MassAction.Reversible.UniUni.Uurfa uurfa(k2=1) annotation(Placement(transformation(origin={55.8579,45.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-45)));
  BioChem.Reactions.MassAction.Irreversible.UniUni.Uuifa uuifa2 annotation(Placement(transformation(origin={55.8579,-55.8579}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-135)));
  BioChem.Substances.Substance acetylCoA annotation(Placement(transformation(origin={-30.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.Substance citrate annotation(Placement(transformation(origin={30.0,65.5702}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.BoundarySubstance malateDehydrogenase annotation(Placement(transformation(origin={-70.0,60.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
  BioChem.Substances.BoundarySubstance aconitase annotation(Placement(transformation(origin={70.0,60.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
  BioChem.Substances.BoundarySubstance citrateSynthase annotation(Placement(transformation(origin={-0.0,90.0}, extent={{-10.0,10.0},{10.0,-10.0}})));
  BioChem.Substances.BoundarySubstance isocitrateDehydrogenase annotation(Placement(transformation(origin={90.0,-5.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Interfaces.Nodes.SubstanceConnector sPyruvate annotation(Placement(transformation(origin={-30.0,94.5861}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=180), iconTransformation(origin={-0.0,115.0}, extent={{-15.0,-15.0},{15.0,15.0}}, rotation=180)));
equation
  connect(acetylCoA.n1,sPyruvate) annotation(Line(origin={-30.0,89.7241}, points={{0.0,-9.7241},{0.0,4.862},{0.0,4.862}}));
  connect(isocitrateDehydrogenase.n1,uuifa1.aF1) annotation(Line(origin={86.3333,-5.0}, points={{3.6667,0.0},{3.6667,0.0},{-7.3333,0.0}}));
  connect(buifa.aF1,citrateSynthase.n1) annotation(Line(origin={-0.0,82.7351}, points={{-0.0,-7.2649},{0.0,7.2649}}, smooth=Smooth.Bezier));
  connect(aconitase.n1,uurfa.aF1) annotation(Line(origin={-0.0,10.0}, points={{70.0,50.0},{62.2218,42.2218}}));
  connect(malateDehydrogenase.n1,uuifa4.aF1) annotation(Line(origin={-0.0,10.0}, points={{-70.0,50.0},{-62.2218,42.2218}}));
  connect(citrate.n1,buifa.p1) annotation(Line(origin={20.3673,64.1776}, points={{9.6327,1.3925},{4.3503,1.3925},{-4.8657,1.3925},{-9.1173,1.3925}}, smooth=Smooth.Bezier));
  connect(uurfa.s1,citrate.n1) annotation(Line(origin={-0.0,10.0}, points={{47.9029,43.8128},{30.0,55.5702}}, smooth=Smooth.Bezier));
  connect(buifa.s1,acetylCoA.n1) annotation(Line(origin={-18.8125,75.5351}, points={{7.5625,-4.4649},{1.8125,-4.4649},{1.8125,4.4649},{-11.1875,4.4649}}, smooth=Smooth.Bezier));
  connect(uuifa2.aF1,alphaKetoglutarateDehydrogenase.n1) annotation(Line(origin={-0.0,10.0}, points={{62.2218,-72.2218},{70.0,-80.0}}, smooth=Smooth.Bezier));
  connect(succinylCoA.n1,uuifa2.p1) annotation(Line(origin={34.29,-58.98}, points={{-4.29,-11.02},{13.6129,-4.8328}}, smooth=Smooth.Bezier));
  connect(uuifa2.s1,alphaKetoglutarate.n1) annotation(Line(origin={-0.0,10.0}, points={{63.8128,-57.9029},{70.0,-40.0}}));
  connect(uurfa.p1,isocitrate.n1) annotation(Line(origin={-0.0,10.0}, points={{63.8128,27.9029},{70.0,10.0}}, smooth=Smooth.Bezier));
  connect(uuifa6.aF1,succinateDehydrogenase.n1) annotation(Line(origin={-0.0,10.0}, points={{-62.2218,-72.2218},{-70.0,-80.0}}));
  connect(succinate.n1,uuifa6.s1) annotation(Line(origin={-0.0,10.0}, points={{-30.0,-80.0},{-47.9029,-73.8128}}, smooth=Smooth.Bezier));
  connect(uuifa6.p1,fumarate.n1) annotation(Line(origin={-0.0,10.0}, points={{-63.8128,-57.9029},{-70.0,-40.0}}, smooth=Smooth.Bezier));
  connect(uuifa4.p1,oxaloacetate.n1) annotation(Line(origin={-0.0,10.0}, points={{-47.9029,43.8128},{-30.0,50.0}}, smooth=Smooth.Bezier));
  connect(malate.n1,uuifa4.s1) annotation(Line(origin={-0.0,10.0}, points={{-70.0,10.0},{-63.8128,27.9029}}, smooth=Smooth.Bezier));
  connect(uuifa5.s1,fumarate.n1) annotation(Line(origin={-70.0,-23.125}, points={{0.0,6.875},{0.0,-6.875}}));
  connect(uuifa3.s1,succinylCoA.n1) annotation(Line(origin={20.625,-70.0}, points={{-9.375,0.0},{9.375,0.0}}, smooth=Smooth.Bezier));
  connect(uuifa5.p1,malate.n1) annotation(Line(origin={-70.0,13.125}, points={{0.0,-6.875},{0.0,6.875}}));
  connect(fumarase.n1,uuifa5.aF1) annotation(Line(origin={-86.3333,-5.0}, points={{-3.6667,0.0},{-3.6667,0.0},{7.3333,0.0}}));
  connect(uuifa1.s1,isocitrate.n1) annotation(Line(origin={70.0,13.125}, points={{0.0,-6.875},{0.0,6.875}}));
  connect(uuifa1.p1,alphaKetoglutarate.n1) annotation(Line(origin={-0.0,10.0}, points={{70.0,-26.25},{70.0,-32.01},{70.0,-40.0}}, smooth=Smooth.Bezier));
  connect(succinate.n1,uuifa3.p1) annotation(Line(origin={-20.625,-70.0}, points={{-9.375,0.0},{9.375,0.0}}));
  connect(succinateThiokinase.n1,uuifa3.aF1) annotation(Line(origin={-0.0,-82.6667}, points={{-0.0,-7.3333},{-0.0,3.6667},{0.0,3.6667}}));
  connect(buifa.s2,oxaloacetate.n1) annotation(Line(origin={-0.0,10.0}, points={{-11.25,50.0702},{-30.0,50.0}}));
  annotation(Documentation(info="<html>
 <p>
 A simple TCA model.<br>
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>"),
        Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(origin={0.0,-0.0}, lineColor={0,0,255}, fillColor={255,255,255}, extent={{-100.0,-100.0},{100.0,100.0}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-81.68,57.55},{-56.68,82.55}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-84.01,-79.94},{-59.01,-54.94}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-12.5,-112.5},{12.5,-87.5}}),Ellipse(lineColor={0,85,255}, fillColor={0,85,255}, fillPattern=FillPattern.Solid, extent={{-112.5,-12.5},{-87.5,12.5}}),Ellipse(lineColor={0,0,255}, fillColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{58.28,-81.54},{83.28,-56.54}}),Ellipse(lineColor={0,0,255}, fillColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{57.82,56.16},{82.82,81.16}}),Ellipse(lineColor={0,0,255}, fillColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{87.5,-12.5},{112.5,12.5}})}));
end TCA;
