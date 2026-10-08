import KarlssonSerializedLedger

import KarlssonLedgerConsumers

set_option autoImplicit false

set_option maxRecDepth 32768

set_option maxHeartbeats 4000000

namespace KarlssonLedgerExample

open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonLedger Mub6.Classification.KarlssonCompiler

noncomputable section

abbrev n0 : Job := ⟨.raw (.regular,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n0_L : Job := ⟨.raw (.regular,false),![⟨0,(1/2)⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n0_R : Job := ⟨.raw (.regular,false),![⟨(1/2),1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n1 : Job := ⟨.raw (.regular,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n2 : Job := ⟨.raw (.singularAInput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n2_P : Job := ⟨.lifted false,![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩,⟨-1,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n2_P_L : Job := ⟨.lifted false,![⟨0,1⟩,⟨-1,1⟩,⟨-1,0⟩,⟨-1,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n2_P_R : Job := ⟨.lifted false,![⟨0,1⟩,⟨-1,1⟩,⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n3 : Job := ⟨.raw (.singularAInput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n4 : Job := ⟨.raw (.singularAOutput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n5 : Job := ⟨.raw (.singularAOutput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n6 : Job := ⟨.raw (.singularBInput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n7 : Job := ⟨.raw (.singularBInput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n8 : Job := ⟨.raw (.singularBOutput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n9 : Job := ⟨.raw (.singularBOutput,true),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n10 : Job := ⟨.seam (false,false,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n11 : Job := ⟨.seam (false,false,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n12 : Job := ⟨.seam (false,false,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n13 : Job := ⟨.seam (false,false,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n14 : Job := ⟨.seam (false,true,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n15 : Job := ⟨.seam (false,true,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n16 : Job := ⟨.seam (false,true,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n17 : Job := ⟨.seam (false,true,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n18 : Job := ⟨.seam (true,false,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n19 : Job := ⟨.seam (true,false,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n20 : Job := ⟨.seam (true,false,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n21 : Job := ⟨.seam (true,false,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n22 : Job := ⟨.seam (true,true,false,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n23 : Job := ⟨.seam (true,true,false,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n24 : Job := ⟨.seam (true,true,true,false),![⟨-1,1⟩,⟨-1,1⟩]⟩

abbrev n25 : Job := ⟨.seam (true,true,true,true),![⟨-1,1⟩,⟨-1,1⟩]⟩

def n25_tree : Tree n25 := Tree.pending n25

def n24_tree : Tree n24 := Tree.pending n24

def n23_tree : Tree n23 := Tree.pending n23

def n22_tree : Tree n22 := Tree.pending n22

def n21_tree : Tree n21 := Tree.pending n21

def n20_tree : Tree n20 := Tree.pending n20

def n19_tree : Tree n19 := Tree.pending n19

def n18_tree : Tree n18 := Tree.pending n18

def n17_tree : Tree n17 := Tree.pending n17

def n16_tree : Tree n16 := Tree.pending n16

def n15_tree : Tree n15 := Tree.pending n15

def n14_tree : Tree n14 := Tree.pending n14

def n13_tree : Tree n13 := Tree.pending n13

def n12_tree : Tree n12 := Tree.pending n12

def n11_tree : Tree n11 := Tree.pending n11

def n10_tree : Tree n10 := Tree.pending n10

def n9_tree : Tree n9 := Tree.pending n9

def n8_tree : Tree n8 := Tree.pending n8

def n7_tree : Tree n7 := Tree.pending n7

def n6_tree : Tree n6 := Tree.pending n6

def n5_tree : Tree n5 := Tree.pending n5

def n4_tree : Tree n4 := Tree.pending n4

def n3_tree : Tree n3 := Tree.pending n3

def n2_P_R_tree : Tree n2_P_R := Tree.pending n2_P_R

def n2_P_L_tree : Tree n2_P_L := Tree.pending n2_P_L

theorem n2_P_left : left n2_P 2 0=n2_P_L := by
  apply congrArg (Job.mk n2_P.shape)
  funext i
  fin_cases i <;> rfl

theorem n2_P_right : right n2_P 2 0=n2_P_R := by
  apply congrArg (Job.mk n2_P.shape)
  funext i
  fin_cases i <;> rfl

def n2_P_tree : Tree n2_P := Tree.split n2_P 2 0 (Tree.transport n2_P_left n2_P_L_tree) (Tree.transport n2_P_right n2_P_R_tree)

def n2_input : RawInput := ⟨(.singularAInput,false),![⟨0,1⟩,⟨-1,1⟩,⟨-1,1⟩],⟨1,2⟩,fun _ => ⟨1,0,2⟩⟩

theorem n2_lift : Live n2 → Live n2_P := raw_lift_covers n2_input

def n2_tree : Tree n2 := Tree.rechart n2 n2_P n2_lift n2_P_tree

def n1_tree : Tree n1 := Tree.pending n1

def n0_R_tree : Tree n0_R := Tree.pending n0_R

def n0_L_tree : Tree n0_L := Tree.pending n0_L

theorem n0_left : left n0 0 (1/2)=n0_L := by
  apply congrArg (Job.mk n0.shape)
  funext i
  fin_cases i <;> rfl

theorem n0_right : right n0 0 (1/2)=n0_R := by
  apply congrArg (Job.mk n0.shape)
  funext i
  fin_cases i <;> rfl

def n0_tree : Tree n0 := Tree.split n0 0 (1/2) (Tree.transport n0_left n0_L_tree) (Tree.transport n0_right n0_R_tree)

def ledger : ForestOn roots := ForestOn.cons n0_tree (ForestOn.cons n1_tree (ForestOn.cons n2_tree (ForestOn.cons n3_tree (ForestOn.cons n4_tree (ForestOn.cons n5_tree (ForestOn.cons n6_tree (ForestOn.cons n7_tree (ForestOn.cons n8_tree (ForestOn.cons n9_tree (ForestOn.cons n10_tree (ForestOn.cons n11_tree (ForestOn.cons n12_tree (ForestOn.cons n13_tree (ForestOn.cons n14_tree (ForestOn.cons n15_tree (ForestOn.cons n16_tree (ForestOn.cons n17_tree (ForestOn.cons n18_tree (ForestOn.cons n19_tree (ForestOn.cons n20_tree (ForestOn.cons n21_tree (ForestOn.cons n22_tree (ForestOn.cons n23_tree (ForestOn.cons n24_tree (ForestOn.cons n25_tree (ForestOn.nil))))))))))))))))))))))))))

theorem literal_frontier : ledger.frontier=[n0_L,n0_R,n1,n2_P_L,n2_P_R,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25] := by
  simp only [ledger,ForestOn.frontier,Tree.frontier,Tree.transport_frontier,List.nil_append,List.cons_append,n0_tree,n0_L_tree,n0_R_tree,n1_tree,n2_tree,n2_P_tree,n2_P_L_tree,n2_P_R_tree,n3_tree,n4_tree,n5_tree,n6_tree,n7_tree,n8_tree,n9_tree,n10_tree,n11_tree,n12_tree,n13_tree,n14_tree,n15_tree,n16_tree,n17_tree,n18_tree,n19_tree,n20_tree,n21_tree,n22_tree,n23_tree,n24_tree,n25_tree]

theorem pending_count : ledger.frontier.length=28 := by rw [literal_frontier]; rfl

theorem physical_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ j ∈ ledger.frontier, Live j := serialized_forest_cover ledger hH h₂

#print axioms literal_frontier

#print axioms pending_count

#print axioms physical_cover

end

end KarlssonLedgerExample
