import CircleFullInterface
import CircleForestAssembly0050
import CircleForestChunk0200
import CircleForestChunk0201
import CircleForestChunk0202
import CircleForestChunk0203
import CircleForestChunk0204
import CircleForestChunk0205
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_69488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_69488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69488 := by
  apply coveredState_split_literal (state := state_69488) 4
    state_69489 state_69534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69489
  · exact cover_69534
#print axioms cover_69488

def state_69629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
theorem cover_69629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69629 := by
  apply coveredState_split_literal (state := state_69629) 3
    state_69630 state_69641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69630
  · exact cover_69641
#print axioms cover_69629

def state_69628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
theorem cover_69628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69628 := by
  apply coveredState_split_literal (state := state_69628) 1
    state_69629 state_69702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69629
  · exact cover_69702
#print axioms cover_69628

def state_69739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
theorem cover_69739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69739 := by
  apply coveredState_split_literal (state := state_69739) 3
    state_69740 state_69747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69740
  · exact cover_69747
#print axioms cover_69739

def state_69727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
theorem cover_69727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69727 := by
  apply coveredState_split_literal (state := state_69727) 1
    state_69728 state_69739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69728
  · exact cover_69739
#print axioms cover_69727

def state_69627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 9)))
theorem cover_69627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69627 := by
  apply coveredState_split_literal (state := state_69627) 0
    state_69628 state_69727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69628
  · exact cover_69727
#print axioms cover_69627

def state_69621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_69621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69621 := by
  apply coveredState_split_literal (state := state_69621) 4
    state_69622 state_69627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69622
  · exact cover_69627
#print axioms cover_69621

def state_69609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
theorem cover_69609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69609 := by
  apply coveredState_split_literal (state := state_69609) 3
    state_69610 state_69621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69610
  · exact cover_69621
#print axioms cover_69609

def state_69608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_69608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69608 := by
  apply coveredState_split_literal (state := state_69608) 2
    state_69609 state_69808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69609
  · exact cover_69808
#print axioms cover_69608

def state_69607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_69607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69607 := by
  apply coveredState_split_literal (state := state_69607) 1
    state_69608 state_69819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69608
  · exact cover_69819
#print axioms cover_69607

def state_69606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_69606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69606 := by
  apply coveredState_split_literal (state := state_69606) 0
    state_69607 state_69836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69607
  · exact cover_69836
#print axioms cover_69606

def state_69916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
theorem cover_69916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69916 := by
  apply coveredState_split_literal (state := state_69916) 2
    state_69917 state_69978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69917
  · exact cover_69978
#print axioms cover_69916

def state_69990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_69990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69990 := by
  apply coveredState_split_literal (state := state_69990) 1
    state_69991 state_70024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69991
  · exact cover_70024
#print axioms cover_69990

def state_70129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 46 else 20)))
theorem cover_70129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70129 := by
  apply coveredState_split_literal (state := state_70129) 4
    state_70130 state_70193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70130
  · exact cover_70193
#print axioms cover_70129

def state_70128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
theorem cover_70128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70128 := by
  apply coveredState_split_literal (state := state_70128) 2
    state_70129 state_70198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70129
  · exact cover_70198
#print axioms cover_70128

def state_70250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 94 else 40)))
theorem cover_70250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70250 := by
  apply coveredState_split_literal (state := state_70250) 0
    state_70251 state_70272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70251
  · exact cover_70272
#print axioms cover_70250

def state_70249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 40)))
theorem cover_70249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70249 := by
  apply coveredState_split_literal (state := state_70249) 3
    state_70250 state_70323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70250
  · exact cover_70323
#print axioms cover_70249

def state_70354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 41)))
theorem cover_70354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70354 := by
  apply coveredState_split_literal (state := state_70354) 3
    state_70355 state_70382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70355
  · exact cover_70382
#print axioms cover_70354

def state_70248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 20)))
theorem cover_70248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70248 := by
  apply coveredState_split_literal (state := state_70248) 4
    state_70249 state_70354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70249
  · exact cover_70354
#print axioms cover_70248

def state_70424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 40)))
theorem cover_70424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70424 := by
  apply coveredState_split_literal (state := state_70424) 3
    state_70425 state_70454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70425
  · exact cover_70454
#print axioms cover_70424

def state_70547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 82 else (if j.val < 4 then 94 else 41)))
theorem cover_70547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70547 := by
  apply coveredState_split_literal (state := state_70547) 4
    state_70548 state_70605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70548
  · exact cover_70605
#print axioms cover_70547

def state_70546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 41)))
theorem cover_70546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70546 := by
  apply coveredState_split_literal (state := state_70546) 2
    state_70547 state_70616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70547
  · exact cover_70616
#print axioms cover_70546

def state_70530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 41)))
theorem cover_70530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70530 := by
  apply coveredState_split_literal (state := state_70530) 1
    state_70531 state_70546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70531
  · exact cover_70546
#print axioms cover_70530

def state_70498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 94 else 41)))
theorem cover_70498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70498 := by
  apply coveredState_split_literal (state := state_70498) 0
    state_70499 state_70530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70499
  · exact cover_70530
#print axioms cover_70498

def state_70673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 41)))
theorem cover_70673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70673 := by
  apply coveredState_split_literal (state := state_70673) 2
    state_70674 state_70735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70674
  · exact cover_70735
#print axioms cover_70673

def state_70653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 41)))
theorem cover_70653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70653 := by
  apply coveredState_split_literal (state := state_70653) 1
    state_70654 state_70673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70654
  · exact cover_70673
#print axioms cover_70653

def state_70631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 41)))
theorem cover_70631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70631 := by
  apply coveredState_split_literal (state := state_70631) 0
    state_70632 state_70653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70632
  · exact cover_70653
#print axioms cover_70631

def state_70497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 41)))
theorem cover_70497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70497 := by
  apply coveredState_split_literal (state := state_70497) 3
    state_70498 state_70631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70498
  · exact cover_70631
#print axioms cover_70497

def state_70423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 20)))
theorem cover_70423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70423 := by
  apply coveredState_split_literal (state := state_70423) 4
    state_70424 state_70497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70424
  · exact cover_70497
#print axioms cover_70423

def state_70247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
theorem cover_70247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70247 := by
  apply coveredState_split_literal (state := state_70247) 2
    state_70248 state_70423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70248
  · exact cover_70423
#print axioms cover_70247

def state_70127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_70127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70127 := by
  apply coveredState_split_literal (state := state_70127) 3
    state_70128 state_70247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70128
  · exact cover_70247
#print axioms cover_70127

def state_70073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
theorem cover_70073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70073 := by
  apply coveredState_split_literal (state := state_70073) 1
    state_70074 state_70127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_70074
  · exact cover_70127
#print axioms cover_70073
end Mub6.Numerical.CircleFullPrototype.Forest
