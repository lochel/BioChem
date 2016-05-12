within BioChem.Reactions;
package FastEquilibrium "Base classes for reactions with fast (instant) equilibrium"
  extends Icons.Library;
















  annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<html>
<h1>FastEquilibrium</h1>
The reaction in the FastEquilibrium package is used to model reactions that are very fast, and could be seen as an instant balance. These models are approximated to very fast reactions, if translated to SBML.

<br>
<img src=\"modelica://BioChem/Resources/Images/Fast.png\" >
<br>
</html>",
        revisions=""));
end FastEquilibrium;
