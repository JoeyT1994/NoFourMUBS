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
def state_2556315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 96)))
def hex_2556315 : String := "4042430909430A44060A4209434441400A4209430909400909410A400A42090A444140060940090941400A42090A4042090A4209430909"
theorem cover_2556315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2556315)
  decide +kernel
#print axioms cover_2556315

def state_2556370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
def hex_2556370 : String := "40420A0A4243410A44090A4144090A09430A410A44400A42090A0A"
theorem cover_2556370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2556370)
  decide +kernel
#print axioms cover_2556370

def state_2556397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
def hex_2556397 : String := "4440420943414407050507420943E2414409400909094042050542430909434144400542060A0505414440054209430A090505"
theorem cover_2556397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2556397)
  decide +kernel
#print axioms cover_2556397

def state_2556450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 96)))
def hex_2556450 : String := "40424309060642094344064106400642080606"
theorem cover_2556450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2556450)
  decide +kernel
#print axioms cover_2556450

def state_2556470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 97)))
def hex_2556470 : String := "4243410A4407054144060A440605430A06"
theorem cover_2556470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2556470)
  decide +kernel
#print axioms cover_2556470

def state_2556487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 97)))
def hex_2556487 : String := "42434144094009090941090943414440064209060A44404209064209430A064005420A0A414406400642430A060644084005420808"
theorem cover_2556487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_2556487)
  decide +kernel
#print axioms cover_2556487
end Mub6.Numerical.CircleFullD0.Forest
