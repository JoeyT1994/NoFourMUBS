import CircleFullInterface
import CircleForestAssembly0103
import CircleForestChunk0413
import CircleForestChunk0414
import CircleForestChunk0415
import CircleForestChunk0416
import CircleForestChunk0417
import CircleForestChunk0418
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_175006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 11)))
theorem cover_175006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175006 := by
  apply coveredState_split_literal (state := state_175006) 4
    state_175007 state_175036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175007
  · exact cover_175036
#print axioms cover_175006

def state_174994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_174994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174994 := by
  apply coveredState_split_literal (state := state_174994) 2
    state_174995 state_175006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174995
  · exact cover_175006
#print axioms cover_174994

def state_174966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_174966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174966 := by
  apply coveredState_split_literal (state := state_174966) 1
    state_174967 state_174994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174967
  · exact cover_174994
#print axioms cover_174966

def state_174932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
theorem cover_174932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174932 := by
  apply coveredState_split_literal (state := state_174932) 0
    state_174933 state_174966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174933
  · exact cover_174966
#print axioms cover_174932

def state_174910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 5)))
theorem cover_174910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174910 := by
  apply coveredState_split_literal (state := state_174910) 4
    state_174911 state_174932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174911
  · exact cover_174932
#print axioms cover_174910

def state_174870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_174870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174870 := by
  apply coveredState_split_literal (state := state_174870) 3
    state_174871 state_174910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174871
  · exact cover_174910
#print axioms cover_174870

def state_174862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
theorem cover_174862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174862 := by
  apply coveredState_split_literal (state := state_174862) 4
    state_174863 state_174870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174863
  · exact cover_174870
#print axioms cover_174862

def state_175087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_175087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175087 := by
  apply coveredState_split_literal (state := state_175087) 4
    state_175088 state_175089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175088
  · exact cover_175089
#print axioms cover_175087

def state_174861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_174861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174861 := by
  apply coveredState_split_literal (state := state_174861) 3
    state_174862 state_175087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174862
  · exact cover_175087
#print axioms cover_174861

def state_174860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_174860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174860 := by
  apply coveredState_split_literal (state := state_174860) 2
    state_174861 state_175152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_174861
  · exact cover_175152
#print axioms cover_174860

def state_172460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_172460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172460 := by
  apply coveredState_split_literal (state := state_172460) 1
    state_172461 state_174860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172461
  · exact cover_174860
#print axioms cover_172460

def state_175320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
theorem cover_175320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175320 := by
  apply coveredState_split_literal (state := state_175320) 1
    state_175321 state_175358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175321
  · exact cover_175358
#print axioms cover_175320

def state_175393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
theorem cover_175393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175393 := by
  apply coveredState_split_literal (state := state_175393) 1
    state_175394 state_175435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175394
  · exact cover_175435
#print axioms cover_175393

def state_175319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 11)))
theorem cover_175319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175319 := by
  apply coveredState_split_literal (state := state_175319) 3
    state_175320 state_175393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175320
  · exact cover_175393
#print axioms cover_175319

def state_175281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 11)))
theorem cover_175281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175281 := by
  apply coveredState_split_literal (state := state_175281) 2
    state_175282 state_175319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175282
  · exact cover_175319
#print axioms cover_175281

def state_175265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_175265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175265 := by
  apply coveredState_split_literal (state := state_175265) 4
    state_175266 state_175281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175266
  · exact cover_175281
#print axioms cover_175265

def state_175264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_175264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175264 := by
  apply coveredState_split_literal (state := state_175264) 1
    state_175265 state_175468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175265
  · exact cover_175468
#print axioms cover_175264

def state_175263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
theorem cover_175263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175263 := by
  apply coveredState_split_literal (state := state_175263) 0
    state_175264 state_175489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175264
  · exact cover_175489
#print axioms cover_175263

def state_175259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
theorem cover_175259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175259 := by
  apply coveredState_split_literal (state := state_175259) 4
    state_175260 state_175263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175260
  · exact cover_175263
#print axioms cover_175259

def state_175201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_175201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175201 := by
  apply coveredState_split_literal (state := state_175201) 3
    state_175202 state_175259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175202
  · exact cover_175259
#print axioms cover_175201

def state_175508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_175508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175508 := by
  apply coveredState_split_literal (state := state_175508) 3
    state_175509 state_175524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175509
  · exact cover_175524
#print axioms cover_175508

def state_175200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_175200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175200 := by
  apply coveredState_split_literal (state := state_175200) 2
    state_175201 state_175508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175201
  · exact cover_175508
#print axioms cover_175200

def state_175578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_175578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175578 := by
  apply coveredState_split_literal (state := state_175578) 3
    state_175579 state_175628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175579
  · exact cover_175628
#print axioms cover_175578

def state_175577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_175577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175577 := by
  apply coveredState_split_literal (state := state_175577) 2
    state_175578 state_175649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175578
  · exact cover_175649
#print axioms cover_175577

def state_175199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_175199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175199 := by
  apply coveredState_split_literal (state := state_175199) 1
    state_175200 state_175577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175200
  · exact cover_175577
#print axioms cover_175199

def state_172459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_172459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172459 := by
  apply coveredState_split_literal (state := state_172459) 0
    state_172460 state_175199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_172460
  · exact cover_175199
#print axioms cover_172459

def state_175781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_175781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175781 := by
  apply coveredState_split_literal (state := state_175781) 0
    state_175782 state_175805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175782
  · exact cover_175805
#print axioms cover_175781

def state_175780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_175780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175780 := by
  apply coveredState_split_literal (state := state_175780) 4
    state_175781 state_175862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175781
  · exact cover_175862
#print axioms cover_175780

def state_175951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 96)))
theorem cover_175951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175951 := by
  apply coveredState_split_literal (state := state_175951) 1
    state_175952 state_176003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175952
  · exact cover_176003
#print axioms cover_175951

def state_175950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 48)))
theorem cover_175950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175950 := by
  apply coveredState_split_literal (state := state_175950) 4
    state_175951 state_176016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175951
  · exact cover_176016
#print axioms cover_175950

def state_175942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 29 else 48)))
theorem cover_175942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175942 := by
  apply coveredState_split_literal (state := state_175942) 3
    state_175943 state_175950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175943
  · exact cover_175950
#print axioms cover_175942

def state_175941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 48)))
theorem cover_175941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175941 := by
  apply coveredState_split_literal (state := state_175941) 2
    state_175942 state_176023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175942
  · exact cover_176023
#print axioms cover_175941
end Mub6.Numerical.CircleFullPrototype.Forest
