import D0FullInterface
import D0ForestAssembly0133
import D0ForestAssembly0134
import D0ForestChunk0520
import D0ForestChunk0521
import D0ForestChunk0524
import D0ForestChunk0525
import D0ForestChunk0526
import D0ForestChunk0527
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1314032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
theorem cover_1314032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314032 := by
  apply coveredState_split_literal (state := state_1314032) 4
    state_1314033 state_1314242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314033
  · exact cover_1314242
#print axioms cover_1314032

def state_1314577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 47)))
theorem cover_1314577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314577 := by
  apply coveredState_split_literal (state := state_1314577) 0
    state_1314578 state_1314597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314578
  · exact cover_1314597
#print axioms cover_1314577

def state_1314557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_1314557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314557 := by
  apply coveredState_split_literal (state := state_1314557) 4
    state_1314558 state_1314577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314558
  · exact cover_1314577
#print axioms cover_1314557

def state_1314031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1314031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314031 := by
  apply coveredState_split_literal (state := state_1314031) 2
    state_1314032 state_1314557
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314032
  · exact cover_1314557
#print axioms cover_1314031

def state_1314657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 23)))
theorem cover_1314657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314657 := by
  apply coveredState_split_literal (state := state_1314657) 4
    state_1314658 state_1314679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314658
  · exact cover_1314679
#print axioms cover_1314657

def state_1314656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1314656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314656 := by
  apply coveredState_split_literal (state := state_1314656) 2
    state_1314657 state_1314726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314657
  · exact cover_1314726
#print axioms cover_1314656

def state_1314030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1314030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314030 := by
  apply coveredState_split_literal (state := state_1314030) 1
    state_1314031 state_1314656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314031
  · exact cover_1314656
#print axioms cover_1314030

def state_1313962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_1313962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313962 := by
  apply coveredState_split_literal (state := state_1313962) 4
    state_1313963 state_1314030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313963
  · exact cover_1314030
#print axioms cover_1313962

def state_1313904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1313904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313904 := by
  apply coveredState_split_literal (state := state_1313904) 3
    state_1313905 state_1313962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313905
  · exact cover_1313962
#print axioms cover_1313904

def state_1314815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1314815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314815 := by
  apply coveredState_split_literal (state := state_1314815) 1
    state_1314816 state_1314841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314816
  · exact cover_1314841
#print axioms cover_1314815

def state_1314805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_1314805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314805 := by
  apply coveredState_split_literal (state := state_1314805) 4
    state_1314806 state_1314815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314806
  · exact cover_1314815
#print axioms cover_1314805

def state_1314789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1314789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314789 := by
  apply coveredState_split_literal (state := state_1314789) 3
    state_1314790 state_1314805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314790
  · exact cover_1314805
#print axioms cover_1314789

def state_1313903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1313903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313903 := by
  apply coveredState_split_literal (state := state_1313903) 0
    state_1313904 state_1314789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313904
  · exact cover_1314789
#print axioms cover_1313903

def state_1313902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1313902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313902 := by
  apply coveredState_split_literal (state := state_1313902) 2
    state_1313903 state_1314898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313903
  · exact cover_1314898
#print axioms cover_1313902

def state_1314935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1314935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314935 := by
  apply coveredState_split_literal (state := state_1314935) 2
    state_1314936 state_1314991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1314936
  · exact cover_1314991
#print axioms cover_1314935

def state_1313901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 11)))
theorem cover_1313901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313901 := by
  apply coveredState_split_literal (state := state_1313901) 1
    state_1313902 state_1314935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313902
  · exact cover_1314935
#print axioms cover_1313901

def state_1313881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
theorem cover_1313881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313881 := by
  apply coveredState_split_literal (state := state_1313881) 4
    state_1313882 state_1313901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313882
  · exact cover_1313901
#print axioms cover_1313881

def state_1315016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_1315016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315016 := by
  apply coveredState_split_literal (state := state_1315016) 0
    state_1315017 state_1315070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315017
  · exact cover_1315070
#print axioms cover_1315016

def state_1315015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1315015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315015 := by
  apply coveredState_split_literal (state := state_1315015) 2
    state_1315016 state_1315101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315016
  · exact cover_1315101
#print axioms cover_1315015

def state_1315014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_1315014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315014 := by
  apply coveredState_split_literal (state := state_1315014) 1
    state_1315015 state_1315126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315015
  · exact cover_1315126
#print axioms cover_1315014

def state_1315010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_1315010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315010 := by
  apply coveredState_split_literal (state := state_1315010) 4
    state_1315011 state_1315014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315011
  · exact cover_1315014
#print axioms cover_1315010

def state_1313880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1313880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313880 := by
  apply coveredState_split_literal (state := state_1313880) 3
    state_1313881 state_1315010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313881
  · exact cover_1315010
#print axioms cover_1313880

def state_1313782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1313782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313782 := by
  apply coveredState_split_literal (state := state_1313782) 0
    state_1313783 state_1313880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313783
  · exact cover_1313880
#print axioms cover_1313782

def state_1313776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_1313776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313776 := by
  apply coveredState_split_literal (state := state_1313776) 4
    state_1313777 state_1313782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313777
  · exact cover_1313782
#print axioms cover_1313776

def state_1313775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_1313775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313775 := by
  apply coveredState_split_literal (state := state_1313775) 3
    state_1313776 state_1315137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313776
  · exact cover_1315137
#print axioms cover_1313775

def state_1313774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1313774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1313774 := by
  apply coveredState_split_literal (state := state_1313774) 2
    state_1313775 state_1315138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1313775
  · exact cover_1315138
#print axioms cover_1313774

def state_1312796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1312796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312796 := by
  apply coveredState_split_literal (state := state_1312796) 1
    state_1312797 state_1313774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312797
  · exact cover_1313774
#print axioms cover_1312796

def state_1312606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1312606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312606 := by
  apply coveredState_split_literal (state := state_1312606) 0
    state_1312607 state_1312796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312607
  · exact cover_1312796
#print axioms cover_1312606

def state_1315157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315157 := by
  apply coveredState_split_literal (state := state_1315157) 2
    state_1315158 state_1315215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315158
  · exact cover_1315215
#print axioms cover_1315157

def state_1315156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315156 := by
  apply coveredState_split_literal (state := state_1315156) 1
    state_1315157 state_1315228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315157
  · exact cover_1315228
#print axioms cover_1315156

def state_1315314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1315314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315314 := by
  apply coveredState_split_literal (state := state_1315314) 0
    state_1315315 state_1315328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315315
  · exact cover_1315328
#print axioms cover_1315314

def state_1315313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 12)))
theorem cover_1315313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315313 := by
  apply coveredState_split_literal (state := state_1315313) 4
    state_1315314 state_1315385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315314
  · exact cover_1315385
#print axioms cover_1315313
end Mub6.Numerical.CircleFullD0.Forest
