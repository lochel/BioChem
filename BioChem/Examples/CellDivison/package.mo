within BioChem.Examples;
package CellDivison "Tyson1991_CellCycle_6var"
  extends BioChem.Icons.Example;


  annotation(Documentation(info="<html>
<h1>CellDivision</h1>
This example is a Modelica version of the model presented in <i>Modeling the cell division cycle: cdc2 and cyclin interactions</i> by John J. Tyson. (Proc. Nati. Acad. Sci. USA
Vol. 88, pp. 7328-7332, August 1991
Cell Biology). <br><br>

See
<a href=\"Modelica://BioChem.Examples.CellDivison.cell\">cell</a>
 for more documentation and simulation results.
</html>",
        revisions=""),
             __MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#_000001\">
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
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Chelliah</vCard:Family>
              <vCard:Given>Vijayalakshmi</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>viji@ebi.ac.uk</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>EMBL-EBI</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2005-02-08T18:28:27Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-21T11:31:54Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000005\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:1831270\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:hasVersion>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:reactome:REACT_152\"/>
        </rdf:Bag>
      </bqbiol:hasVersion>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:sce04111\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0000278\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:33154\"/>
        </rdf:Bag>
      </bqmodel:is>
    </rdf:Description>
  </rdf:RDF>"));
end CellDivison;
