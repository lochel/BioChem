within BioChem.Examples;
package CircadianOscillator "Weimann2004_CircadianOscillator"
  extends BioChem.Icons.Example;




  annotation(Documentation(info="<html>
<h1>Circadian Oscillator</h1>

This example is the modelica version of the model presented in
<i>Modeling feedback loops of the Mammalian circadian oscillator</i> by
Becker-Weimann S, Wolf J, Herzel H, Kramer A. (Biophysical Journal Volume 87 November 2004 3023-3034)

<br>
<br>
See
<a href=\"Modelica://BioChem.Examples.CircadianOscillator.Container\">Container</a>
 for more documentation and simulation results.
</html>",
        revisions=""),
             __MathCore(RDF="<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000002\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Dharuri</vCard:Family>
              <vCard:Given>Harish</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>hdharuri@cds.caltech.edu</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>California Institute of Technology</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-04-16T11:56:13Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-20T18:28:56Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000170\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:15347590\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:isPartOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:hsa04710\"/>
        </rdf:Bag>
      </bqbiol:isPartOf>
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:40674\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0007623\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"));
end CircadianOscillator;
