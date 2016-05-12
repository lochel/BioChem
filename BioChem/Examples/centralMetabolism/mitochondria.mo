within BioChem.Examples.centralMetabolism;
model mitochondria
  extends BioChem.Compartments.Compartment(V(
                                           start = 2));
  model NADH_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00004\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end NADH_;

  model NAD_
    extends BioChem.Substances.Substance;
    annotation(__MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"http://www.genome.jp/kegg/#C00003\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
  end NAD_;

  model jox_
    extends BioChem.Interfaces.Reactions.Bbi(nS1=2.5*cytosol_V/badp);
    outer Real cytosol_V
      "Variable used to access the volume of an outer compartment. Do not edit.";
    Real badp;
  equation
    rr=10000*s1.c*s2.c/((0.01 + s1.c)*(0.15 + s2.c));
  end jox_;

  model vn_
    extends BioChem.Interfaces.Reactions.Uui;
    parameter Real VmaxN=10.8347;
    parameter Real KmNADH=0.216694;
  equation
    rr=VmaxN*s1.c/(KmNADH + s1.c);
  end vn_;

  centralMetabolism.mitochondria.NADH_ NADHm(c(
                                             start = 0)) "NADH"
                                                               annotation(Placement(transformation(origin={-20.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  centralMetabolism.mitochondria.NAD_ NADm(c(
                                           start = 0)) "NAD"
                                                            annotation(Placement(transformation(origin={20.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  centralMetabolism.mitochondria.jox_ jox(badp=badp) "jox" annotation(Placement(transformation(origin={-0.0,0.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Interfaces.Nodes.SubstrateConnector node_ADP annotation(Placement(transformation(origin={-20.0,10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={-125.8208,-47.131}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Interfaces.Nodes.SubstanceConnector node_NADHm annotation(Placement(transformation(origin={-30.0,-30.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={125.7398,50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  centralMetabolism.mitochondria.vn_ vn "vn" annotation(Placement(transformation(origin={-50.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Interfaces.Nodes.SubstrateConnector node_NADH annotation(Placement(transformation(origin={-80.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={126.1247,-50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  BioChem.Interfaces.Nodes.ProductConnector node_ATP annotation(Placement(transformation(origin={20.0,-10.0}, extent={{-10.0,-10.0},{10.0,10.0}}), iconTransformation(origin={-125.999,50.0}, extent={{-10.0,-10.0},{10.0,10.0}})));
  Real badp;
equation
  connect(jox.p1,NADm.n1) annotation(Line(origin={14.1667,8.3333}, points={{-2.9167,-3.3333},{-2.9167,1.6667},{5.8333,1.6667}}, smooth=Smooth.Bezier));
  connect(NADHm.n1,node_NADHm) annotation(Line(origin={-29.831,-9.3231}, points={{9.831,-0.6769},{-0.169,-0.6769},{-0.169,-20.6769}}, smooth=Smooth.Bezier));
  connect(vn.p1,NADHm.n1) annotation(Line(origin={-29.375,-10.0}, points={{-9.375,0.0},{9.375,0.0}}));
  connect(NADHm.n1,jox.s2) annotation(Line(origin={-14.1667,-8.3333}, points={{-5.8333,-1.6667},{2.9167,-1.6667},{2.9167,3.3333}}, smooth=Smooth.Bezier));
  connect(jox.p2,node_ATP) annotation(Line(origin={17.0833,-6.6667}, points={{-5.8333,1.6667},{2.9167,1.6667},{2.9167,-3.3333}}));
  connect(jox.s1,node_ADP) annotation(Line(origin={-14.1667,8.3333}, points={{2.9167,-3.3333},{2.9167,1.6667},{-5.8333,1.6667}}, smooth=Smooth.Bezier));
  connect(vn.s1,node_NADH) annotation(Line(origin={-70.625,-10.0}, points={{9.375,0.0},{-9.375,0.0}}));
  annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})));
end mitochondria;
