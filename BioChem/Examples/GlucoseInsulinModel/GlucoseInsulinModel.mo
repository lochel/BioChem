within BioChem.Examples.GlucoseInsulinModel;
model GlucoseInsulinModel
  extends BioChem.Compartments.MainCompartment(V(
                                               start = 1.0));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.GastroIntestinalTract GastroIntestinalTract annotation(Placement(transformation(origin={-50,80}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.TissueGlucose TissueGlucose annotation(Placement(transformation(origin={0,60}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.GlucoseRenalExcretion GlucoseRenalExcretion annotation(Placement(transformation(origin={125.793,-4.74893}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.PlasmaGlucose PlasmaGlucose annotation(Placement(transformation(extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.PlasmaInsulin PlasmaInsulin annotation(Placement(transformation(origin={-80,0}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.UtilizationMuscleTissue UtilizationMuscleTissue annotation(Placement(transformation(origin={70,40}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ReversibleFlowReaction
                                                                                  k_1_k_2(k_1=0.065, k_2=0.079) annotation(Placement(transformation(origin={0,30}, extent={{-6.52644,-6.52644},{6.52644,6.52644}}, rotation=-270)));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.LiverInsulin LiverInsulin annotation(Placement(transformation(origin={-80,-73.9076}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.EndogenousGlucoseProduction
                                                                                   EndogenousGlucoseProduction annotation(Placement(transformation(origin={-40,-45.0779}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions.ReversibleFlowReaction
                                                                                  m_1_m_2(k_2=0.484, k_1=0.19) annotation(Placement(transformation(origin={-80,-36.3608}, extent={{-6.36084,6.36084},{6.36084,-6.36084}}, rotation=90)));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.BetaCell BetaCell annotation(Placement(transformation(origin={23.4019,-74.2468}, extent={{-10,-10},{10,10}})));
  BioChem.Examples.GlucoseInsulinModel.Utilities.Parts.AdiposeTissue.AdiposeTissue
                                                                                   adiposeTissue1 annotation(Placement(transformation(origin={70,80}, extent={{-10,-10},{10,10}})));
equation
  connect(UtilizationMuscleTissue.I_connector,PlasmaInsulin.I_signal_connector) annotation(Line(origin={-35.44,35.5}, points={{94.44,12.857},{55.44,12.86},{48.33,64.5},{-52.076,70.3333},{-34.56,6.90118},{-26.6353,-15.5},{-24.56,-41.27},{-33.56,-41.27},{-33.56,-41.182}}, color={255,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
  connect(adiposeTissue1.I_connector,PlasmaInsulin.I_signal_connector) annotation(Line(origin={-42.08,44.79}, points={{101.078,43.5978},{58.03,43.6},{12.08,61.3825},{-41.3655,52.9023},{-34.2421,19.3206},{-23.7266,-12.2259},{-17.92,-36.99},{-17.92,-47.1645},{-19.65,-50.22},{-26.92,-50.22},{-26.9223,-50.4722}}, color={255,0,255}, pattern=LinePattern.Dash, smooth=Smooth.Bezier));
  connect(TissueGlucose.U_idf_connector,adiposeTissue1.G_t_connector) annotation(Line(origin={38.75,76.58}, points={{-27.75,-10.58},{-8.75,3.42},{16.25,3.58},{20.25,3.58}}, color={0,0,128}, thickness=1, arrow={Arrow.None,Arrow.Filled}, smooth=Smooth.Bezier));
  connect(BetaCell.G_connector,PlasmaGlucose.G_signal_connector) annotation(Line(origin={-0.71,-20.49}, points={{24.11,-42.76},{22.75,-9.7},{-17.27,-9.7},{-17.27,20.49},{-10.29,20.68}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
  connect(BetaCell.G_p_connector,PlasmaGlucose.G_p_connector) annotation(Line(origin={3.93,-21.62}, points={{26.99,-41.63},{26.31,-4.5},{-18.85,-4.5},{-18.85,14.62},{-14.93,14.62}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
  connect(GlucoseRenalExcretion.G_p_connector,PlasmaGlucose.G_p_connector) annotation(Line(origin={37.56,-14.05}, points={{77.23,0.94},{56.28,-11.35},{-17.56,-11.35},{-52.49,-11.35},{-52.49,7.6},{-48.56,7.6},{-48.56,7.05}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
  connect(PlasmaGlucose.G_p_connector,EndogenousGlucoseProduction.G_p_connector) annotation(Line(origin={-30.33,-16.03}, points={{19.33,9.03},{-9.67,9.03},{-9.67,-18.05}}, color={0,0,255}, pattern=LinePattern.Dash, arrow={Arrow.None,Arrow.Open}, smooth=Smooth.Bezier));
  connect(EndogenousGlucoseProduction.I_po_connector,BetaCell.I_po_connector) annotation(Line(origin={1.27,-51.13}, points={{-30.27,6.06},{15.13,6.06},{15.13,-12.11}}, color={255,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
  connect(EndogenousGlucoseProduction.I_connector,PlasmaInsulin.I_signal_connector) annotation(Line(origin={-54.49,-15.15}, points={{7.26,-18.93},{7.26,9.47},{-14.51,9.47}}, color={255,0,255}, pattern=LinePattern.Dash, arrow={Arrow.Open,Arrow.None}, smooth=Smooth.Bezier));
  connect(TissueGlucose.U_idm_connector,UtilizationMuscleTissue.G_t_connector) annotation(Line(origin={45,46.91}, points={{-34,6.74021},{-12.0967,-6.91},{10,-6.74},{14,-6.748}}, color={0,0,128}, thickness=1, arrow={Arrow.None,Arrow.Filled}, smooth=Smooth.Bezier));
  connect(LiverInsulin.S_connector,BetaCell.S_connector) annotation(Line(origin={-9.95,-74.17}, points={{-59.05,0.07},{18.35,0.07},{18.35,-0.07},{22.35,-0.07}}, color={128,0,128}, thickness=1, arrow={Arrow.Filled,Arrow.None}, smooth=Smooth.Bezier));
  connect(PlasmaGlucose.EGP_connector,EndogenousGlucoseProduction.EGP_connector) annotation(Line(origin={-19.75,-20.03}, points={{19.58,9.03},{19.58,0.03},{-10.25,0.03},{-13.15,-4.55},{-12.87,-14.05}}, color={0,0,128}, thickness=1, arrow={Arrow.Filled,Arrow.None}, smooth=Smooth.Bezier));
  connect(PlasmaGlucose.E_connector,GlucoseRenalExcretion.productConnector1) annotation(Line(origin={86.84,-4.8}, points={{-75.84,-0.05},{23.95,-0.05},{23.95,0.05},{27.95,0.05}}, color={0,0,128}, thickness=1, arrow={Arrow.None,Arrow.Filled}, smooth=Smooth.Bezier));
  connect(PlasmaGlucose.Ra_connector,GastroIntestinalTract.Ra_connector) annotation(Line(origin={-28.9,31.7}, points={{21.1,-20.7},{21.1,-8.3},{-21.1,-8.3},{-21.1,37.3}}, color={0,0,128}, thickness=1, arrow={Arrow.Filled,Arrow.None}, smooth=Smooth.Bezier));
  connect(m_1_m_2.p1,PlasmaInsulin.I_connector) annotation(Line(origin={-80,-20.1024}, points={{0,-9.10245},{0,9.10245}}, color={128,0,128}, thickness=1, smooth=Smooth.Bezier));
  connect(m_1_m_2.s1,LiverInsulin.I_connector) annotation(Line(origin={-80,-53.2122}, points={{0,9.6954},{0,-9.6954}}, color={128,0,128}, thickness=1, smooth=Smooth.Bezier));
  connect(k_1_k_2.p1,TissueGlucose.G_connector) annotation(Line(origin={0,43.17}, points={{0,-5.83},{0,5.83}}, color={0,0,128}, thickness=1, smooth=Smooth.Bezier));
  connect(k_1_k_2.s1,PlasmaGlucose.G_connector) annotation(Line(origin={0,16.83}, points={{0,5.83},{0,-5.83}}, color={0,0,128}, thickness=1, smooth=Smooth.Bezier));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(origin={-39.6875,-1.36711}, fillColor={255,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-55.2911,-15.5929},{55.2911,15.5929}}),Rectangle(origin={-57.5522,-75}, fillColor={128,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-40.931,-15},{40.931,15}}),Rectangle(origin={-40.7051,-45.0134}, fillColor={128,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-24.0839,-16.859},{24.0839,16.859}}),Rectangle(origin={17.3745,60}, fillColor={255,170,127}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-35,-18.3307},{35,18.3307}}),Rectangle(origin={70,58.6765}, fillColor={255,170,127}, pattern=LinePattern.None, fillPattern=FillPattern.Solid, extent={{-20,-38.6765},{20,38.6765}}),Line(origin={100,-55.25}, points={{-8.26,0},{8.26,0}}, color={0,0,128}, thickness=1),Text(origin={126.135,-55.59}, fillPattern=FillPattern.Solid, extent={{-15.6548,-4.41},{15.6548,4.41}}, textString="Glucose flow", fontName="Arial"),Line(origin={100,-66.03}, points={{-8.26,0},{8.26,0}}, color={0,0,255}, pattern=LinePattern.Dash),Line(origin={100,-85.28}, points={{-8.26,0},{8.26,0}}, color={255,0,255}, pattern=LinePattern.Dash),Line(origin={100,-75.36}, points={{-8.26,0},{8.26,0}}, color={128,0,128}, thickness=1),Text(origin={128.34,-65.59}, fillPattern=FillPattern.Solid, extent={{-17.8596,-4.41},{17.8596,4.41}}, textString="Glucose signal", fontName="Arial"),Text(origin={124.953,-75.59}, fillPattern=FillPattern.Solid, extent={{-13.3507,-4.41},{13.3507,4.41}}, textString="Insulin flow", fontName="Arial"),Text(origin={126.987,-85.59}, fillPattern=FillPattern.Solid, extent={{-15.3871,-4.41},{15.3871,4.41}}, textString="Insulin signal", fontName="Arial")}), experiment(StartTime=0.0, StopTime=420, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06), Documentation(info="<html>
<h1>A Whole Body Model of the Glucose Insulin System</h1>

This model is presented in <i>Hierarchical modeling of diabetes</i> by
Elin Nyman, ISRN:LiU-IKE-EX-09/14. Link&ouml;ping University 2009.<br><br>

This whole-body model of the glucose insulin system shows the flows and concentrations of insulin and glucose during and after a meal. Mechanistic details on a cellular level are included in the module describing the fat tissue. The model can be used to study diabetes and other related diseases.
<h2>The Fat Tissue Module</h2>
The module describing the fat cells includes the main parts of the insulin signaling network of fat cells. This process starts with insulin molecules that bind to the insulin receptor (IR) in the cell membrane. This activates (phosphorylates) IR. Active IR phosphorylates the insulin receptor substrate protein 1 (IRS1) inside the cell on selective tyrosine sites. These phosphorylations are used as docking sites by downstream effector molecules. The next important step in this path is the activation of protein kinase B (PKB). PKB regulates the translocation of vesicles including glucose transporter 4 (GLUT4) from the cytosol to the plasma membrane. The vesicles merge into the membrane where GLUT4 starts to transport glucose from the interstitial fluid to the inside of the cell. This signaling cascade is shown in Figure 1. GLUT1 or glucose transporter 1 is the other glucose transporter that exists in fat cells. GLUT1 continuously transports small amounts of glucose into the cells for the basal needs.


<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Insulin.png\" alt=\"Fig1: A simplified picture of the insulin signaling network and the glucose uptake in fat cells\"><br>
<i>Figure 1: A simplified picture of the insulin signaling network and the glucose uptake in fat cells.</i><br>


<h2>Simulations</h2>
The simulation results of the whole body level are shown in the  <a href=\"#fig2\">Figure 2</a>,  <a href=\"#fig3\">Figure 3</a> and  <a href=\"#fig4\">Figure 4</a>. The concentrations of insulin and glucose are shown in <a href=\"#fig2\">Figure 2</a> and the three flows: insulin from beta cells to liver, glucose from liver to plasma, and glucose from intestine to plasma, in <a href=\"#fig3\">Figure 3</a>.

<a href=\"#fig4\">Figure 4</a> shows a simulation of the glucose uptake by fat cells.<br>





<a name=\"fig2\"></a>
<img src=\"modelica://BioChem/Resources/Images/Glucose2.png\" alt=\"Fig2: Simulation results\">
<a name=\"fig3\"></a>
<img src=\"modelica://BioChem/Resources/Images/Glucose3.png\" alt=\"Fig3: Simulation results\">
<a name=\"fig4\"></a>
<img src=\"modelica://BioChem/Resources/Images/Glucose4.png\" alt=\"Fig4: Simulation results\">


</html>",
      revisions=""));
end GlucoseInsulinModel;
