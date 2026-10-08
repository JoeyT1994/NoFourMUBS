import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_291173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 92) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
def hex_291173 : String := "434442414006430744A90606414009430709070744424109050909"
theorem cover_291173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_291173)
  decide +kernel
#print axioms cover_291173

def state_291200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 92) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
def hex_291200 : String := "4344424143074044A907050541430740070707074442054140094344A907440505404307050542414006050509"
theorem cover_291200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_291200)
  decide +kernel
#print axioms cover_291200

def state_291245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 93) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
def hex_291245 : String := "4006430705"
theorem cover_291245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_291245)
  decide +kernel
#print axioms cover_291245

def state_291250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 97 else (if j.val < 4 then 57 else 36)))
def hex_291250 : String := "414009434442414307400707074106070744424140094344060709400943070909094043070943074442070707"
theorem cover_291250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_291250)
  decide +kernel
#print axioms cover_291250

def state_291295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 37)))
def hex_291295 : String := "4241090609"
theorem cover_291295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_291295)
  decide +kernel
#print axioms cover_291295

def state_291300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 18)))
def hex_291300 : String := "4043080943444105070744414240094344060709054240094307090909"
theorem cover_291300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_291300)
  decide +kernel
#print axioms cover_291300

def state_291329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 47) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
def hex_291329 : String := "42400643074441420507050640084307440707"
theorem cover_291329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_291329)
  decide +kernel
#print axioms cover_291329

def state_291348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 19)))
def hex_291348 : String := "410907"
theorem cover_291348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_291348)
  decide +kernel
#print axioms cover_291348

def state_291351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 9)))
def hex_291351 : String := "44414240094344424140094344420541090509050541090909440909094240064344050605400943440A090909"
theorem cover_291351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 45) (hex := hex_291351)
  decide +kernel
#print axioms cover_291351

def state_291401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 56 else 18)))
def hex_291401 : String := "40444241070707074442070707"
theorem cover_291401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_291401)
  decide +kernel
#print axioms cover_291401
end Mub6.Numerical.CircleFullPrototype.Forest
