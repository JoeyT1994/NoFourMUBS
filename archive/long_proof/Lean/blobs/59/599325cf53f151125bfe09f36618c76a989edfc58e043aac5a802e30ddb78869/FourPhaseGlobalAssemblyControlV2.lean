import FourPhaseWorkerLedger
set_option autoImplicit false
namespace FourPhaseGlobalAssemblyControlV2
open Mub6 Mub6.Classification.FourPhaseWorker
noncomputable section
abbrev n0 : Cell := root ![false,false,false,false]
abbrev n1 : Cell := root ![false,false,false,true]
abbrev n2 : Cell := root ![false,false,true,false]
abbrev n3 : Cell := root ![false,false,true,true]
abbrev n4 : Cell := root ![false,true,false,false]
abbrev n5 : Cell := root ![false,true,false,true]
abbrev n6 : Cell := root ![false,true,true,false]
abbrev n7 : Cell := root ![false,true,true,true]
abbrev n8 : Cell := root ![true,false,false,false]
abbrev n9 : Cell := root ![true,false,false,true]
abbrev n10 : Cell := root ![true,false,true,false]
abbrev n11 : Cell := root ![true,false,true,true]
abbrev n12 : Cell := root ![true,true,false,false]
abbrev n13 : Cell := root ![true,true,false,true]
abbrev n14 : Cell := root ![true,true,true,false]
abbrev n15 : Cell := root ![true,true,true,true]
theorem noFour_if_every_root_closed (root0_closed : ¬ Live n0)
(root1_closed : ¬ Live n1)
(root2_closed : ¬ Live n2)
(root3_closed : ¬ Live n3)
(root4_closed : ¬ Live n4)
(root5_closed : ¬ Live n5)
(root6_closed : ¬ Live n6)
(root7_closed : ¬ Live n7)
(root8_closed : ¬ Live n8)
(root9_closed : ¬ Live n9)
(root10_closed : ¬ Live n10)
(root11_closed : ¬ Live n11)
(root12_closed : ¬ Live n12)
(root13_closed : ¬ Live n13)
(root14_closed : ¬ Live n14)
(root15_closed : ¬ Live n15) : NoFourMUB6 := by
  apply all_roots_closed_noFour
  intro s
  have hs : s = ![s 0,s 1,s 2,s 3] := by funext i; fin_cases i <;> rfl
  rw [hs]
  cases h0 : s 0 <;> cases h1 : s 1 <;> cases h2 : s 2 <;> cases h3 : s 3
  · exact root0_closed
  · exact root1_closed
  · exact root2_closed
  · exact root3_closed
  · exact root4_closed
  · exact root5_closed
  · exact root6_closed
  · exact root7_closed
  · exact root8_closed
  · exact root9_closed
  · exact root10_closed
  · exact root11_closed
  · exact root12_closed
  · exact root13_closed
  · exact root14_closed
  · exact root15_closed
#print axioms FourPhaseGlobalAssemblyControlV2.noFour_if_every_root_closed
end
end FourPhaseGlobalAssemblyControlV2
