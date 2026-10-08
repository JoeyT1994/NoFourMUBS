import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1499172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 121)))
def hex_1499172 : String := "404305410942444005060505430909"
theorem cover_1499172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499172 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1499172)
  decide +kernel
#print axioms cover_1499172

def state_1499188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 60)))
def hex_1499188 : String := "420644404341094209094109880606"
theorem cover_1499188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1499188)
  decide +kernel
#print axioms cover_1499188

def state_1499204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 60)))
def hex_1499204 : String := "44404341420609074106070606"
theorem cover_1499204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1499204)
  decide +kernel
#print axioms cover_1499204

def state_1499222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 162 else (if j.val < 4 then 206 else 120)))
def hex_1499222 : String := "4440434109094107070909"
theorem cover_1499222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1499222)
  decide +kernel
#print axioms cover_1499222

def state_1499233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 174) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 120)))
def hex_1499233 : String := "4440434142090842440809084142094440430809080942444007090944404308880840434105088809430941090940434105420505410942070509"
theorem cover_1499233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1499233)
  decide +kernel
#print axioms cover_1499233

def state_1499293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 162 else (if j.val < 4 then 206 else 120)))
def hex_1499293 : String := "444043410707070A4007430906"
theorem cover_1499293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1499293)
  decide +kernel
#print axioms cover_1499293

def state_1499307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 240)))
def hex_1499307 : String := "40434142440840070808084142440A0744084043088808420A0843084142090808"
theorem cover_1499307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1499307)
  decide +kernel
#print axioms cover_1499307

def state_1499340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 175) else (if j.val < 3 then 163 else (if j.val < 4 then 206 else 241)))
def hex_1499340 : String := "40434142444005090505424407050541420744404305074305880542074440070805434109084109420908"
theorem cover_1499340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499340 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1499340)
  decide +kernel
#print axioms cover_1499340

def state_1499383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 207 else 120)))
def hex_1499383 : String := "88"
theorem cover_1499383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1499383)
  decide +kernel
#print axioms cover_1499383

def state_1499384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 120)))
def hex_1499384 : String := "434109420944080988"
theorem cover_1499384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499384 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1499384)
  decide +kernel
#print axioms cover_1499384

def state_1499393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 87) else (if j.val < 3 then 81 else (if j.val < 4 then 103 else 121)))
def hex_1499393 : String := "40434142060542444007060644404305410505430509058806"
theorem cover_1499393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1499393)
  decide +kernel
#print axioms cover_1499393
end Mub6.Numerical.CircleFullD0.Forest
