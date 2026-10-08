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
def state_18405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 20)))
def hex_18405 : String := "4042430A410A0A43410A05414043420A44050842440A0A4441400506054140080A40050A430A420A44060A404305420A050A420A4306410A06"
theorem cover_18405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_18405)
  decide +kernel
#print axioms cover_18405

def state_18462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 21)))
def hex_18462 : String := "4042430A0A434108094144404308420A4108090A40090A4440090A09420A430A0A"
theorem cover_18462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_18462)
  decide +kernel
#print axioms cover_18462

def state_18495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 10)))
def hex_18495 : String := "4344060744404305414240430544054108050605050640430741424440070707074244050705430641074244060706"
theorem cover_18495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_18495)
  decide +kernel
#print axioms cover_18495

def state_18542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
def hex_18542 : String := "4142430A0A430644410706074243060A06"
theorem cover_18542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_18542)
  decide +kernel
#print axioms cover_18542

def state_18559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
def hex_18559 : String := "404142430744404107420A070A0707424307444042094307090A0A074107420A07"
theorem cover_18559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_18559)
  decide +kernel
#print axioms cover_18559

def state_18597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 4)))
def hex_18597 : String := "4407434041420909420744074044074142074309074207434007070744074109420743060741094207094041420709074109420709"
theorem cover_18597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18597 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_18597)
  decide +kernel
#print axioms cover_18597

def state_18651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 8)))
def hex_18651 : String := "430909"
theorem cover_18651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_18651)
  decide +kernel
#print axioms cover_18651
end Mub6.Numerical.CircleFullPrototype.Forest
