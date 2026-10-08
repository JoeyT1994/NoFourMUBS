import CircleFullInterface
import CircleForestAssembly0082
import CircleForestAssembly0083
import CircleForestChunk0337
import CircleForestChunk0338
import CircleForestChunk0339
import CircleForestChunk0340
import CircleForestChunk0341
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_156228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_156228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156228 := by
  apply coveredState_split_literal (state := state_156228) 1
    state_156229 state_156378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156229
  · exact cover_156378
#print axioms cover_156228

def state_155936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_155936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155936 := by
  apply coveredState_split_literal (state := state_155936) 0
    state_155937 state_156228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155937
  · exact cover_156228
#print axioms cover_155936

def state_155104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_155104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155104 := by
  apply coveredState_split_literal (state := state_155104) 4
    state_155105 state_155936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_155105
  · exact cover_155936
#print axioms cover_155104

def state_154926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_154926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_154926 := by
  apply coveredState_split_literal (state := state_154926) 3
    state_154927 state_155104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_154927
  · exact cover_155104
#print axioms cover_154926

def state_156500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_156500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156500 := by
  apply coveredState_split_literal (state := state_156500) 1
    state_156501 state_156522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156501
  · exact cover_156522
#print axioms cover_156500

def state_156499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
theorem cover_156499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156499 := by
  apply coveredState_split_literal (state := state_156499) 0
    state_156500 state_156573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156500
  · exact cover_156573
#print axioms cover_156499

def state_156479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_156479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156479 := by
  apply coveredState_split_literal (state := state_156479) 4
    state_156480 state_156499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156480
  · exact cover_156499
#print axioms cover_156479

def state_156641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_156641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156641 := by
  apply coveredState_split_literal (state := state_156641) 4
    state_156642 state_156679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156642
  · exact cover_156679
#print axioms cover_156641

def state_156640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_156640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156640 := by
  apply coveredState_split_literal (state := state_156640) 2
    state_156641 state_156742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156641
  · exact cover_156742
#print axioms cover_156640

def state_156639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_156639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156639 := by
  apply coveredState_split_literal (state := state_156639) 3
    state_156640 state_156769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156640
  · exact cover_156769
#print axioms cover_156639

def state_156619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_156619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156619 := by
  apply coveredState_split_literal (state := state_156619) 1
    state_156620 state_156639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156620
  · exact cover_156639
#print axioms cover_156619

def state_156618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_156618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156618 := by
  apply coveredState_split_literal (state := state_156618) 0
    state_156619 state_156792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156619
  · exact cover_156792
#print axioms cover_156618

def state_156600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_156600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156600 := by
  apply coveredState_split_literal (state := state_156600) 4
    state_156601 state_156618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156601
  · exact cover_156618
#print axioms cover_156600

def state_156478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_156478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156478 := by
  apply coveredState_split_literal (state := state_156478) 3
    state_156479 state_156600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156479
  · exact cover_156600
#print axioms cover_156478

def state_156420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_156420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156420 := by
  apply coveredState_split_literal (state := state_156420) 2
    state_156421 state_156478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156421
  · exact cover_156478
#print axioms cover_156420

def state_156823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_156823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156823 := by
  apply coveredState_split_literal (state := state_156823) 0
    state_156824 state_156885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156824
  · exact cover_156885
#print axioms cover_156823

def state_156817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_156817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156817 := by
  apply coveredState_split_literal (state := state_156817) 4
    state_156818 state_156823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156818
  · exact cover_156823
#print axioms cover_156817

def state_156907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
theorem cover_156907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156907 := by
  apply coveredState_split_literal (state := state_156907) 4
    state_156908 state_156939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156908
  · exact cover_156939
#print axioms cover_156907

def state_156906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
theorem cover_156906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156906 := by
  apply coveredState_split_literal (state := state_156906) 1
    state_156907 state_156980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156907
  · exact cover_156980
#print axioms cover_156906

def state_156905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
theorem cover_156905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156905 := by
  apply coveredState_split_literal (state := state_156905) 3
    state_156906 state_156987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156906
  · exact cover_156987
#print axioms cover_156905

def state_156899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_156899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156899 := by
  apply coveredState_split_literal (state := state_156899) 2
    state_156900 state_156905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156900
  · exact cover_156905
#print axioms cover_156899

def state_156898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_156898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156898 := by
  apply coveredState_split_literal (state := state_156898) 0
    state_156899 state_156992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156899
  · exact cover_156992
#print axioms cover_156898

def state_156888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_156888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156888 := by
  apply coveredState_split_literal (state := state_156888) 4
    state_156889 state_156898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156889
  · exact cover_156898
#print axioms cover_156888

def state_156816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_156816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156816 := by
  apply coveredState_split_literal (state := state_156816) 3
    state_156817 state_156888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156817
  · exact cover_156888
#print axioms cover_156816

def state_156996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_156996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156996 := by
  apply coveredState_split_literal (state := state_156996) 4
    state_156997 state_156998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_156997
  · exact cover_156998
#print axioms cover_156996

def state_157119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_157119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157119 := by
  apply coveredState_split_literal (state := state_157119) 2
    state_157120 state_157143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157120
  · exact cover_157143
#print axioms cover_157119

def state_157103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_157103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157103 := by
  apply coveredState_split_literal (state := state_157103) 1
    state_157104 state_157119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157104
  · exact cover_157119
#print axioms cover_157103

def state_157102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 29)))
theorem cover_157102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157102 := by
  apply coveredState_split_literal (state := state_157102) 0
    state_157103 state_157200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157103
  · exact cover_157200
#print axioms cover_157102

def state_157100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 14)))
theorem cover_157100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157100 := by
  apply coveredState_split_literal (state := state_157100) 4
    state_157101 state_157102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157101
  · exact cover_157102
#print axioms cover_157100

def state_157099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
theorem cover_157099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157099 := by
  apply coveredState_split_literal (state := state_157099) 2
    state_157100 state_157201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157100
  · exact cover_157201
#print axioms cover_157099

def state_157098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
theorem cover_157098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157098 := by
  apply coveredState_split_literal (state := state_157098) 1
    state_157099 state_157202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157099
  · exact cover_157202
#print axioms cover_157098

def state_157242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
theorem cover_157242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157242 := by
  apply coveredState_split_literal (state := state_157242) 2
    state_157243 state_157272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157243
  · exact cover_157272
#print axioms cover_157242
end Mub6.Numerical.CircleFullPrototype.Forest
