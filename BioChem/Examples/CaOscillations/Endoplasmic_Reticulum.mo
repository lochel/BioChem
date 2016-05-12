within BioChem.Examples.CaOscillations;
model Endoplasmic_Reticulum
  extends BioChem.Compartments.Compartment(V(start=1));
  import BioChem.Math.*;
  import BioChem.Constants.*;
  model CaER_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000006\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A29108\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end CaER_;

  model Jch_
    extends BioChem.Interfaces.Reactions.Uui;
    parameter Real Fch_0=8;
    input Real p1_sbml;
    input Real p2_sbml;
    input Real p3_sbml;
  equation
    rr=Fch_0*p1_sbml*p2_sbml*p3_sbml;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000027\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051482\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006816\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end Jch_;

  model Jleak_
    extends BioChem.Interfaces.Reactions.Uui;
    parameter Real Fleak=0.5;
  equation
    rr=Fleak;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000028\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006816\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0007204\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end Jleak_;

  inner Real Endoplasmic_Reticulum_V=V
    "Variable used to make the compartment volume accessible for inner components. Do not edit.";
  Endoplasmic_Reticulum.CaER_ CaER(c(start=0)) annotation(Placement(transformation(origin={10.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-540)));
  input Real p1_sbml;
  input Real p2_sbml;
  input Real p3_sbml;
  BioChem.Interfaces.Nodes.SubstanceConnector Ca_Cyt_node annotation(Placement(transformation(origin={-90.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={-110.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Endoplasmic_Reticulum.Jch_ Jch(p1_sbml=p1_sbml, p2_sbml=p2_sbml, p3_sbml=p3_sbml) annotation(Placement(transformation(origin={-80.0,-20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  Endoplasmic_Reticulum.Jleak_ Jleak annotation(Placement(transformation(origin={-80.0,43.7135}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  BioChem.Interfaces.Nodes.SubstanceConnector CaER_node annotation(Placement(transformation(origin={90.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
equation
  connect(Jleak.p1,Ca_Cyt_node) annotation(Line(origin={-85.0,22.1159}, points={{5.0,10.3476},{5.0,0.8841},{-5.0,0.8841},{-5.0,-12.1159}}, smooth=Smooth.Bezier));
  connect(Jch.p1,Ca_Cyt_node) annotation(Line(origin={-85.0,-1.1875}, points={{5.0,-7.5625},{5.0,-1.8125},{-5.0,-1.8125},{-5.0,11.1875}}, smooth=Smooth.Bezier));
  connect(CaER.n1,CaER_node) annotation(Line(origin={63.5,5.0}, points={{-53.5,5.0},{13.5,5.0},{13.5,-5.0},{26.5,-5.0}}, smooth=Smooth.Bezier));
  connect(CaER.n1,Jleak.s1) annotation(Line(origin={-31.2,38.6787}, points={{41.2,-28.6787},{28.2,-28.6787},{28.2,20.5363},{-48.8,20.5363},{-48.8,16.2848}}, smooth=Smooth.Bezier));
  connect(CaER.n1,Jch.s1) annotation(Line(origin={-31.2,-16.4506}, points={{41.2,26.4506},{28.2,26.4506},{28.2,-19.0509},{-48.8,-19.0509},{-48.8,-14.7994}}, smooth=Smooth.Bezier));
  annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000005\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0005790\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
end Endoplasmic_Reticulum;
