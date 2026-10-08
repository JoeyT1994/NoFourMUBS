import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1615254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 96)))
def hex_1615254 : String := "41400542434405410540080A05054008424308084344410540054208054140050A400742080A4405410508"
theorem cover_1615254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1615254)
  decide +kernel
#print axioms cover_1615254

def state_1615298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 92) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
def hex_1615298 : String := "4007424344410A40070A0744410540054208054140070A07430A440507"
theorem cover_1615298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1615298)
  decide +kernel
#print axioms cover_1615298

def state_1615327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 93) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
def hex_1615327 : String := "4007424344414007430608080708434441070707444140054243070505400742080707"
theorem cover_1615327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1615327)
  decide +kernel
#print axioms cover_1615327

def state_1615362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
def hex_1615362 : String := "44410508414005424344054105080505400642084344080606"
theorem cover_1615362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1615362)
  decide +kernel
#print axioms cover_1615362

def state_1615387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
def hex_1615387 : String := "4344410540054243440541050505054140050A400642070606"
theorem cover_1615387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1615387)
  decide +kernel
#print axioms cover_1615387

def state_1615412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_1615412 : String := "4007424341070741444006420706074440064207060707"
theorem cover_1615412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1615412)
  decide +kernel
#print axioms cover_1615412

def state_1615437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_1615437 : String := "420806"
theorem cover_1615437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1615437)
  decide +kernel
#print axioms cover_1615437

def state_1615441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
def hex_1615441 : String := "4341444008420843440841400742084308080808400742084307414408070844084007420843070808"
theorem cover_1615441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615441 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1615441)
  decide +kernel
#print axioms cover_1615441
end Mub6.Numerical.CircleFullD0.Forest
