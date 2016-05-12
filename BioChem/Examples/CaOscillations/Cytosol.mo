within BioChem.Examples.CaOscillations;
model Cytosol
  extends BioChem.Compartments.MainCompartment(V(start=1));
  import BioChem.Math.*;
  import BioChem.Constants.*;
  model Ca_Cyt_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000007\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A29108\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end Ca_Cyt_;

  model Jpump_
    extends BioChem.Interfaces.Reactions.Uui;
    parameter Real Fpump_0=2;
    parameter Real Kpump=0.1;
  equation
    rr=Fpump_0*s1.c/(Kpump + s1.c);
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000029\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051481\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006816\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end Jpump_;

  Endoplasmic_Reticulum endoplasmicReticulum(p1_sbml=p1_sbml, p2_sbml=p2_sbml, p3_sbml=p3_sbml) annotation(Placement(transformation(origin={-28.4357,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  inner Real Cytosol_V=V
    "Variable used to make the compartment volume accessible for inner components. Do not edit.";
  inner Real Endoplasmic_Reticulum_V=endoplasmicReticulum.V
    "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
  Cytosol.Ca_Cyt_ Ca_Cyt(c(start=0)) annotation(Placement(transformation(origin={-10.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Real n_sbml(start=1);
  parameter Real n0=1;
  parameter Real kbN=0.5;
  parameter Real kappa=5;
  Real p1_sbml(start=0);
  parameter Real p11=0.2;
  parameter Real p12=0.8;
  parameter Real K1=5;
  Real p2_sbml(start=0);
  parameter Real K2=0.7;
  Real p3_sbml(start=0.95);
  parameter Real k31=0.5;
  parameter Real K3=0.7;
  Cytosol.Jpump_ Jpump annotation(Placement(transformation(origin={50.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
equation
  connect(Ca_Cyt.n1,endoplasmicReticulum.Ca_Cyt_node) annotation(Line(origin={-29.2619,-10.8}, points={{19.2619,-29.2},{19.2619,-16.2},{-14.175,-16.2},{-14.175,30.8},{-10.1738,30.8}}, smooth=Smooth.Bezier));
  connect(endoplasmicReticulum.CaER_node,Jpump.p1) annotation(Line(origin={27.5214,13.75}, points={{-44.9571,6.25},{22.4786,6.25},{22.4786,-12.5}}, smooth=Smooth.Bezier));
  connect(Ca_Cyt.n1,Jpump.s1) annotation(Line(origin={30.0,-33.75}, points={{-40.0,-6.25},{20.0,-6.25},{20.0,12.5}}, smooth=Smooth.Bezier));
  n_sbml=n0*(exp((-kbN)*time) + kappa*(1 - exp((-kbN)*time)));
  p1_sbml=p11 + p12*n_sbml/(K1 + n_sbml);
  p2_sbml=Ca_Cyt.c/(K2 + Ca_Cyt.c);
  der(p3_sbml)=-k31*Ca_Cyt.c*p3_sbml + k31*K3*(1 - p3_sbml);
  annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000004\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005829\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"),
            experiment(StartTime=0.0, StopTime=120, NumberOfIntervals=-1, Algorithm="dassl", Tolerance=1e-06), Documentation(info="<html>
<h1>Ca Oscillations</h1>
This example is a Modelica version of the model presented in <i>A Minimal Generic Model of Bacteria-Induced Intracellular Ca<sup>2+</sup>
Oscillations in Epithelial Cells</i> by Camilla Oxhamre, Agneta Richter-Dahlfors, Vladimir P. Zhdanov, and Bengt Kasemoy. (Biophysical Journal Volume 88 April 2005 2976-2981)

<h2>Abstract</h2>
The toxin &alpha-hemolysin expressed by uropathogenic Escherichia coli bacteria was recently shown as the first
pathophysiologically relevant protein to induce oscillations of the intracellular Ca<sup>2+</sup> concentration in target cells. Here, we
propose a generic three-variable kinetic model describing the Ca<sup>2+</sup> oscillations induced in single rat renal epithelial cells by this
toxin. Specifically, we take into account the interplay between 1), the cytosolic Ca<sup>2+</sup> concentration; 2), IP<sub>3</sub>-sensitive Ca<sup>2+</sup>
channels located in the membrane separating the cytosol and endoplasmic reticulum; and 3), toxin-related activation of
production of IP<sub>3</sub> by phospholipase C. With these ingredients, the predicted response of cells exposed to the toxin is in good
agreement with the results of experiments.
<h2>Simulations</h2>
The simulation results are shown in the
 <a href=\"#fig1\">Figure 1</a>. This plot corresponds to Fig 1C of the paper (Oxhamre 2005).
<br>

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/cytosol.png\" alt=\"Fig1: Simulation results\">
</html>",
      revisions=""));
end Cytosol;
