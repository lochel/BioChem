within BioChem.Examples.CircadianOscillator;
model Container
  extends BioChem.Compartments.MainCompartment(V(start=1));
  import BioChem.Math.*;
  import BioChem.Constants.*;
  BioChem.Examples.CircadianOscillator.Nucleus nucleus(k3t=k3t, k3d=k3d, k6t=k6t, k6d=k6d, k6a=k6a, k7a=k7a, k7d=k7d) annotation(Placement(transformation(origin={-30.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Cytoplasm cytoplasm(trans_per2_cry=trans_per2_cry, k1d=k1d, k2b=k2b, q=q, k2d=k2d, k2t=k2t, trans_Bmal1=trans_Bmal1, k4d=k4d, k5b=k5b, k5d=k5d, k5t=k5t) annotation(Placement(transformation(origin={21.5395,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  inner Real Nucleus_V=nucleus.V
    "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
  inner Real Cytoplasm_V=cytoplasm.V
    "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
  inner Real Container_V=V
    "Variable used to make the compartment volume accessible for inner components. Do not edit.";
  Real trans_per2_cry(start=0);
  parameter Real v1b=9;
  parameter Real c_sbml=0.01;
  parameter Real k1b=1;
  parameter Real k1i=0.56;
  parameter Real hill_coeff=8;
  Real trans_Bmal1(start=0);
  parameter Real v4b=3.6;
  parameter Real r_sbml=3;
  parameter Real k4b=2.16;
  Real y5_y6_y7(start=3.05);
  parameter Real k1d=0.12;
  parameter Real k2b=0.3;
  parameter Real q=2;
  parameter Real k2d=0.05;
  parameter Real k2t=0.24;
  parameter Real k3t=0.02;
  parameter Real k3d=0.12;
  parameter Real k4d=0.75;
  parameter Real k5b=0.24;
  parameter Real k5d=0.06;
  parameter Real k5t=0.45;
  parameter Real k6t=0.06;
  parameter Real k6d=0.12;
  parameter Real k6a=0.09;
  parameter Real k7a=0.003;
  parameter Real k7d=0.09;
equation
  connect(cytoplasm.y5_node,nucleus.y5_node) annotation(Line(origin={-4.2302,-19.0}, points={{14.7697,0.0},{-14.7697,0.0}}));
  connect(nucleus.y6_node,cytoplasm.y6_node) annotation(Line(origin={-4.2302,-1.0}, points={{-14.7697,0.0},{14.7697,0.0}}));
  connect(cytoplasm.y2_node,nucleus.y2_node) annotation(Line(origin={-4.2302,-7.0}, points={{14.7697,0.0},{-14.7697,0.0}}));
  connect(nucleus.y3_node,cytoplasm.y3_node) annotation(Line(origin={-4.2302,-13.0}, points={{-14.7697,0.0},{14.7697,0.0}}));
  trans_per2_cry=v1b*(nucleus.y7.c + c_sbml)/(k1b*(1 + (nucleus.y3.c/k1i)^hill_coeff) + nucleus.y7.c + c_sbml);
  trans_Bmal1=v4b*nucleus.y3.c^r_sbml/(k4b^r_sbml + nucleus.y3.c^r_sbml);
  y5_y6_y7=cytoplasm.y5.c + nucleus.y6.c + nucleus.y7.c;
  annotation(Documentation(info="<html>
<h1>Circadian Oscillator</h1>

This example is the modelica version of the model presented in
<i>Modeling feedback loops of the Mammalian circadian oscillator</i> by
Becker-Weimann S, Wolf J, Herzel H, Kramer A. (Biophysical Journal Volume 87 November 2004 3023-3034)

<h2>Abstract</h2>
The suprachiasmatic nucleus governs daily variations of physiology and behavior in mammals. Within single neurons, interlocked transcriptional/translational feedback loops generate circadian rhythms on the molecular level. We present a mathematical model that reflects the essential features of the mammalian circadian oscillator to characterize the differential roles of negative and positive feedback loops. The oscillations that are obtained have a 24-h period and are robust toward parameter variations even when the positive feedback is replaced by a constantly expressed activator. This demonstrates the crucial role of the negative feedback for rhythm generation. Moreover, it explains the rhythmic phenotype of Rev-erbalpha-/- mutant mice, where a positive feedback is missing. The interplay of negative and positive feedback reveals a complex dynamics. In particular, the model explains the unexpected rescue of circadian oscillations in Per2Brdm1/Cry2-/- double-mutant mice (Per2Brdm1 single-mutant mice are arrhythmic). Here, a decrease of positive feedback strength associated with mutating the Per2 gene is compensated by the Cry2-/- mutation that simultaneously decreases the negative feedback strength. Finally, this model leads us to a testable prediction of a molecular and behavioral phenotype: circadian oscillations should be rescued when arrhythmic Per2Brdm1 mutant mice are crossed with Rev- erbalpha -/- mutant mice.

<h2>Simulations</h2>
The simulation results are shown in the
 <a href=\"#fig1\">Figure 1</a>. This plot corresponds to Fig 3A from the paper (Becker-Weimann, 2004).

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Container.png\" alt=\"Fig1: Simulation results\">

</html>",
      revisions=""), experiment(StartTime=0, StopTime=150, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06));
end Container;
