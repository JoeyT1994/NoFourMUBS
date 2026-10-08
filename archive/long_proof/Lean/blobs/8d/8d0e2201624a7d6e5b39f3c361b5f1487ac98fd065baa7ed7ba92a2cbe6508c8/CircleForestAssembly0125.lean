import CircleFullInterface
import CircleForestAssembly0124
import CircleForestChunk0493
import CircleForestChunk0494
import CircleForestChunk0495
import CircleForestChunk0496
import CircleForestChunk0497
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_279910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_279910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279910 := by
  apply coveredState_split_literal (state := state_279910) 0
    state_279911 state_279944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279911
  · exact cover_279944
#print axioms cover_279910

def state_279902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_279902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279902 := by
  apply coveredState_split_literal (state := state_279902) 4
    state_279903 state_279910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279903
  · exact cover_279910
#print axioms cover_279902

def state_279890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_279890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279890 := by
  apply coveredState_split_literal (state := state_279890) 3
    state_279891 state_279902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279891
  · exact cover_279902
#print axioms cover_279890

def state_279888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_279888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279888 := by
  apply coveredState_split_literal (state := state_279888) 4
    state_279889 state_279890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279889
  · exact cover_279890
#print axioms cover_279888

def state_279887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_279887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279887 := by
  apply coveredState_split_literal (state := state_279887) 3
    state_279888 state_279975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279888
  · exact cover_279975
#print axioms cover_279887

def state_279886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_279886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279886 := by
  apply coveredState_split_literal (state := state_279886) 2
    state_279887 state_280016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279887
  · exact cover_280016
#print axioms cover_279886

def state_279720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_279720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279720 := by
  apply coveredState_split_literal (state := state_279720) 1
    state_279721 state_279886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279721
  · exact cover_279886
#print axioms cover_279720

def state_280097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_280097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280097 := by
  apply coveredState_split_literal (state := state_280097) 1
    state_280098 state_280105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280098
  · exact cover_280105
#print axioms cover_280097

def state_280206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_280206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280206 := by
  apply coveredState_split_literal (state := state_280206) 4
    state_280207 state_280220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280207
  · exact cover_280220
#print axioms cover_280206

def state_280205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
theorem cover_280205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280205 := by
  apply coveredState_split_literal (state := state_280205) 0
    state_280206 state_280277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280206
  · exact cover_280277
#print axioms cover_280205

def state_280204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_280204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280204 := by
  apply coveredState_split_literal (state := state_280204) 2
    state_280205 state_280286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280205
  · exact cover_280286
#print axioms cover_280204

def state_280200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_280200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280200 := by
  apply coveredState_split_literal (state := state_280200) 4
    state_280201 state_280204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280201
  · exact cover_280204
#print axioms cover_280200

def state_280186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_280186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280186 := by
  apply coveredState_split_literal (state := state_280186) 3
    state_280187 state_280200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280187
  · exact cover_280200
#print axioms cover_280186

def state_280168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_280168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280168 := by
  apply coveredState_split_literal (state := state_280168) 1
    state_280169 state_280186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280169
  · exact cover_280186
#print axioms cover_280168

def state_280096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_280096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280096 := by
  apply coveredState_split_literal (state := state_280096) 0
    state_280097 state_280168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280097
  · exact cover_280168
#print axioms cover_280096

def state_280062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_280062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280062 := by
  apply coveredState_split_literal (state := state_280062) 4
    state_280063 state_280096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280063
  · exact cover_280096
#print axioms cover_280062

def state_280395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 4)))
theorem cover_280395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280395 := by
  apply coveredState_split_literal (state := state_280395) 3
    state_280396 state_280459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280396
  · exact cover_280459
#print axioms cover_280395

def state_280335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_280335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280335 := by
  apply coveredState_split_literal (state := state_280335) 2
    state_280336 state_280395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280336
  · exact cover_280395
#print axioms cover_280335

def state_280334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_280334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280334 := by
  apply coveredState_split_literal (state := state_280334) 1
    state_280335 state_280512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280335
  · exact cover_280512
#print axioms cover_280334

def state_280302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
theorem cover_280302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280302 := by
  apply coveredState_split_literal (state := state_280302) 0
    state_280303 state_280334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280303
  · exact cover_280334
#print axioms cover_280302

def state_280548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_280548 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280548 := by
  apply coveredState_split_literal (state := state_280548) 4
    state_280549 state_280564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280549
  · exact cover_280564
#print axioms cover_280548

def state_280522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_280522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280522 := by
  apply coveredState_split_literal (state := state_280522) 1
    state_280523 state_280548
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280523
  · exact cover_280548
#print axioms cover_280522

def state_280618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_280618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280618 := by
  apply coveredState_split_literal (state := state_280618) 4
    state_280619 state_280674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280619
  · exact cover_280674
#print axioms cover_280618

def state_280785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 23)))
theorem cover_280785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280785 := by
  apply coveredState_split_literal (state := state_280785) 4
    state_280786 state_280805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280786
  · exact cover_280805
#print axioms cover_280785

def state_280741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 23)))
theorem cover_280741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280741 := by
  apply coveredState_split_literal (state := state_280741) 2
    state_280742 state_280785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280742
  · exact cover_280785
#print axioms cover_280741

def state_280740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_280740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280740 := by
  apply coveredState_split_literal (state := state_280740) 3
    state_280741 state_280852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280741
  · exact cover_280852
#print axioms cover_280740

def state_280728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
theorem cover_280728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280728 := by
  apply coveredState_split_literal (state := state_280728) 1
    state_280729 state_280740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280729
  · exact cover_280740
#print axioms cover_280728

def state_280716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_280716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280716 := by
  apply coveredState_split_literal (state := state_280716) 4
    state_280717 state_280728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280717
  · exact cover_280728
#print axioms cover_280716

def state_280715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
theorem cover_280715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280715 := by
  apply coveredState_split_literal (state := state_280715) 0
    state_280716 state_280867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280716
  · exact cover_280867
#print axioms cover_280715

def state_280714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
theorem cover_280714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280714 := by
  apply coveredState_split_literal (state := state_280714) 3
    state_280715 state_280894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280715
  · exact cover_280894
#print axioms cover_280714

def state_280713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_280713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280713 := by
  apply coveredState_split_literal (state := state_280713) 2
    state_280714 state_280907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280714
  · exact cover_280907
#print axioms cover_280713

def state_280689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_280689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280689 := by
  apply coveredState_split_literal (state := state_280689) 4
    state_280690 state_280713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280690
  · exact cover_280713
#print axioms cover_280689
end Mub6.Numerical.CircleFullPrototype.Forest
