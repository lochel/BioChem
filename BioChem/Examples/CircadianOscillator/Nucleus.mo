within BioChem.Examples.CircadianOscillator;
model Nucleus "Nucleus"
  extends BioChem.Compartments.Compartment(V(start=1));
  import BioChem.Math.*;
  import BioChem.Constants.*;
  model y3_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000035\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
  end y3_;

  model y6_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000038\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end y6_;

  model y7_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000039\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end y7_;

  model per2_cry_nuclear_export_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Nucleus_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k3t;
  equation
    rr=Nucleus_V*k3t*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000049\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051168\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end per2_cry_nuclear_export_;

  model nuclear_per2_cry_complex_degradation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Nucleus_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k3d;
  equation
    rr=Nucleus_V*k3d*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000050\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end nuclear_per2_cry_complex_degradation_;

  model BMAL1_nuclear_export_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Nucleus_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k6t;
  equation
    rr=Nucleus_V*k6t*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000056\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051168\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end BMAL1_nuclear_export_;

  model nuclear_BMAL1_degradation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Nucleus_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k6d;
  equation
    rr=Nucleus_V*k6d*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000057\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end nuclear_BMAL1_degradation_;

  model BMAL1_activation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Nucleus_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k6a;
  equation
    rr=Nucleus_V*k6a*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000058\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051091\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end BMAL1_activation_;

  model BMAL1_deactivation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Nucleus_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k7a;
  equation
    rr=Nucleus_V*k7a*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000059\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0043433\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end BMAL1_deactivation_;

  model Active_BMAL1_degradation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Nucleus_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k7d;
  equation
    rr=Nucleus_V*k7d*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000060\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end Active_BMAL1_degradation_;

  inner Real Nucleus_V=V
    "Variable used to make the compartment volume accessible for inner components. Do not edit.";
  BioChem.Examples.CircadianOscillator.Nucleus.y3_ y3(c(start=1.1))
    "PER2_CRY_complex_nucleus"                                                                 annotation(Placement(transformation(origin={70.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  BioChem.Examples.CircadianOscillator.Nucleus.y6_ y6(c(start=1))
    "BMAL1_nucleus"                                                               annotation(Placement(transformation(origin={-10.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  BioChem.Examples.CircadianOscillator.Nucleus.y7_ y7(c(start=1.05))
    "Active BMAL1"                                                                  annotation(Placement(transformation(origin={-45.6104,-16.1148}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  BioChem.Interfaces.Nodes.SubstanceConnector y3_node annotation(Placement(transformation(origin={90.0,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  parameter Real k3t;
  BioChem.Interfaces.Nodes.SubstanceConnector y2_node annotation(Placement(transformation(origin={90.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Examples.CircadianOscillator.Nucleus.per2_cry_nuclear_export_ per2_cry_nuclear_export(k3t=k3t)
    "per2_cry_nuclear_export"                                                                                                     annotation(Placement(transformation(origin={68.1433,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  BioChem.Substances.AmbientSubstance ambientSubstance annotation(Placement(transformation(origin={10.0,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  parameter Real k3d;
  BioChem.Examples.CircadianOscillator.Nucleus.nuclear_per2_cry_complex_degradation_
                                                                                     nuclear_per2_cry_complex_degradation(k3d=k3d)
    "nuclear_per2_cry_complex_degradation"                                                                                                     annotation(Placement(transformation(origin={40.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  BioChem.Interfaces.Nodes.SubstanceConnector y6_node annotation(Placement(transformation(origin={90.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  parameter Real k6t;
  BioChem.Interfaces.Nodes.SubstanceConnector y5_node annotation(Placement(transformation(origin={90.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Nucleus.BMAL1_nuclear_export_ BMAL1_nuclear_export(k6t=k6t)
    "BMAL1_nuclear_export"                                                           annotation(Placement(transformation(origin={-80.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  parameter Real k6d;
  BioChem.Examples.CircadianOscillator.Nucleus.nuclear_BMAL1_degradation_ nuclear_BMAL1_degradation(k6d=k6d)
    "nuclear_BMAL1_degradation"                                                                                                     annotation(Placement(transformation(origin={10.0,10.0}, extent={{10.0,-10.0},{-10.0,10.0}}, rotation=90)));
  parameter Real k6a;
  Nucleus.BMAL1_activation_ BMAL1_activation(k6a=k6a) "BMAL1_activation" annotation(Placement(transformation(origin={-30.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  parameter Real k7a;
  Nucleus.BMAL1_deactivation_ BMAL1_deactivation(k7a=k7a) "BMAL1_deactivation" annotation(Placement(transformation(origin={-61.7118,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  parameter Real k7d;
  BioChem.Examples.CircadianOscillator.Nucleus.Active_BMAL1_degradation_ Active_BMAL1_degradation(k7d=k7d)
    "Active_BMAL1_degradation"                                                                                                     annotation(Placement(transformation(origin={-30.0,-40.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
equation
  connect(y3.n1,nuclear_per2_cry_complex_degradation.s1) annotation(Line(origin={58.0633,-45.0}, points={{11.9367,-5.0},{-2.5617,-5.0},{-2.5617,5.0},{-6.8133,5.0}}, smooth=Smooth.Bezier));
  connect(y3.n1,per2_cry_nuclear_export.s1) annotation(Line(origin={69.0717,-15.5633}, points={{0.9283,-34.4367},{0.9283,10.0617},{-0.9284,10.0617},{-0.9284,14.3133}}, smooth=Smooth.Bezier));
  connect(y3.n1,y3_node) annotation(Line(origin={76.6667,-56.6667}, points={{-6.6667,6.6667},{-6.6667,-3.3333},{13.3333,-3.3333}}, smooth=Smooth.Bezier));
  connect(y7.n1,BMAL1_activation.p1) annotation(Line(origin={-35.2035,-11.1599}, points={{-10.4069,-4.9549},{5.2035,-4.9549},{5.2035,9.9099}}, smooth=Smooth.Bezier));
  connect(y7.n1,Active_BMAL1_degradation.s1) annotation(Line(origin={-44.1569,-32.0383}, points={{-1.4535,15.9235},{-1.4535,-7.9617},{2.9069,-7.9617}}, smooth=Smooth.Bezier));
  connect(y7.n1,BMAL1_deactivation.s1) annotation(Line(origin={-56.3447,-11.1599}, points={{10.7343,-4.9549},{-5.3671,-4.9549},{-5.3671,9.9099}}, smooth=Smooth.Bezier));
  connect(y6.n1,BMAL1_deactivation.p1) annotation(Line(origin={-44.4745,40.4167}, points={{34.4745,9.5833},{-17.2373,9.5833},{-17.2373,-19.1667}}, smooth=Smooth.Bezier));
  connect(y6.n1,BMAL1_activation.s1) annotation(Line(origin={-20.0,30.5633}, points={{10.0,19.4367},{10.0,-5.0617},{-10.0,-5.0617},{-10.0,-9.3133}}, smooth=Smooth.Bezier));
  connect(y6.n1,nuclear_BMAL1_degradation.s1) annotation(Line(origin={0.0,30.5633}, points={{-10.0,19.4367},{-10.0,-5.0617},{10.0,-5.0617},{10.0,-9.3133}}, smooth=Smooth.Bezier));
  connect(y6.n1,BMAL1_nuclear_export.s1) annotation(Line(origin={-56.6667,43.75}, points={{46.6667,6.25},{-23.3333,6.25},{-23.3333,-12.5}}, smooth=Smooth.Bezier));
  connect(y6.n1,y6_node) annotation(Line(origin={58.5,70.0}, points={{-68.5,-20.0},{18.5,-20.0},{18.5,20.0},{31.5,20.0}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,nuclear_per2_cry_complex_degradation.p1) annotation(Line(origin={21.9367,-45.0}, points={{-11.9367,-5.0},{2.5617,-5.0},{2.5617,5.0},{6.8133,5.0}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,nuclear_BMAL1_degradation.p1) annotation(Line(origin={10.0,-25.625}, points={{0.0,-24.375},{0.0,24.375}}, smooth=Smooth.Bezier));
  connect(BMAL1_nuclear_export.p1,y5_node) annotation(Line(origin={-23.3333,-57.0833}, points={{-56.6667,65.8333},{-56.6667,-32.9167},{113.3333,-32.9167}}, smooth=Smooth.Bezier));
  connect(per2_cry_nuclear_export.p1,y2_node) annotation(Line(origin={79.0717,43.8125}, points={{-10.9284,-22.5625},{-10.9284,3.1875},{10.9283,3.1875},{10.9283,16.1875}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,Active_BMAL1_degradation.p1) annotation(Line(origin={-9.4367,-45.0}, points={{19.4367,-5.0},{-5.0617,-5.0},{-5.0617,5.0},{-9.3133,5.0}}, smooth=Smooth.Bezier));
end Nucleus;
