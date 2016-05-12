within BioChem.Examples.centralMetabolism;
model extra_cellular
  extends BioChem.Compartments.MainCompartment(V(start=2));
  model LACext_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C01432\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end LACext_;

  model vef_
    extends BioChem.Interfaces.Reactions.Uui;
    parameter Real VmaxEF=15;
    parameter Real KmLAC=26.8483;
  equation
    rr=VmaxEF*s1.c/(KmLAC + s1.c);
  end vef_;

  centralMetabolism.cytosol cytosol(bamp=bamp, badp=badp, kh=kh, pn=pn, atp=atp, kt=kt, nad=nad, cr=cr) annotation(Placement(transformation(origin={1.221,-0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  centralMetabolism.extra_cellular.vef_ vef "vef" annotation(Placement(transformation(origin={40.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-360)));
  centralMetabolism.extra_cellular.LACext_ LACext(c(
                                                  start = 0)) "Lactate"
                                                                       annotation(Placement(transformation(origin={70.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  inner Real default_V=V
    "Variable used to make the compartment volume accessible for inner components. Do not edit.";
  inner Real cytosol_V=cytosol.V
    "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
  parameter Real iv1=0.603855;
  parameter Real iv2=0.0999758;
  parameter Real iv3=0.07427;
  parameter Real iv4=0.148871;
  parameter Real iv5=4.34299;
  parameter Real iv6=0.00406177;
  parameter Real iv7=1.72073e-05;
  parameter Real iv8=0.0695775;
  parameter Real iv9=28.2621;
  parameter Real iv10=0.000398124;
  parameter Real iv11=0.650608;
  parameter Real nv19=1;
  parameter Real nv20=1.14947;
  parameter Real kamp=0.00841471;
  parameter Real k2amp=200;
  parameter Real kadp=0.05;
  parameter Real k2adp=84.7376;
  parameter Real tan=27.5;
  parameter Real tcr=54;
  parameter Real kt=0.085;
  parameter Real kh=0.2;
  parameter Real PNt=139.117;
  Real adpt;
  Real ampt;
  Real atp;
  Real atpt;
  Real badp;
  Real bamp;
  Real pn;
  Real cr;
  Real nad;
equation
  connect(vef.p1,LACext.n1) annotation(Line(origin={60.625,0.0}, points={{-9.375,0.0},{9.375,-0.0}}));
  connect(cytosol.node_LAC,vef.s1) annotation(Line(origin={21.2374,-0.0}, points={{-7.5126,0.0},{7.5126,-0.0}}));
  badp=k2adp*kadp/(kadp + cytosol.ADP.c);
  adpt=cytosol.ADP.c*badp;
  atpt=tan - adpt - ampt - cytosol.IMP.c;
  ampt=cytosol.AMP.c*bamp;
  atp=atpt/cytosol.V;
  pn=(PNt - atpt*3 - adpt*2 - ampt - cytosol.CP.c*2 - cytosol.IMP.c - (cytosol.G6P.c + cytosol.F6P.c + cytosol.FDP.c*2 + cytosol.G3P.c + cytosol.DHAP.c)*cytosol.V)/cytosol.V;
  bamp=k2amp*kamp/(kamp + cytosol.AMP.c);
  nad=0.7 - cytosol.NADH.c;
  cr=tcr - cytosol.CP.c;
  annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<h1>Energy metabolism of human muscle</h1>
<p>The model simulates the processes of utilization of energy stored in the form of glycogen. This is the main energy supply of working muscle. The pathway includes glycolytic and TCA cycle reactions stoichiometrically connected with synthesis ATP, which is used mainly for mechanical work (ATPase). The biochemical scheme of the simulated processes is shown in <a href=\"#fig1\">Figure 1</a>.</p>
<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/figure1a.png\" width=\"640px\" height=\"446px\" alt=\"Fig1: Biochemical scheme\">
<p><em><strong>Fig. 1.</strong> Scheme of glycolysis and coupled processes simulated in the model: consumption and synthesis of ATP and transformation of reducing equivalents of NADH. The relevant equations, which account for stoicheiometry of the ATP production, are given in Supplementary materials. One molecule of ATP is consumed per molecule of fructose 6-phosphate in the phosphofructokinase reaction; two molecules of ATP per molecule of triose phospate (four molecules per hexose molecule) are then produced on the way to pyruvate; 2.5 molecules of ATP are produced when one molecule of NADH is oxidized. Cytosolic NADH is produced in the reaction of glyceraldehyde-3-phosphate dehydrogenase and consumed when pyruvate is transformed to lactate. In mitochondria one molecule of NADH is produced in the pyruvate dehydrogenase reaction and then three NADH molecules and one FADH2 molecule in the tricarboxylate cycle. Abbreviations: AK, adenylate kinase (EC 2.7.4.3); CK, creatine kinase (EC 2.7.3.2); CP, phosphocreatine; Cr, creatine; F6P, fructose 6-phosphate; FBP, fructose 1,6-bisphosphate; G6P, glucose 6-phosphate; GAPDH, glyceraldehyde-3-phosphate dehydrogenase (EC 1.2.1.12);
GPh, glycogen phosphorylase (EC 2.4.1.1); Lac, lactate; LDH, lactate dehydrogenase (EC 1.1.1.27); PFK, phosphofructokinase (EC 2.7.1.11); GPI, glucose phosphate isomerase (EC 5.3.1.9.); Pyr, pyruvate. Subscripts: m, mitochondrial; c, cytosolic.</em></p>
<p>This model was used to study the biochemical effects of training programmes, consisted of 14 training sessions either with 24 (short period, SP) or 72 h (long period, LP) intervals between the individual sessions  (Parra et al., 2000). In this example the analysed data included the change in enzyme activities after both tytes of training as <a href=\"#tab1\">Table 1</a> shows.</p>
<a name=\"tab1\"></a>
<p><em><strong>Table 1</strong><br>
 Measured enzyme activity in biobpsy before and after training (Parra et al. 2000). </em></p>
<img src=\"modelica://BioChem/Resources/Images/table1.jpg\" width=\"640px\" height=\"122px\" alt=\"Tab1:  enzyme activity in biobpsy\">
<p>Moreover, the concentrations of metabolites at rest and after 30s of maximal intensity exercise were measured before and after accomplishing the training programs. The measured metabolites are adenine nucleotides and the forms of creatine (<a href=\"#tab2\">Table 2</a>) and intermediates of glycolysis (<a href=\"#tab3\">Table 3</a>).</p>
<a name=\"tab2\"></a>
<p><em><strong>Table 2</strong></em></p>
<img src=\"modelica://BioChem/Resources/Images/table2.jpg\" width=\"640px\" height=\"306px\" alt=\"Tab2:  concentrations of metabolites at rest and after 30s of maximal intensity exercise \">
<p>The model simulates the experimental data as an example in <a href=\"#fig2\">Figure 2</a> shows. The switch from rest to maximal intensity exercise in the model simulation induced by the change of only one parameter, increase of ATPase activity; stimulation of all the metabolic fluxes is a result of activation by the products of ATP hydrolysis.</p>
<p>
The simulation have shown that after short periods of training the glycolytic flux at rest was three times higher than it had been before training, whereas during exercise the flux and energy consumption remained the same as before training. Long periods of training had less effect on the glycolytic flux at rest, but increased it in response to exercise, increasing the contribution of oxidative phosphorylation.
This model and data analysis are described in (Selivanov VA, de Atauri P, Centelles JJ, Cadefau J, Parra J, Cuss&oacute; R, Carreras J, Cascante M. (2008) The changes in the energy metabolism of human muscle induced by training.  J Theor Biol. 252, 402-410)
</p>
<a name=\"tab3\"></a>
<p><em><strong>Table 3</strong></em></p>
<img src=\"modelica://BioChem/Resources/Images/table3.jpg\" width=\"640px\" height=\"283px\" alt=\"Tab3:  concentrations of metabolites at rest and after 30s of maximal intensity exercise \">
<br><br>
<a name=\"fig2\"></a>
<img src=\"modelica://BioChem/Resources/Images/figure2.jpg\" width=\"526px\" height=\"620px\" alt=\"Fig2:  concentrations of metabolites during 30s of maximal intensity exercise \">
<p><em><strong>Fig. 2.</strong> Time-courses of high-energy phophates and glycolytic intermediates during 30s of maximal exercise before training. Points with error bars are experimental metabolite concentrations at rest and after 30s of excersise. For simulation at the beginning of excersise (time=0), ATPase activity increased from 3.2 to 200 mM min<sup>-1</sup>. Other parameters are given in Table 1 and Supplementary materials. Abbrevetaions are given in <a href=\"#fig1\">Fig. 1</a>,</em></p>
<h2>Simulations</h2>
<p>The time scale of the model is minutes, so it simulates 0.5 min of maximal intensity exercise. The model produces the same results as seen from experiments.</p>
<p>If simulated for more than 0.5 minutes the model has numerical problems. In real life a person cannot maintain maximal intensity exercise, then fatigue comes and the intensity decreases. So, steady state at maximal intensity does not exist in real life either.</p>
", revisions=""),
    __MathCore(RDF=""),
    experiment(
      StartTime=0.0,
      StopTime=0.5,
      Algorithm="dassl",
      Tolerance=1e-05));
end extra_cellular;
