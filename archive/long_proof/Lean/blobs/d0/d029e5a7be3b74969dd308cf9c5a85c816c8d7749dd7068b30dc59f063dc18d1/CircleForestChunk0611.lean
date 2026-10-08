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
def state_385452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_385452 : String := "4243054408054344404205060605444042084306084243060843064107064042060606"
theorem cover_385452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385452 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_385452)
  decide +kernel
#print axioms cover_385452

def state_385489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_385489 : String := "43054441430540420544090909434042054408050540084205444308080905"
theorem cover_385489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_385489)
  decide +kernel
#print axioms cover_385489

def state_385521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_385521 : String := "444142050A424043050605400A43050A05"
theorem cover_385521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_385521)
  decide +kernel
#print axioms cover_385521

def state_385540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_385540 : String := "4243400A44410542050A0540094441064342094009060609430A400A44410742430A070709"
theorem cover_385540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_385540)
  decide +kernel
#print axioms cover_385540

def state_385579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 4)))
def hex_385579 : String := "404441424305084306400744070A420806410A064441420543054044410A42050A0A44410505054205430540440808444205430541050505410505"
theorem cover_385579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_385579)
  decide +kernel
#print axioms cover_385579

def state_385639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
def hex_385639 : String := "444341420807084107074341090809"
theorem cover_385639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_385639)
  decide +kernel
#print axioms cover_385639

def state_385656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 8)))
def hex_385656 : String := "4142404408084443050605404407430A094443410642050706434105050942084044070844434208410707420807434205414408050808"
theorem cover_385656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_385656 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_385656)
  decide +kernel
#print axioms cover_385656
end Mub6.Numerical.CircleFullPrototype.Forest
