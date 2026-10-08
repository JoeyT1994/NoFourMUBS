import CircleFullInterface
import CircleForestAssembly0088
import CircleForestChunk0357
import CircleForestChunk0358
import CircleForestChunk0359
import CircleForestChunk0360
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_161191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_161191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161191 := by
  apply coveredState_split_literal (state := state_161191) 2
    state_161192 state_161225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161192
  · exact cover_161225
#print axioms cover_161191

def state_161089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_161089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161089 := by
  apply coveredState_split_literal (state := state_161089) 1
    state_161090 state_161191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161090
  · exact cover_161191
#print axioms cover_161089

def state_161088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_161088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161088 := by
  apply coveredState_split_literal (state := state_161088) 0
    state_161089 state_161292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161089
  · exact cover_161292
#print axioms cover_161088

def state_161308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_161308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161308 := by
  apply coveredState_split_literal (state := state_161308) 1
    state_161309 state_161346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161309
  · exact cover_161346
#print axioms cover_161308

def state_161307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_161307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161307 := by
  apply coveredState_split_literal (state := state_161307) 0
    state_161308 state_161389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161308
  · exact cover_161389
#print axioms cover_161307

def state_161087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_161087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161087 := by
  apply coveredState_split_literal (state := state_161087) 4
    state_161088 state_161307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161088
  · exact cover_161307
#print axioms cover_161087

def state_161418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_161418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161418 := by
  apply coveredState_split_literal (state := state_161418) 1
    state_161419 state_161468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161419
  · exact cover_161468
#print axioms cover_161418

def state_161417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_161417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161417 := by
  apply coveredState_split_literal (state := state_161417) 0
    state_161418 state_161499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161418
  · exact cover_161499
#print axioms cover_161417

def state_161578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_161578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161578 := by
  apply coveredState_split_literal (state := state_161578) 1
    state_161579 state_161642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161579
  · exact cover_161642
#print axioms cover_161578

def state_161526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_161526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161526 := by
  apply coveredState_split_literal (state := state_161526) 0
    state_161527 state_161578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161527
  · exact cover_161578
#print axioms cover_161526

def state_161416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_161416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161416 := by
  apply coveredState_split_literal (state := state_161416) 4
    state_161417 state_161526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161417
  · exact cover_161526
#print axioms cover_161416

def state_161086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_161086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161086 := by
  apply coveredState_split_literal (state := state_161086) 3
    state_161087 state_161416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161087
  · exact cover_161416
#print axioms cover_161086

def state_161708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_161708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161708 := by
  apply coveredState_split_literal (state := state_161708) 3
    state_161709 state_161740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161709
  · exact cover_161740
#print axioms cover_161708

def state_161700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_161700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161700 := by
  apply coveredState_split_literal (state := state_161700) 1
    state_161701 state_161708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161701
  · exact cover_161708
#print axioms cover_161700

def state_161699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_161699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161699 := by
  apply coveredState_split_literal (state := state_161699) 0
    state_161700 state_161773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161700
  · exact cover_161773
#print axioms cover_161699

def state_161698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_161698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161698 := by
  apply coveredState_split_literal (state := state_161698) 2
    state_161699 state_161782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161699
  · exact cover_161782
#print axioms cover_161698

def state_161686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
theorem cover_161686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161686 := by
  apply coveredState_split_literal (state := state_161686) 4
    state_161687 state_161698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161687
  · exact cover_161698
#print axioms cover_161686

def state_161668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_161668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161668 := by
  apply coveredState_split_literal (state := state_161668) 3
    state_161669 state_161686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161669
  · exact cover_161686
#print axioms cover_161668

def state_161662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_161662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161662 := by
  apply coveredState_split_literal (state := state_161662) 1
    state_161663 state_161668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161663
  · exact cover_161668
#print axioms cover_161662

def state_161661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_161661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161661 := by
  apply coveredState_split_literal (state := state_161661) 0
    state_161662 state_161789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161662
  · exact cover_161789
#print axioms cover_161661

def state_161660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_161660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161660 := by
  apply coveredState_split_literal (state := state_161660) 4
    state_161661 state_161794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161661
  · exact cover_161794
#print axioms cover_161660

def state_161795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_161795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161795 := by
  apply coveredState_split_literal (state := state_161795) 4
    state_161796 state_161841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161796
  · exact cover_161841
#print axioms cover_161795

def state_161659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_161659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161659 := by
  apply coveredState_split_literal (state := state_161659) 3
    state_161660 state_161795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161660
  · exact cover_161795
#print axioms cover_161659

def state_161085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_161085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161085 := by
  apply coveredState_split_literal (state := state_161085) 2
    state_161086 state_161659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161086
  · exact cover_161659
#print axioms cover_161085

def state_161914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 13 else 13)))
theorem cover_161914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161914 := by
  apply coveredState_split_literal (state := state_161914) 3
    state_161915 state_161946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161915
  · exact cover_161946
#print axioms cover_161914

def state_161908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_161908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161908 := by
  apply coveredState_split_literal (state := state_161908) 2
    state_161909 state_161914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161909
  · exact cover_161914
#print axioms cover_161908

def state_161907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_161907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161907 := by
  apply coveredState_split_literal (state := state_161907) 0
    state_161908 state_161981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161908
  · exact cover_161981
#print axioms cover_161907

def state_161906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
theorem cover_161906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161906 := by
  apply coveredState_split_literal (state := state_161906) 1
    state_161907 state_161986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161907
  · exact cover_161986
#print axioms cover_161906

def state_161890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 6)))
theorem cover_161890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161890 := by
  apply coveredState_split_literal (state := state_161890) 4
    state_161891 state_161906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161891
  · exact cover_161906
#print axioms cover_161890

def state_161876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
theorem cover_161876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161876 := by
  apply coveredState_split_literal (state := state_161876) 3
    state_161877 state_161890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161877
  · exact cover_161890
#print axioms cover_161876

def state_161872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_161872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161872 := by
  apply coveredState_split_literal (state := state_161872) 2
    state_161873 state_161876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161873
  · exact cover_161876
#print axioms cover_161872

def state_161871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_161871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_161871 := by
  apply coveredState_split_literal (state := state_161871) 0
    state_161872 state_161993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_161872
  · exact cover_161993
#print axioms cover_161871
end Mub6.Numerical.CircleFullPrototype.Forest
