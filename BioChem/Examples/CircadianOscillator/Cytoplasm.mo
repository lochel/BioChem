within BioChem.Examples.CircadianOscillator;
model Cytoplasm "Cytoplasm"
  extends BioChem.Compartments.Compartment(V(start=1));
  import BioChem.Math.*;
  import BioChem.Constants.*;
  model y1_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000033\">
      <bqbiol:encodes>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:encodes>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A33699\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.compound:C00046\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end y1_;

  model y2_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000034\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
  end y2_;

  model y4_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000036\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A33699\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.compound:C00046\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:encodes>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:encodes>
    </rdf:Description>
  </rdf:RDF>"));
  end y4_;

  model y5_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000037\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end y5_;

  model per2_cry_transcription_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    input Real trans_per2_cry;
  equation
    rr=Cytoplasm_V*trans_per2_cry;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000044\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006350\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end per2_cry_transcription_;

  model per2_cry_mRNA_degradation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k1d;
  equation
    rr=Cytoplasm_V*k1d*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000045\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006402\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end per2_cry_mRNA_degradation_;

  model per2_cry_complex_formation_
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k2b;
    parameter Real q;
  equation
    rr=Cytoplasm_V*k2b*m1.c^q;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000046\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0046982\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end per2_cry_complex_formation_;

  model cytoplasmic_per2_cry_complex_degradation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k2d;
  equation
    rr=Cytoplasm_V*k2d*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000047\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end cytoplasmic_per2_cry_complex_degradation_;

  model per2_cry_nuclear_import_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k2t;
  equation
    rr=Cytoplasm_V*k2t*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000048\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051170\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end per2_cry_nuclear_import_;

  model Bmal1_transcription_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    input Real trans_Bmal1;
  equation
    rr=Cytoplasm_V*trans_Bmal1;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000051\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006350\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end Bmal1_transcription_;

  model Bmal1_mRNA_degradation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k4d;
  equation
    rr=Cytoplasm_V*k4d*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000052\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006402\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end Bmal1_mRNA_degradation_;

  model BMAL1_translation_
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k5b;
  equation
    rr=Cytoplasm_V*k5b*m1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000053\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006412\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end BMAL1_translation_;

  model cytoplasmic_BMAL1_degradation_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k5d;
  equation
    rr=Cytoplasm_V*k5d*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000054\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end cytoplasmic_BMAL1_degradation_;

  model BMAL1_nuclear_import_
    extends BioChem.Interfaces.Reactions.Uui;
    outer Real Cytoplasm_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    parameter Real k5t;
  equation
    rr=Cytoplasm_V*k5t*s1.c;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000055\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051170\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end BMAL1_nuclear_import_;

  inner Real Cytoplasm_V=V
    "Variable used to make the compartment volume accessible for inner components. Do not edit.";
  Cytoplasm.y1_ y1(c(start=0.2)) "Per2 or Cry mRNA" annotation(Placement(transformation(origin={170.0,60.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Cytoplasm.y2_ y2(c(start=0)) "PER2_CRY_complex_cytoplasm" annotation(Placement(transformation(origin={140.0,-21.8298}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Cytoplasm.y4_ y4(c(start=0.8)) "Bmal1 mRNA" annotation(Placement(transformation(origin={64.8293,-60.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Cytoplasm.y5_ y5(c(start=1)) "BMAL1_cytoplasm" annotation(Placement(transformation(origin={20.0,20.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Substances.AmbientSubstance ambientSubstance annotation(Placement(transformation(origin={90.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  input Real trans_per2_cry;
  Cytoplasm.per2_cry_transcription_ per2_cry_transcription(trans_per2_cry=trans_per2_cry)
    "per2_cry_transcription"                                                                                       annotation(Placement(transformation(origin={130.0,50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  parameter Real k1d;
  Cytoplasm.per2_cry_mRNA_degradation_ per2_cry_mRNA_degradation(k1d=k1d)
    "per2_cry_mRNA_degradation"                                                                       annotation(Placement(transformation(origin={130.0,70.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  parameter Real k2b;
  parameter Real q;
  Cytoplasm.per2_cry_complex_formation_ per2_cry_complex_formation(k2b=k2b, q=q)
    "per2_cry_complex_formation"                                                                              annotation(Placement(transformation(origin={152.1486,20.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  parameter Real k2d;
  Cytoplasm.cytoplasmic_per2_cry_complex_degradation_ cytoplasmic_per2_cry_complex_degradation(k2d=k2d)
    "cytoplasmic_per2_cry_complex_degradation"                                                                                                     annotation(Placement(transformation(origin={120.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  parameter Real k2t;
  BioChem.Interfaces.Nodes.SubstanceConnector y3_node annotation(Placement(transformation(origin={190.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Cytoplasm.per2_cry_nuclear_import_ per2_cry_nuclear_import(k2t=k2t)
    "per2_cry_nuclear_import"                                                                   annotation(Placement(transformation(origin={180.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  BioChem.Interfaces.Nodes.SubstanceConnector y2_node annotation(Placement(transformation(origin={190.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  input Real trans_Bmal1;
  Cytoplasm.Bmal1_transcription_ Bmal1_transcription(trans_Bmal1=trans_Bmal1)
    "Bmal1_transcription"                                                                           annotation(Placement(transformation(origin={74.9249,-23.3818}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-90)));
  parameter Real k4d;
  Cytoplasm.Bmal1_mRNA_degradation_ Bmal1_mRNA_degradation(k4d=k4d)
    "Bmal1_mRNA_degradation"                                                                 annotation(Placement(transformation(origin={100.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-270)));
  parameter Real k5b;
  Cytoplasm.BMAL1_translation_ BMAL1_translation(k5b=k5b) "BMAL1_translation" annotation(Placement(transformation(origin={60.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-180)));
  parameter Real k5d;
  Cytoplasm.cytoplasmic_BMAL1_degradation_ cytoplasmic_BMAL1_degradation(k5d=k5d)
    "cytoplasmic_BMAL1_degradation"                                                                               annotation(Placement(transformation(origin={60.0,30.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  parameter Real k5t;
  BioChem.Interfaces.Nodes.SubstanceConnector y6_node annotation(Placement(transformation(origin={190.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,-90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Cytoplasm.BMAL1_nuclear_import_ BMAL1_nuclear_import(k5t=k5t)
    "BMAL1_nuclear_import"                                                             annotation(Placement(transformation(origin={50.0,-80.0}, extent={{-10.0,-10.0},{10.0,10.0}}, rotation=-450)));
  BioChem.Interfaces.Nodes.SubstanceConnector y5_node annotation(Placement(transformation(origin={190.0,80.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={110.0,90.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
equation
  connect(BMAL1_nuclear_import.p1,y6_node) annotation(Line(origin={128.8,-92.4506}, points={{-78.8,1.2006},{-78.8,-3.0509},{48.2,-3.0509},{48.2,2.4506},{61.2,2.4506}}, smooth=Smooth.Bezier));
  connect(y2.n1,y2_node) annotation(Line(origin={169.0149,-25.9149}, points={{-29.0149,4.0851},{8.5,4.0851},{8.5,-4.0851},{20.9851,-4.0851}}, smooth=Smooth.Bezier));
  connect(per2_cry_nuclear_import.p1,y3_node) annotation(Line(origin={183.3333,27.0833}, points={{-3.3333,-5.8333},{-3.3333,2.9167},{6.6667,2.9167}}, smooth=Smooth.Bezier));
  connect(y5.n1,y5_node) annotation(Line(origin={121.75,70.0}, points={{-101.75,-50.0},{-41.75,30.0},{65.25,10.0},{68.25,10.0}}, smooth=Smooth.Bezier));
  connect(y2.n1,per2_cry_nuclear_import.s1) annotation(Line(origin={166.6667,-14.9699}, points={{-26.6667,-6.8599},{13.3333,-6.8599},{13.3333,13.7199}}, smooth=Smooth.Bezier));
  connect(y1.n1,per2_cry_complex_formation.m1) annotation(Line(origin={167.0495,33.3333}, points={{2.9505,26.6667},{2.9505,-13.3333},{-5.9009,-13.3333}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,per2_cry_complex_formation.s1) annotation(Line(origin={120.0594,32.4506}, points={{-30.0594,-2.4506},{-17.0594,-2.4506},{-17.0594,3.0509},{32.0892,3.0509},{32.0892,-1.2006}}, smooth=Smooth.Bezier));
  connect(y2.n1,per2_cry_complex_formation.p1) annotation(Line(origin={146.0743,-1.0207}, points={{-6.0743,-20.8091},{-6.0743,5.5192},{6.0743,5.5192},{6.0743,9.7707}}, smooth=Smooth.Bezier));
  connect(y2.n1,cytoplasmic_per2_cry_complex_degradation.s1) annotation(Line(origin={130.0,-8.5207}, points={{10.0,-13.3091},{10.0,3.0192},{-10.0,3.0192},{-10.0,7.2707}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,cytoplasmic_per2_cry_complex_degradation.p1) annotation(Line(origin={110.0,27.0833}, points={{-20.0,2.9167},{10.0,2.9167},{10.0,-5.8333}}, smooth=Smooth.Bezier));
  connect(y1.n1,per2_cry_transcription.p1) annotation(Line(origin={150.5633,55.0}, points={{19.4367,5.0},{-5.0617,5.0},{-5.0617,-5.0},{-9.3133,-5.0}}, smooth=Smooth.Bezier));
  connect(y1.n1,per2_cry_mRNA_degradation.s1) annotation(Line(origin={150.5633,65.0}, points={{19.4367,-5.0},{-5.0617,-5.0},{-5.0617,5.0},{-9.3133,5.0}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,per2_cry_mRNA_degradation.p1) annotation(Line(origin={99.5833,56.6667}, points={{-9.5833,-26.6667},{-9.5833,13.3333},{19.1667,13.3333}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,per2_cry_transcription.s1) annotation(Line(origin={106.872,42.5}, points={{-16.872,-12.5},{-2.6325,-2.5},{7.6265,7.5},{11.878,7.5}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,BMAL1_translation.s1) annotation(Line(origin={83.75,10.0}, points={{6.25,20.0},{6.25,-10.0},{-12.5,-10.0}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,Bmal1_mRNA_degradation.p1) annotation(Line(origin={95.0,-4.4367}, points={{-5.0,34.4367},{-5.0,-10.0617},{5.0,-10.0617},{5.0,-14.3133}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,Bmal1_transcription.s1) annotation(Line(origin={82.4624,0.5269}, points={{7.5376,29.4731},{7.5376,-8.4072},{-7.5375,-8.4072},{-7.5375,-12.6587}}, smooth=Smooth.Bezier));
  connect(ambientSubstance.n1,cytoplasmic_BMAL1_degradation.p1) annotation(Line(origin={80.625,30.0}, points={{9.375,-0.0},{-9.375,0.0}}, smooth=Smooth.Bezier));
  connect(y5.n1,cytoplasmic_BMAL1_degradation.s1) annotation(Line(origin={39.4367,25.0}, points={{-19.4367,-5.0},{5.0617,-5.0},{5.0617,5.0},{9.3133,5.0}}, smooth=Smooth.Bezier));
  connect(y5.n1,BMAL1_nuclear_import.s1) annotation(Line(origin={35.0,-44.4367}, points={{-15.0,64.4367},{-15.0,-20.0617},{15.0,-20.0617},{15.0,-24.3133}}, smooth=Smooth.Bezier));
  connect(y5.n1,BMAL1_translation.p1) annotation(Line(origin={39.4367,10.0}, points={{-19.4367,10.0},{5.0617,10.0},{5.0617,-10.0},{9.3133,-10.0}}, smooth=Smooth.Bezier));
  connect(y4.n1,BMAL1_translation.m1) annotation(Line(origin={62.4147,-24.2512}, points={{2.4147,-35.7488},{2.4147,10.2487},{-2.4147,10.2487},{-2.4147,15.2512}}, smooth=Smooth.Bezier));
  connect(y4.n1,Bmal1_transcription.p1) annotation(Line(origin={69.8771,-43.0996}, points={{-5.0478,-16.9004},{-5.0478,4.2163},{5.0478,4.2163},{5.0478,8.4678}}, smooth=Smooth.Bezier));
  connect(y4.n1,Bmal1_mRNA_degradation.s1) annotation(Line(origin={88.2764,-53.75}, points={{-23.4471,-6.25},{11.7236,-6.25},{11.7236,12.5}}, smooth=Smooth.Bezier));
  annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{0.0,-100.0},{200.0,100.0}}, preserveAspectRatio=true, grid={10,10})));
end Cytoplasm;
