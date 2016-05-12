within BioChem.Examples;
package GMO "Goldbeter1991_MinMitOscil"
  extends BioChem.Icons.Example;


  annotation(Documentation(info="<html>
<h1>A Simple Mitotic Oscillator</h1>

This example is a modelica version of the model presented in

<i>A minimal cascade model for the miotic oscillator involving cyclin and cdc2 kinase</i> by Goldbeter A. (Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 9107-9111, October 1991
Cell Biology.)

<br>
<br>

See
<a href=\"Modelica://BioChem.Examples.GMO.cell\">cell</a>
 for more documentation and simulation results.
</html>",
        revisions=""),
             __MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_180340\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Shapiro</vCard:Family>
              <vCard:Given>Bruce</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>bshapiro@jpl.nasa.gov</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>NASA Jet Propulsion Laboratory</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2005-02-06T23:39:40Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-21T11:31:07Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000003\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:1833774\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:isHomologTo>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_152\"/>
        </rdf:Bag>
      </bqbiol:isHomologTo>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:hsa04110\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0000278\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:8292\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"));
end GMO;
