within BioChem.Examples.GlucoseInsulinModel.Utilities.Reactions;
model m_3
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
  Real k;
  parameter Real m_5=0.0304;
  parameter Real m_1=0.19;
  parameter Real m_6=0.6471;
equation
  rr=s1.c*k;
  k=(-m_5*m1.c + m_6)*m_1/(1 - (-m_5*m1.c + m_6));
  annotation(Diagram(coordinateSystem(extent={{-148.5,-105},{148.5,105}}, preserveAspectRatio=true, grid={10,10})));
end m_3;
