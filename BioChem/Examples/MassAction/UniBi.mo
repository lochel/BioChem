within BioChem.Examples.MassAction;
model UniBi "Examples of uni-bi reactions"
  extends BioChem.Compartments.Compartment;
  Substances.BoundarySubstance sF3(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-90,-7}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF2(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-80,33}, extent={{-10,-10},{10,10}})));
  Substances.Substance s42(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-70,7}, extent={{-10,-10},{10,10}})));
  Substances.Substance s43 annotation(Placement(transformation(origin={-70,-33}, extent={{-10,-10},{10,10}})));
  Substances.Substance s7(c(
                          start = 0.1))
                                       annotation(Placement(transformation(origin={-70,-21}, extent={{-10,-10},{10,10}})));
  Substances.Substance s44(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-70,-83}, extent={{-10,-10},{10,10}})));
  Substances.Substance s11(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-70,-69}, extent={{-10,-10},{10,10}})));
  Substances.Substance s3(c(
                          start = 0.1))
                                       annotation(Placement(transformation(origin={-70,59}, extent={{-10,-10},{10,10}})));
  Substances.Substance s59(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-70,-57}, extent={{-10,-10},{10,10}})));
  Substances.Substance s9(c(
                          start = 0.1))
                                       annotation(Placement(transformation(origin={-70,-45}, extent={{-10,-10},{10,10}})));
  Substances.Substance s5(c(
                          start = 0.1))
                                       annotation(Placement(transformation(origin={-70,19}, extent={{-10,-10},{10,10}})));
  Substances.Substance s17(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,23}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF5(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-30.5,73}, extent={{-10,-10},{10,10}})));
  Substances.Substance s13(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-3.5,94}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF13(c(
                                    start = 1))
                                               annotation(Placement(transformation(origin={-12.5,-93}, extent={{-10,-10},{10,10}})));
  Substances.Substance s48(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,51}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF6(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-14.5,73}, extent={{-10,-10},{10,10}})));
  Substances.Substance s45(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,-79}, extent={{-10,-10},{10,10}})));
  Substances.Substance s47(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,11}, extent={{-10,-10},{10,10}})));
  Substances.Substance s19(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,-17}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF11(c(
                                    start = 1))
                                               annotation(Placement(transformation(origin={-18.5,-61}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF9(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-22.5,-3}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF12(c(
                                    start = 1))
                                               annotation(Placement(transformation(origin={-32.5,-93}, extent={{-10,-10},{10,10}})));
  Substances.Substance s21(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,-65}, extent={{-10,-10},{10,10}})));
  Substances.Substance s15(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,63}, extent={{-10,-10},{10,10}})));
  Substances.Substance s46(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-2.5,-29}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF7(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-26.5,43}, extent={{-10,-10},{10,10}})));
  Substances.Substance s49(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-3.5,81.5}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF4(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-110,-92.5}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF10(c(
                                    start = 1))
                                               annotation(Placement(transformation(origin={-18.5,-37}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF8(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-18.5,31}, extent={{-10,-10},{10,10}})));
  Substances.Substance s41(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-70,47}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF(c(
                                  start = 1))
                                             annotation(Placement(transformation(origin={-90,73}, extent={{-10,-10},{10,10}})));
  Substances.BoundarySubstance sF1(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={-102.5,32.5}, extent={{-10,-10},{10,10}})));
  Substances.Substance s40(c(
                           start = 0.1))
                                        annotation(Placement(transformation(origin={-68,87}, extent={{-10,-10},{10,10}})));
  Substances.Substance s(c(
                         start = 1))
                                    annotation(Placement(transformation(origin={-110,93}, extent={{-10,-10},{10,10}})));
  Substances.Substance s2(c(
                          start = 1))
                                     annotation(Placement(transformation(origin={-110,53}, extent={{-10,-10},{10,10}})));
  Substances.Substance s4(c(
                          start = 1))
                                     annotation(Placement(transformation(origin={-110,13}, extent={{-10,-10},{10,10}})));
  Substances.Substance s6(c(
                          start = 1))
                                     annotation(Placement(transformation(origin={-110,-27}, extent={{-10,-10},{10,10}})));
  Substances.Substance s8(c(
                          start = 1))
                                     annotation(Placement(transformation(origin={-110,-47}, extent={{-10,-10},{10,10}})));
  Substances.Substance s10(c(
                           start = 1))
                                      annotation(Placement(transformation(origin={-110,-77}, extent={{-10,-10},{10,10}})));
  Substances.Substance s20(c(
                           start = 1))
                                      annotation(Placement(transformation(origin={-42.5,-73}, extent={{-10,-10},{10,10}})));
  Substances.Substance s18(c(
                           start = 1))
                                      annotation(Placement(transformation(origin={-42.5,-23}, extent={{-10,-10},{10,10}})));
  Substances.Substance s16(c(
                           start = 1))
                                      annotation(Placement(transformation(origin={-42.5,17}, extent={{-10,-10},{10,10}})));
  Substances.Substance s14(c(
                           start = 1))
                                      annotation(Placement(transformation(origin={-42.5,57}, extent={{-10,-10},{10,10}})));
  Substances.Substance s12(c(
                           start = 1))
                                      annotation(Placement(transformation(origin={-42.5,87}, extent={{-10,-10},{10,10}})));
  Substances.Substance s1(c(
                          start = 0.1))
                                       annotation(Placement(transformation(origin={-68,99}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Irreversible.UniBi.Ubi ubi annotation(Placement(transformation(origin={-90,93}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Irreversible.UniBi.Ubifa ubifa annotation(Placement(transformation(origin={-90,53.42}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Irreversible.UniBi.Ubifafi ubifafi annotation(Placement(transformation(origin={-90,13}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Irreversible.UniBi.Ubifi ubifi annotation(Placement(transformation(origin={-90,-27}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Reversible.UniBi.Ubr ubr annotation(Placement(transformation(origin={-90,-47}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Reversible.UniBi.Ubrba ubrba annotation(Placement(transformation(origin={-90,-77}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Reversible.UniBi.Ubrfababi ubrfababi annotation(Placement(transformation(origin={-22.5,-73}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Reversible.UniBi.Ubrfaba ubrfaba annotation(Placement(transformation(origin={-22.5,-23}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Reversible.UniBi.Ubrfa ubrfa annotation(Placement(transformation(origin={-22.5,17}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Reversible.UniBi.Ubrbi ubrbi annotation(Placement(transformation(origin={-22.5,57}, extent={{-10,-10},{10,10}})));
  Reactions.MassAction.Reversible.UniBi.Ubrbabi ubrbabi annotation(Placement(transformation(origin={-22.5,87}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s51(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,23}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s50(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,71}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF27(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={95.5,69}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s25(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,35}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s24(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={17.5,27}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF25(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={89.5,97}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s31(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,91}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s22(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={17.5,77}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfabi ubrfabi annotation(Placement(transformation(origin={41.5,77}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s54(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,79}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s23(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,83}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s55(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,27}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfafi ubrfafi annotation(Placement(transformation(origin={41.5,27}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s30(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={79.5,83}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF14(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={41.5,97}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF17(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={51.5,41}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s33(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,39}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF15(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={37.5,63}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfi ubrfi annotation(Placement(transformation(origin={99.5,33}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfafibi ubrfafibi annotation(Placement(transformation(origin={99.5,83}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF26(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={107.5,97}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF28(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={95.5,47}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s32(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={79.5,33}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF16(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={31.5,41}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s35(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,9}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s37(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,-31}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF31(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={95.5,-25}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF33(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={109.5,-53}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF30(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={105.5,-9}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s34(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={79.5,3}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF32(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={89.5,-53}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF34(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={89.5,-77}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s39(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,-81}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF35(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={89.5,-95}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfibabi ubrfibabi annotation(Placement(transformation(origin={99.5,-37}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfibi ubrfibi annotation(Placement(transformation(origin={99.5,-87}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s57(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,-43}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfiba ubrfiba annotation(Placement(transformation(origin={99.5,3}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s56(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,-3}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s58(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={119.5,-93}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s36(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={79.5,-37}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF29(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={95.5,17}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s38(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={79.5,-87}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF20(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={45.5,-27}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s26(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={17.5,-23}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfafiba ubrfafiba annotation(Placement(transformation(origin={41.5,-13}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s27(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,-7}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF18(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={31.5,7}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF19(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={51.5,7}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s52(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,-19}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s29(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,-67}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s53(c(
                                   start = 0.1))
                                                annotation(Placement(transformation(origin={61.5,-79}, extent={{-10,-10},{10,10}})));
  BioChem.Reactions.MassAction.Reversible.UniBi.Ubrfafibabi ubrfafibabi annotation(Placement(transformation(origin={41.5,-73}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.Substance s28(c(
                                   start = 1))
                                              annotation(Placement(transformation(origin={17.5,-73}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF21(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={31.5,-57}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF23(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={31.5,-93}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF24(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={51.5,-93}, extent={{-10,-10},{10,10}})));
  BioChem.Substances.BoundarySubstance sF22(c(
                                            start = 1))
                                                       annotation(Placement(transformation(origin={51.5,-57}, extent={{-10,-10},{10,10}})));
equation
  connect(s.n1,ubi.s1) annotation(Line(points={{-110,93},{-101.25,93}}));
  connect(ubi.p1,s1.n1) annotation(Line(points={{-78.75,98},{-68,99}}));
  connect(ubi.p2,s40.n1) annotation(Line(points={{-78.75,88},{-68,87}}));
  connect(ubifa.p2,s41.n1) annotation(Line(points={{-78.75,48.42},{-70,47}}));
  connect(s2.n1,ubifa.s1) annotation(Line(points={{-110,53},{-101.25,53.42}}));
  connect(ubifa.p1,s3.n1) annotation(Line(points={{-78.75,58.42},{-70,59}}));
  connect(sF.n1,ubifa.aF1) annotation(Line(points={{-90,73},{-90,62.42}}));
  connect(s4.n1,ubifafi.s1) annotation(Line(points={{-110,13},{-101.25,13}}));
  connect(ubifafi.p2,s42.n1) annotation(Line(points={{-78.75,8},{-70,7}}));
  connect(ubifafi.p1,s5.n1) annotation(Line(points={{-78.75,18},{-70,19}}));
  connect(sF2.n1,ubifafi.iF1) annotation(Line(points={{-80,33},{-90,22}}));
  connect(sF1.n1,ubifafi.aF1) annotation(Line(points={{-102.5,32.5},{-90,22}}));
  connect(s6.n1,ubifi.s1) annotation(Line(points={{-110,-27},{-101.25,-27}}));
  connect(ubifi.p2,s43.n1) annotation(Line(points={{-78.75,-32},{-70,-33}}));
  connect(ubifi.p1,s7.n1) annotation(Line(points={{-78.75,-22},{-70,-21}}));
  connect(sF3.n1,ubifi.iF1) annotation(Line(points={{-90,-7},{-90,-18}}));
  connect(s8.n1,ubr.s1) annotation(Line(points={{-110,-47},{-101.25,-47}}));
  connect(ubr.p2,s59.n1) annotation(Line(points={{-78.75,-52},{-70,-57}}));
  connect(ubr.p1,s9.n1) annotation(Line(points={{-78.75,-42},{-70,-45}}));
  connect(s10.n1,ubrba.s1) annotation(Line(points={{-110,-77},{-101.25,-77}}));
  connect(s44.n1,ubrba.p2) annotation(Line(points={{-70,-83},{-78.75,-82}}));
  connect(ubrba.p1,s11.n1) annotation(Line(points={{-78.75,-72},{-70,-69}}));
  connect(sF4.n1,ubrba.aB1) annotation(Line(points={{-110,-92.5},{-90,-86}}));
  connect(ubrfababi.p2,s45.n1) annotation(Line(points={{-11.25,-78},{-2.5,-79}}));
  connect(s20.n1,ubrfababi.s1) annotation(Line(points={{-42.5,-73},{-33.75,-73}}));
  connect(ubrfababi.p1,s21.n1) annotation(Line(points={{-11.25,-68},{-2.5,-65}}));
  connect(sF13.n1,ubrfababi.iB1) annotation(Line(points={{-12.5,-93},{-22.5,-82}}));
  connect(sF12.n1,ubrfababi.aB1) annotation(Line(points={{-32.5,-93},{-22.5,-82}}));
  connect(sF11.n1,ubrfababi.aF1) annotation(Line(points={{-18.5,-61},{-22.5,-64}}));
  connect(ubrfaba.p1,s19.n1) annotation(Line(points={{-11.25,-18},{-2.5,-17}}));
  connect(ubrfaba.p2,s46.n1) annotation(Line(points={{-11.25,-28},{-2.5,-29}}));
  connect(s18.n1,ubrfaba.s1) annotation(Line(points={{-42.5,-23},{-33.75,-23}}));
  connect(sF10.n1,ubrfaba.aB1) annotation(Line(points={{-18.5,-37},{-22.5,-32}}));
  connect(sF9.n1,ubrfaba.aF1) annotation(Line(points={{-22.5,-3},{-22.5,-14}}));
  connect(s17.n1,ubrfa.p1) annotation(Line(points={{-2.5,23},{-11.25,22}}));
  connect(s16.n1,ubrfa.s1) annotation(Line(points={{-42.5,17},{-33.75,17}}));
  connect(s47.n1,ubrfa.p2) annotation(Line(points={{-2.5,11},{-11.25,12}}));
  connect(sF8.n1,ubrfa.aF1) annotation(Line(points={{-18.5,31},{-22.5,26}}));
  connect(ubrbi.p2,s48.n1) annotation(Line(points={{-11.25,52},{-2.5,51}}));
  connect(s14.n1,ubrbi.s1) annotation(Line(points={{-42.5,57},{-33.75,57}}));
  connect(ubrbi.p1,s15.n1) annotation(Line(points={{-11.25,62},{-2.5,63}}));
  connect(sF7.n1,ubrbi.iB1) annotation(Line(points={{-26.5,43},{-22.5,48}}));
  connect(ubrbabi.p1,s13.n1) annotation(Line(points={{-11.25,92},{-3.5,94}}));
  connect(ubrbabi.p2,s49.n1) annotation(Line(points={{-11.25,82},{-3.5,81.5}}));
  connect(s12.n1,ubrbabi.s1) annotation(Line(points={{-42.5,87},{-33.75,87}}));
  connect(sF6.n1,ubrbabi.iB1) annotation(Line(points={{-14.5,73},{-22.5,78}}));
  connect(ubrbabi.aB1,sF5.n1) annotation(Line(points={{-22.5,78},{-30.5,73}}));
  connect(ubrfi.p2,s55.n1) annotation(Line(points={{110.75,28},{119.5,27}}));
  connect(s24.n1,ubrfafi.s1) annotation(Line(points={{17.5,27},{30.25,27}}));
  connect(ubrfafi.p2,s51.n1) annotation(Line(points={{52.75,22},{61.5,23}}));
  connect(sF14.n1,ubrfabi.aF1) annotation(Line(points={{41.5,97},{41.5,86}}));
  connect(s25.n1,ubrfafi.p1) annotation(Line(points={{61.5,35},{52.75,32}}));
  connect(sF25.n1,ubrfafibi.aF1) annotation(Line(points={{89.5,97},{99.5,92}}));
  connect(sF28.n1,ubrfi.iF1) annotation(Line(points={{95.5,47},{99.5,42}}));
  connect(s22.n1,ubrfabi.s1) annotation(Line(points={{17.5,77},{30.25,77}}));
  connect(s30.n1,ubrfafibi.s1) annotation(Line(points={{79.5,83},{88.25,83}}));
  connect(sF15.n1,ubrfabi.iB1) annotation(Line(points={{37.5,63},{41.5,68}}));
  connect(sF26.n1,ubrfafibi.iF1) annotation(Line(points={{107.5,97},{99.5,92}}));
  connect(ubrfi.p1,s33.n1) annotation(Line(points={{110.75,38},{119.5,39}}));
  connect(ubrfafi.iF1,sF17.n1) annotation(Line(points={{41.5,36},{51.5,41}}));
  connect(sF27.n1,ubrfafibi.iB1) annotation(Line(points={{95.5,69},{99.5,74}}));
  connect(ubrfafibi.p2,s54.n1) annotation(Line(points={{110.75,78},{119.5,79}}));
  connect(ubrfabi.p1,s23.n1) annotation(Line(points={{52.75,82},{61.5,83}}));
  connect(s31.n1,ubrfafibi.p1) annotation(Line(points={{119.5,91},{110.75,88}}));
  connect(s32.n1,ubrfi.s1) annotation(Line(points={{79.5,33},{88.25,33}}));
  connect(ubrfabi.p2,s50.n1) annotation(Line(points={{52.75,72},{61.5,71}}));
  connect(ubrfafi.aF1,sF16.n1) annotation(Line(points={{41.5,36},{31.5,41}}));
  connect(ubrfiba.iF1,sF29.n1) annotation(Line(points={{99.5,12},{95.5,17}}));
  connect(s37.n1,ubrfibabi.p1) annotation(Line(points={{119.5,-31},{110.75,-32}}));
  connect(s38.n1,ubrfibi.s1) annotation(Line(points={{79.5,-87},{88.25,-87}}));
  connect(ubrfiba.p2,s56.n1) annotation(Line(points={{110.75,-2},{119.5,-3}}));
  connect(ubrfiba.p1,s35.n1) annotation(Line(points={{110.75,8},{119.5,9}}));
  connect(s58.n1,ubrfibi.p2) annotation(Line(points={{119.5,-93},{110.75,-92}}));
  connect(s36.n1,ubrfibabi.s1) annotation(Line(points={{79.5,-37},{88.25,-37}}));
  connect(sF31.n1,ubrfibabi.iF1) annotation(Line(points={{95.5,-25},{99.5,-28}}));
  connect(sF35.n1,ubrfibi.iB1) annotation(Line(points={{89.5,-95},{99.5,-96}}));
  connect(s57.n1,ubrfibabi.p2) annotation(Line(points={{119.5,-43},{110.75,-42}}));
  connect(sF34.n1,ubrfibi.iF1) annotation(Line(points={{89.5,-77},{99.5,-78}}));
  connect(sF30.n1,ubrfiba.aB1) annotation(Line(points={{105.5,-9},{99.5,-6}}));
  connect(s39.n1,ubrfibi.p1) annotation(Line(points={{119.5,-81},{110.75,-82}}));
  connect(s34.n1,ubrfiba.s1) annotation(Line(points={{79.5,3},{88.25,3}}));
  connect(sF33.n1,ubrfibabi.iB1) annotation(Line(points={{109.5,-53},{99.5,-46}}));
  connect(sF32.n1,ubrfibabi.aB1) annotation(Line(points={{89.5,-53},{99.5,-46}}));
  connect(sF19.n1,ubrfafiba.iF1) annotation(Line(points={{51.5,7},{41.5,-4}}));
  connect(s26.n1,ubrfafiba.s1) annotation(Line(points={{17.5,-23},{30.25,-13}}));
  connect(sF18.n1,ubrfafiba.aF1) annotation(Line(points={{31.5,7},{41.5,-4}}));
  connect(s52.n1,ubrfafiba.p2) annotation(Line(points={{61.5,-19},{52.75,-18}}));
  connect(sF20.n1,ubrfafiba.aB1) annotation(Line(points={{45.5,-27},{41.5,-22}}));
  connect(ubrfafiba.p1,s27.n1) annotation(Line(points={{52.75,-8},{61.5,-7}}));
  connect(s29.n1,ubrfafibabi.p1) annotation(Line(points={{61.5,-67},{52.75,-68}}));
  connect(s53.n1,ubrfafibabi.p2) annotation(Line(points={{61.5,-79},{52.75,-78}}));
  connect(s28.n1,ubrfafibabi.s1) annotation(Line(points={{17.5,-73},{30.25,-73}}));
  connect(sF21.n1,ubrfafibabi.aF1) annotation(Line(points={{31.5,-57},{41.5,-64}}));
  connect(sF23.n1,ubrfafibabi.aB1) annotation(Line(points={{31.5,-93},{41.5,-82}}));
  connect(sF24.n1,ubrfafibabi.iB1) annotation(Line(points={{51.5,-93},{41.5,-82}}));
  connect(sF22.n1,ubrfafibabi.iF1) annotation(Line(points={{51.5,-57},{41.5,-64}}));
  annotation(Diagram(coordinateSystem(extent={{-148.5,105},{148.5,-105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(fillColor={170,0,0}, fillPattern=FillPattern.Solid, extent={{-100,-25},{-50,25}}),Ellipse(fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{50,25},{100,75}}),Ellipse(fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{50,-75},{100,-25}}),Line(points={{-50,0},{25,0},{57.28,32.54}}, arrow={Arrow.Open,Arrow.Open}, arrowSize=30),Line(points={{25,0},{56.7,-32.01}}, arrow={Arrow.None,Arrow.Open}, arrowSize=30),Ellipse(fillColor={255,255,0}, fillPattern=FillPattern.Solid, extent={{-25,50},{25,100}}),Line(points={{0,0},{0,50}})}));
end UniBi;
