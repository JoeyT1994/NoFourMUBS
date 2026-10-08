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
def state_276252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 37)))
def hex_276252 : String := "4241400607074140070707"
theorem cover_276252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_276252)
  decide +kernel
#print axioms cover_276252

def state_276263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
def hex_276263 : String := "400743074442070707"
theorem cover_276263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_276263)
  decide +kernel
#print axioms cover_276263

def state_276272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 19)))
def hex_276272 : String := "4241400707074140070707"
theorem cover_276272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_276272)
  decide +kernel
#print axioms cover_276272

def state_276285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 16 else (if j.val < 4 then 29 else 18)))
def hex_276285 : String := "410606"
theorem cover_276285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276285 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_276285)
  decide +kernel
#print axioms cover_276285

def state_276290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 29 else 18)))
def hex_276290 : String := "430606"
theorem cover_276290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_276290)
  decide +kernel
#print axioms cover_276290

def state_276295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 58 else 36)))
def hex_276295 : String := "42410606414006434442064140064344D90808400643440A420609064206410940064307064442060A064006434442050A420607440606"
theorem cover_276295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_276295)
  decide +kernel
#print axioms cover_276295

def state_276350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 58 else 37)))
def hex_276350 : String := "4206414006434442060907084006430706"
theorem cover_276350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276350 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_276350)
  decide +kernel
#print axioms cover_276350

def state_276367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 59 else 18)))
def hex_276367 : String := "4442064106064206410606"
theorem cover_276367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_276367)
  decide +kernel
#print axioms cover_276367

def state_276378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 17 else (if j.val < 4 then 29 else 18)))
def hex_276378 : String := "4006434442064140060505420607440606"
theorem cover_276378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_276378)
  decide +kernel
#print axioms cover_276378

def state_276395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 19)))
def hex_276395 : String := "42410606414006444342060906084006440707"
theorem cover_276395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_276395)
  decide +kernel
#print axioms cover_276395

def state_276415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
def hex_276415 : String := "4344420A40410A430A4442084041084344420A40410A430A44D90A0A0A4442084041084344D9080808080A0A0A0A44420840080808"
theorem cover_276415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 53) (hex := hex_276415)
  decide +kernel
#print axioms cover_276415

def state_276471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 18)))
def hex_276471 : String := "4041430A4405080505"
theorem cover_276471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_276471)
  decide +kernel
#print axioms cover_276471

def state_276483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 18)))
def hex_276483 : String := "4442400705404143074442070707070A07"
theorem cover_276483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276483 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_276483)
  decide +kernel
#print axioms cover_276483

def state_276502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 36)))
def hex_276502 : String := "404143440507080505"
theorem cover_276502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_276502)
  decide +kernel
#print axioms cover_276502
end Mub6.Numerical.CircleFullPrototype.Forest
