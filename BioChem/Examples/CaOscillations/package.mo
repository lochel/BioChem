within BioChem.Examples;
package CaOscillations "Oxhamre2005_Ca_oscillation"
  extends BioChem.Icons.Example;



  annotation(Documentation(info="<html>
<h1>Ca Oscillations</h1>
This example is a Modelica version of the model presented in <i>A Minimal Generic Model of Bacteria-Induced Intracellular Ca<sup>2+</sup>
Oscillations in Epithelial Cells</i> by Camilla Oxhamre, Agneta Richter-Dahlfors, Vladimir P. Zhdanov, and Bengt Kasemoy. (Biophysical Journal Volume 88 April 2005 2976-2981).<br><br>

See
<a href=\"Modelica://BioChem.Examples.CaOscillations.Cytosol\">Cytosol</a>
 for more documentation and simulation results.
</html>",
        revisions=""),
             __MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000030\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Dharuri</vCard:Family>
              <vCard:Given>Harish</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>Harish_Dharuri@kgi.edu</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>Keck Graduate Institute</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2005-08-25T11:00:43Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-21T11:54:50Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000047\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:15596518\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0019722\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0048016\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:10114\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:rno04020\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"));
end CaOscillations;
