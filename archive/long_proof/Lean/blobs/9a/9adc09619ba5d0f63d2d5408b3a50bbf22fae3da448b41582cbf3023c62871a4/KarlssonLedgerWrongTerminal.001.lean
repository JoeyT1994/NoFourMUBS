import KarlssonSerializedLedger

import KarlssonLedgerConsumers

import KarlssonLedgerExample

set_option autoImplicit false

set_option maxRecDepth 32768

set_option maxHeartbeats 4000000

namespace KarlssonLedgerWrongTerminal

open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonLedger Mub6.Classification.KarlssonCompiler

noncomputable section

abbrev n0 : Job := ofRaw ((.regular,false),(0,1),(-1,1),(-1,1))

abbrev n1 : Job := ofRaw ((.regular,true),(0,1),(-1,1),(-1,1))

abbrev n2 : Job := ofRaw ((.singularAInput,false),(0,1),(-1,1),(-1,1))

abbrev n3 : Job := ofRaw ((.singularAInput,true),(0,1),(-1,1),(-1,1))

abbrev n4 : Job := ofRaw ((.singularAOutput,false),(0,1),(-1,1),(-1,1))

abbrev n5 : Job := ofRaw ((.singularAOutput,true),(0,1),(-1,1),(-1,1))

abbrev n6 : Job := ofRaw ((.singularBInput,false),(0,1),(-1,1),(-1,1))

abbrev n7 : Job := ofRaw ((.singularBInput,true),(0,1),(-1,1),(-1,1))

abbrev n8 : Job := ofRaw ((.singularBOutput,false),(0,1),(-1,1),(-1,1))

abbrev n9 : Job := ofRaw ((.singularBOutput,true),(0,1),(-1,1),(-1,1))

abbrev n10 : Job := ofSeam ((false,false,false,false),(-1,1),(-1,1))

abbrev n11 : Job := ofSeam ((false,false,false,true),(-1,1),(-1,1))

abbrev n12 : Job := ofSeam ((false,false,true,false),(-1,1),(-1,1))

abbrev n13 : Job := ofSeam ((false,false,true,true),(-1,1),(-1,1))

abbrev n14 : Job := ofSeam ((false,true,false,false),(-1,1),(-1,1))

abbrev n15 : Job := ofSeam ((false,true,false,true),(-1,1),(-1,1))

abbrev n16 : Job := ofSeam ((false,true,true,false),(-1,1),(-1,1))

abbrev n17 : Job := ofSeam ((false,true,true,true),(-1,1),(-1,1))

abbrev n18 : Job := ofSeam ((true,false,false,false),(-1,1),(-1,1))

abbrev n19 : Job := ofSeam ((true,false,false,true),(-1,1),(-1,1))

abbrev n20 : Job := ofSeam ((true,false,true,false),(-1,1),(-1,1))

abbrev n21 : Job := ofSeam ((true,false,true,true),(-1,1),(-1,1))

abbrev n22 : Job := ofSeam ((true,true,false,false),(-1,1),(-1,1))

abbrev n23 : Job := ofSeam ((true,true,false,true),(-1,1),(-1,1))

abbrev n24 : Job := ofSeam ((true,true,true,false),(-1,1),(-1,1))

abbrev n25 : Job := ofSeam ((true,true,true,true),(-1,1),(-1,1))

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

def n2_tree : Tree n2 := Tree.pending n2

def n1_tree : Tree n1 := Tree.pending n1

def n0_tree : Tree n0 := Tree.terminal n0 (by exact KarlssonLedgerExample.pending_count)

def ledger : ForestOn roots := ForestOn.cons n0_tree (ForestOn.cons n1_tree (ForestOn.cons n2_tree (ForestOn.cons n3_tree (ForestOn.cons n4_tree (ForestOn.cons n5_tree (ForestOn.cons n6_tree (ForestOn.cons n7_tree (ForestOn.cons n8_tree (ForestOn.cons n9_tree (ForestOn.cons n10_tree (ForestOn.cons n11_tree (ForestOn.cons n12_tree (ForestOn.cons n13_tree (ForestOn.cons n14_tree (ForestOn.cons n15_tree (ForestOn.cons n16_tree (ForestOn.cons n17_tree (ForestOn.cons n18_tree (ForestOn.cons n19_tree (ForestOn.cons n20_tree (ForestOn.cons n21_tree (ForestOn.cons n22_tree (ForestOn.cons n23_tree (ForestOn.cons n24_tree (ForestOn.cons n25_tree (ForestOn.nil))))))))))))))))))))))))))

theorem literal_frontier : ledger.frontier=[n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25] := by
  simp only [ledger,ForestOn.frontier,Tree.frontier,Tree.transport_frontier,List.nil_append,List.cons_append,n0_tree,n1_tree,n2_tree,n3_tree,n4_tree,n5_tree,n6_tree,n7_tree,n8_tree,n9_tree,n10_tree,n11_tree,n12_tree,n13_tree,n14_tree,n15_tree,n16_tree,n17_tree,n18_tree,n19_tree,n20_tree,n21_tree,n22_tree,n23_tree,n24_tree,n25_tree]
  all_goals simp only [Tree.transport_frontier,Tree.frontier,List.nil_append,List.cons_append]
  all_goals rfl

theorem pending_count : ledger.frontier.length=25 := by rw [literal_frontier]; rfl

theorem physical_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ j ∈ ledger.frontier, Live j := serialized_forest_cover ledger hH h₂

#print axioms literal_frontier

#print axioms pending_count

#print axioms physical_cover

end

end KarlssonLedgerWrongTerminal
