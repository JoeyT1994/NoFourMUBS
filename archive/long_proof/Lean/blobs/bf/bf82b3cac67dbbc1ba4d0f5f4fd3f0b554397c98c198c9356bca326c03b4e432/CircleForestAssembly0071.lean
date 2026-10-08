import CircleFullInterface
import CircleForestChunk0285
import CircleForestChunk0286
import CircleForestChunk0287
import CircleForestChunk0288
import CircleForestChunk0289
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1005952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_1005952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005952 := by
  apply coveredState_split_literal (state := state_1005952) 4
    state_1005953 state_1005974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005953
  · exact cover_1005974
#print axioms cover_1005952

def state_1006066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 21)))
theorem cover_1006066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006066 := by
  apply coveredState_split_literal (state := state_1006066) 4
    state_1006067 state_1006100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006067
  · exact cover_1006100
#print axioms cover_1006066

def state_1006052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 21)))
theorem cover_1006052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006052 := by
  apply coveredState_split_literal (state := state_1006052) 0
    state_1006053 state_1006066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006053
  · exact cover_1006066
#print axioms cover_1006052

def state_1006051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 21)))
theorem cover_1006051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006051 := by
  apply coveredState_split_literal (state := state_1006051) 3
    state_1006052 state_1006159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006052
  · exact cover_1006159
#print axioms cover_1006051

def state_1006037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 21)))
theorem cover_1006037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006037 := by
  apply coveredState_split_literal (state := state_1006037) 2
    state_1006038 state_1006051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006038
  · exact cover_1006051
#print axioms cover_1006037

def state_1006019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_1006019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006019 := by
  apply coveredState_split_literal (state := state_1006019) 4
    state_1006020 state_1006037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006020
  · exact cover_1006037
#print axioms cover_1006019

def state_1005951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_1005951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005951 := by
  apply coveredState_split_literal (state := state_1005951) 1
    state_1005952 state_1006019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005952
  · exact cover_1006019
#print axioms cover_1005951

def state_1006271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 42)))
theorem cover_1006271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006271 := by
  apply coveredState_split_literal (state := state_1006271) 2
    state_1006272 state_1006297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006272
  · exact cover_1006297
#print axioms cover_1006271

def state_1006415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 43)))
theorem cover_1006415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006415 := by
  apply coveredState_split_literal (state := state_1006415) 0
    state_1006416 state_1006459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006416
  · exact cover_1006459
#print axioms cover_1006415

def state_1006391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 43)))
theorem cover_1006391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006391 := by
  apply coveredState_split_literal (state := state_1006391) 1
    state_1006392 state_1006415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006392
  · exact cover_1006415
#print axioms cover_1006391

def state_1006390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 43)))
theorem cover_1006390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006390 := by
  apply coveredState_split_literal (state := state_1006390) 3
    state_1006391 state_1006500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006391
  · exact cover_1006500
#print axioms cover_1006390

def state_1006354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 43)))
theorem cover_1006354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006354 := by
  apply coveredState_split_literal (state := state_1006354) 2
    state_1006355 state_1006390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006355
  · exact cover_1006390
#print axioms cover_1006354

def state_1006270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 21)))
theorem cover_1006270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006270 := by
  apply coveredState_split_literal (state := state_1006270) 4
    state_1006271 state_1006354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006271
  · exact cover_1006354
#print axioms cover_1006270

def state_1006269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 21)))
theorem cover_1006269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006269 := by
  apply coveredState_split_literal (state := state_1006269) 0
    state_1006270 state_1006563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006270
  · exact cover_1006563
#print axioms cover_1006269

def state_1006268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 21)))
theorem cover_1006268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006268 := by
  apply coveredState_split_literal (state := state_1006268) 3
    state_1006269 state_1006594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006269
  · exact cover_1006594
#print axioms cover_1006268

def state_1006246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 21)))
theorem cover_1006246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006246 := by
  apply coveredState_split_literal (state := state_1006246) 2
    state_1006247 state_1006268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006247
  · exact cover_1006268
#print axioms cover_1006246

def state_1006216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_1006216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006216 := by
  apply coveredState_split_literal (state := state_1006216) 4
    state_1006217 state_1006246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006217
  · exact cover_1006246
#print axioms cover_1006216

def state_1006172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_1006172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006172 := by
  apply coveredState_split_literal (state := state_1006172) 1
    state_1006173 state_1006216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006173
  · exact cover_1006216
#print axioms cover_1006172

def state_1005950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 10)))
theorem cover_1005950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005950 := by
  apply coveredState_split_literal (state := state_1005950) 0
    state_1005951 state_1006172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005951
  · exact cover_1006172
#print axioms cover_1005950

def state_1005949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 10)))
theorem cover_1005949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005949 := by
  apply coveredState_split_literal (state := state_1005949) 3
    state_1005950 state_1006621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005950
  · exact cover_1006621
#print axioms cover_1005949

def state_1005935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
theorem cover_1005935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005935 := by
  apply coveredState_split_literal (state := state_1005935) 2
    state_1005936 state_1005949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1005936
  · exact cover_1005949
#print axioms cover_1005935

def state_1006696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 56 else 44)))
theorem cover_1006696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006696 := by
  apply coveredState_split_literal (state := state_1006696) 1
    state_1006697 state_1006704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006697
  · exact cover_1006704
#print axioms cover_1006696

def state_1006695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 28 else 44)))
theorem cover_1006695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006695 := by
  apply coveredState_split_literal (state := state_1006695) 3
    state_1006696 state_1006765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006696
  · exact cover_1006765
#print axioms cover_1006695

def state_1006687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 44)))
theorem cover_1006687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006687 := by
  apply coveredState_split_literal (state := state_1006687) 2
    state_1006688 state_1006695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006688
  · exact cover_1006695
#print axioms cover_1006687

def state_1006686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_1006686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006686 := by
  apply coveredState_split_literal (state := state_1006686) 4
    state_1006687 state_1006770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006687
  · exact cover_1006770
#print axioms cover_1006686

def state_1006685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
theorem cover_1006685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006685 := by
  apply coveredState_split_literal (state := state_1006685) 0
    state_1006686 state_1006779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006686
  · exact cover_1006779
#print axioms cover_1006685

def state_1006684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 22)))
theorem cover_1006684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006684 := by
  apply coveredState_split_literal (state := state_1006684) 3
    state_1006685 state_1006796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006685
  · exact cover_1006796
#print axioms cover_1006684

def state_1006682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_1006682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006682 := by
  apply coveredState_split_literal (state := state_1006682) 2
    state_1006683 state_1006684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006683
  · exact cover_1006684
#print axioms cover_1006682

def state_1006680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
theorem cover_1006680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006680 := by
  apply coveredState_split_literal (state := state_1006680) 1
    state_1006681 state_1006682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006681
  · exact cover_1006682
#print axioms cover_1006680

def state_1006679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_1006679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006679 := by
  apply coveredState_split_literal (state := state_1006679) 4
    state_1006680 state_1006797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006680
  · exact cover_1006797
#print axioms cover_1006679

def state_1006643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_1006643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006643 := by
  apply coveredState_split_literal (state := state_1006643) 0
    state_1006644 state_1006679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006644
  · exact cover_1006679
#print axioms cover_1006643

def state_1006642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_1006642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006642 := by
  apply coveredState_split_literal (state := state_1006642) 3
    state_1006643 state_1006798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006643
  · exact cover_1006798
#print axioms cover_1006642
end Mub6.Numerical.CircleFullD0.Forest
