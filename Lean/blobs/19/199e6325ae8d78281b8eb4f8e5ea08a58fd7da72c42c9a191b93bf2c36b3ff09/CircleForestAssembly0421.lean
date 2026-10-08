import CircleFullInterface
import CircleForestAssembly0420
import CircleForestChunk1642
import CircleForestChunk1643
import CircleForestChunk1644
import CircleForestChunk1645
import CircleForestChunk1646
import CircleForestChunk1647
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2267328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 14)))
theorem cover_2267328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267328 := by
  apply coveredState_split_literal (state := state_2267328) 2
    state_2267329 state_2267526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267329
  · exact cover_2267526
#print axioms cover_2267328

def state_2267327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2267327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267327 := by
  apply coveredState_split_literal (state := state_2267327) 4
    state_2267328 state_2267601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267328
  · exact cover_2267601
#print axioms cover_2267327

def state_2267303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_2267303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267303 := by
  apply coveredState_split_literal (state := state_2267303) 0
    state_2267304 state_2267327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267304
  · exact cover_2267327
#print axioms cover_2267303

def state_2267761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 56)))
theorem cover_2267761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267761 := by
  apply coveredState_split_literal (state := state_2267761) 2
    state_2267762 state_2267785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267762
  · exact cover_2267785
#print axioms cover_2267761

def state_2267739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
theorem cover_2267739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267739 := by
  apply coveredState_split_literal (state := state_2267739) 3
    state_2267740 state_2267761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267740
  · exact cover_2267761
#print axioms cover_2267739

def state_2267713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
theorem cover_2267713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267713 := by
  apply coveredState_split_literal (state := state_2267713) 0
    state_2267714 state_2267739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267714
  · exact cover_2267739
#print axioms cover_2267713

def state_2267712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2267712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267712 := by
  apply coveredState_split_literal (state := state_2267712) 4
    state_2267713 state_2267826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267713
  · exact cover_2267826
#print axioms cover_2267712

def state_2267711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2267711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267711 := by
  apply coveredState_split_literal (state := state_2267711) 1
    state_2267712 state_2267845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267712
  · exact cover_2267845
#print axioms cover_2267711

def state_2267685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
theorem cover_2267685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267685 := by
  apply coveredState_split_literal (state := state_2267685) 3
    state_2267686 state_2267711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267686
  · exact cover_2267711
#print axioms cover_2267685

def state_2267684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2267684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267684 := by
  apply coveredState_split_literal (state := state_2267684) 2
    state_2267685 state_2267856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267685
  · exact cover_2267856
#print axioms cover_2267684

def state_2267670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2267670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267670 := by
  apply coveredState_split_literal (state := state_2267670) 0
    state_2267671 state_2267684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267671
  · exact cover_2267684
#print axioms cover_2267670

def state_2267669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2267669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267669 := by
  apply coveredState_split_literal (state := state_2267669) 4
    state_2267670 state_2267895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267670
  · exact cover_2267895
#print axioms cover_2267669

def state_2267668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2267668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267668 := by
  apply coveredState_split_literal (state := state_2267668) 1
    state_2267669 state_2267924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267669
  · exact cover_2267924
#print axioms cover_2267668

def state_2267963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
theorem cover_2267963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267963 := by
  apply coveredState_split_literal (state := state_2267963) 1
    state_2267964 state_2268025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267964
  · exact cover_2268025
#print axioms cover_2267963

def state_2267962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
theorem cover_2267962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267962 := by
  apply coveredState_split_literal (state := state_2267962) 2
    state_2267963 state_2268036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267963
  · exact cover_2268036
#print axioms cover_2267962

def state_2267961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
theorem cover_2267961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267961 := by
  apply coveredState_split_literal (state := state_2267961) 3
    state_2267962 state_2268069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267962
  · exact cover_2268069
#print axioms cover_2267961

def state_2267935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
theorem cover_2267935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267935 := by
  apply coveredState_split_literal (state := state_2267935) 0
    state_2267936 state_2267961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267936
  · exact cover_2267961
#print axioms cover_2267935

def state_2267934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2267934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267934 := by
  apply coveredState_split_literal (state := state_2267934) 4
    state_2267935 state_2268092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267935
  · exact cover_2268092
#print axioms cover_2267934

def state_2267933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
theorem cover_2267933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267933 := by
  apply coveredState_split_literal (state := state_2267933) 1
    state_2267934 state_2268101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267934
  · exact cover_2268101
#print axioms cover_2267933

def state_2267667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 14)))
theorem cover_2267667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267667 := by
  apply coveredState_split_literal (state := state_2267667) 3
    state_2267668 state_2267933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267668
  · exact cover_2267933
#print axioms cover_2267667

def state_2267666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
theorem cover_2267666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267666 := by
  apply coveredState_split_literal (state := state_2267666) 2
    state_2267667 state_2268112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267667
  · exact cover_2268112
#print axioms cover_2267666

def state_2267665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
theorem cover_2267665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267665 := by
  apply coveredState_split_literal (state := state_2267665) 4
    state_2267666 state_2268145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2267666
  · exact cover_2268145
#print axioms cover_2267665

def state_2268203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 56)))
theorem cover_2268203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268203 := by
  apply coveredState_split_literal (state := state_2268203) 0
    state_2268204 state_2268217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268204
  · exact cover_2268217
#print axioms cover_2268203

def state_2268202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
theorem cover_2268202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268202 := by
  apply coveredState_split_literal (state := state_2268202) 4
    state_2268203 state_2268274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268203
  · exact cover_2268274
#print axioms cover_2268202

def state_2268178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
theorem cover_2268178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268178 := by
  apply coveredState_split_literal (state := state_2268178) 1
    state_2268179 state_2268202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268179
  · exact cover_2268202
#print axioms cover_2268178

def state_2268348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 56)))
theorem cover_2268348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268348 := by
  apply coveredState_split_literal (state := state_2268348) 2
    state_2268349 state_2268356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268349
  · exact cover_2268356
#print axioms cover_2268348

def state_2268292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
theorem cover_2268292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268292 := by
  apply coveredState_split_literal (state := state_2268292) 3
    state_2268293 state_2268348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268293
  · exact cover_2268348
#print axioms cover_2268292

def state_2268291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
theorem cover_2268291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268291 := by
  apply coveredState_split_literal (state := state_2268291) 0
    state_2268292 state_2268419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268292
  · exact cover_2268419
#print axioms cover_2268291

def state_2268290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
theorem cover_2268290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268290 := by
  apply coveredState_split_literal (state := state_2268290) 4
    state_2268291 state_2268456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268291
  · exact cover_2268456
#print axioms cover_2268290

def state_2268551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 56)))
theorem cover_2268551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268551 := by
  apply coveredState_split_literal (state := state_2268551) 1
    state_2268552 state_2268603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268552
  · exact cover_2268603
#print axioms cover_2268551

def state_2268531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 56)))
theorem cover_2268531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268531 := by
  apply coveredState_split_literal (state := state_2268531) 2
    state_2268532 state_2268551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268532
  · exact cover_2268551
#print axioms cover_2268531

def state_2268530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 56)))
theorem cover_2268530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268530 := by
  apply coveredState_split_literal (state := state_2268530) 3
    state_2268531 state_2268642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2268531
  · exact cover_2268642
#print axioms cover_2268530
end Mub6.Numerical.CircleFullD0.Forest
