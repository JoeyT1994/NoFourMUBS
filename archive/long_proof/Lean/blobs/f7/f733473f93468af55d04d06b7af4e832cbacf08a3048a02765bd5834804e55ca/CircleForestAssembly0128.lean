import CircleFullInterface
import CircleForestAssembly0125
import CircleForestAssembly0126
import CircleForestAssembly0127
import CircleForestChunk0504
import CircleForestChunk0505
import CircleForestChunk0506
import CircleForestChunk0507
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_281017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_281017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_281017 := by
  apply coveredState_split_literal (state := state_281017) 2
    state_281018 state_282473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_281018
  · exact cover_282473
#print axioms cover_281017

def state_280059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_280059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280059 := by
  apply coveredState_split_literal (state := state_280059) 1
    state_280060 state_281017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_280060
  · exact cover_281017
#print axioms cover_280059

def state_279719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_279719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279719 := by
  apply coveredState_split_literal (state := state_279719) 0
    state_279720 state_280059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_279720
  · exact cover_280059
#print axioms cover_279719

def state_282590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_282590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282590 := by
  apply coveredState_split_literal (state := state_282590) 3
    state_282591 state_282612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282591
  · exact cover_282612
#print axioms cover_282590

def state_282723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 12)))
theorem cover_282723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282723 := by
  apply coveredState_split_literal (state := state_282723) 4
    state_282724 state_282775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282724
  · exact cover_282775
#print axioms cover_282723

def state_282722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_282722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282722 := by
  apply coveredState_split_literal (state := state_282722) 3
    state_282723 state_282800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282723
  · exact cover_282800
#print axioms cover_282722

def state_282721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_282721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282721 := by
  apply coveredState_split_literal (state := state_282721) 1
    state_282722 state_282811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282722
  · exact cover_282811
#print axioms cover_282721

def state_282720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
theorem cover_282720 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282720 := by
  apply coveredState_split_literal (state := state_282720) 0
    state_282721 state_282836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282721
  · exact cover_282836
#print axioms cover_282720

def state_282719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_282719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282719 := by
  apply coveredState_split_literal (state := state_282719) 4
    state_282720 state_282869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282720
  · exact cover_282869
#print axioms cover_282719

def state_282718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_282718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282718 := by
  apply coveredState_split_literal (state := state_282718) 2
    state_282719 state_282886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282719
  · exact cover_282886
#print axioms cover_282718

def state_282717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_282717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282717 := by
  apply coveredState_split_literal (state := state_282717) 4
    state_282718 state_282921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282718
  · exact cover_282921
#print axioms cover_282717

def state_282667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_282667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282667 := by
  apply coveredState_split_literal (state := state_282667) 3
    state_282668 state_282717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282668
  · exact cover_282717
#print axioms cover_282667

def state_282589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_282589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282589 := by
  apply coveredState_split_literal (state := state_282589) 2
    state_282590 state_282667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282590
  · exact cover_282667
#print axioms cover_282589

def state_282533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_282533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282533 := by
  apply coveredState_split_literal (state := state_282533) 1
    state_282534 state_282589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282534
  · exact cover_282589
#print axioms cover_282533

def state_282994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_282994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282994 := by
  apply coveredState_split_literal (state := state_282994) 2
    state_282995 state_283044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282995
  · exact cover_283044
#print axioms cover_282994

def state_282993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_282993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282993 := by
  apply coveredState_split_literal (state := state_282993) 4
    state_282994 state_283059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282994
  · exact cover_283059
#print axioms cover_282993

def state_282991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_282991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282991 := by
  apply coveredState_split_literal (state := state_282991) 1
    state_282992 state_282993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282992
  · exact cover_282993
#print axioms cover_282991

def state_282981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_282981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282981 := by
  apply coveredState_split_literal (state := state_282981) 0
    state_282982 state_282991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282982
  · exact cover_282991
#print axioms cover_282981

def state_282980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_282980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282980 := by
  apply coveredState_split_literal (state := state_282980) 4
    state_282981 state_283062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282981
  · exact cover_283062
#print axioms cover_282980

def state_282928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_282928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282928 := by
  apply coveredState_split_literal (state := state_282928) 3
    state_282929 state_282980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282929
  · exact cover_282980
#print axioms cover_282928

def state_282927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_282927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_282927 := by
  apply coveredState_split_literal (state := state_282927) 2
    state_282928 state_283067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_282928
  · exact cover_283067
#print axioms cover_282927

def state_283128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
theorem cover_283128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283128 := by
  apply coveredState_split_literal (state := state_283128) 0
    state_283129 state_283162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283129
  · exact cover_283162
#print axioms cover_283128

def state_283203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_283203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283203 := by
  apply coveredState_split_literal (state := state_283203) 0
    state_283204 state_283239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283204
  · exact cover_283239
#print axioms cover_283203

def state_283127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_283127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283127 := by
  apply coveredState_split_literal (state := state_283127) 2
    state_283128 state_283203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283128
  · exact cover_283203
#print axioms cover_283127

def state_283126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_283126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283126 := by
  apply coveredState_split_literal (state := state_283126) 1
    state_283127 state_283276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283127
  · exact cover_283276
#print axioms cover_283126

def state_283125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_283125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283125 := by
  apply coveredState_split_literal (state := state_283125) 4
    state_283126 state_283313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283126
  · exact cover_283313
#print axioms cover_283125

def state_283111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_283111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283111 := by
  apply coveredState_split_literal (state := state_283111) 3
    state_283112 state_283125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283112
  · exact cover_283125
#print axioms cover_283111

def state_283089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_283089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283089 := by
  apply coveredState_split_literal (state := state_283089) 0
    state_283090 state_283111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283090
  · exact cover_283111
#print axioms cover_283089

def state_283088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_283088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283088 := by
  apply coveredState_split_literal (state := state_283088) 4
    state_283089 state_283328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283089
  · exact cover_283328
#print axioms cover_283088

def state_283337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_283337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283337 := by
  apply coveredState_split_literal (state := state_283337) 2
    state_283338 state_283357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283338
  · exact cover_283357
#print axioms cover_283337

def state_283336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_283336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283336 := by
  apply coveredState_split_literal (state := state_283336) 1
    state_283337 state_283406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283337
  · exact cover_283406
#print axioms cover_283336

def state_283335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_283335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_283335 := by
  apply coveredState_split_literal (state := state_283335) 4
    state_283336 state_283417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_283336
  · exact cover_283417
#print axioms cover_283335
end Mub6.Numerical.CircleFullPrototype.Forest
