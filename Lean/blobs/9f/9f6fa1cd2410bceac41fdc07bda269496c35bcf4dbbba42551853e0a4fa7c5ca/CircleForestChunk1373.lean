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
def state_1630317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_1630317 : String := "414044420A060A4442434140440A0A44420543050605400A0541400A440A0A0A06424341400905050A43414007050A0A40064406420A06"
theorem cover_1630317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1630317)
  decide +kernel
#print axioms cover_1630317

def state_1630372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 19)))
def hex_1630372 : String := "4341090541400944420A0A094009440A05"
theorem cover_1630372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1630372)
  decide +kernel
#print axioms cover_1630372

def state_1630389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
def hex_1630389 : String := "4240440A094443420808420A400644060543050A4044060644434006080643054006440805"
theorem cover_1630389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630389 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1630389)
  decide +kernel
#print axioms cover_1630389

def state_1630426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_1630426 : String := "4142400A44434142070A0A0A0A4044060A444341400A44420A06420A0606410A0643410A0A0A420A400644060A"
theorem cover_1630426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1630426)
  decide +kernel
#print axioms cover_1630426

def state_1630471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_1630471 : String := "4006440641420A43400644060A060A"
theorem cover_1630471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1630471)
  decide +kernel
#print axioms cover_1630471

def state_1630488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
def hex_1630488 : String := "434440094142064306440606420A43090A0644400841080A0A"
theorem cover_1630488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630488 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1630488)
  decide +kernel
#print axioms cover_1630488

def state_1630514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 5)))
def hex_1630514 : String := "44400941430942444009410643060A09444009414309084309400842080809434209094244400941430A0A0A094440094143090A0A0909"
theorem cover_1630514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1630514)
  decide +kernel
#print axioms cover_1630514
end Mub6.Numerical.CircleFullD0.Forest
