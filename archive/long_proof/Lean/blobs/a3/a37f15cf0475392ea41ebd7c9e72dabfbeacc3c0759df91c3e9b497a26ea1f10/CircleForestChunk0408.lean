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
def state_173453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 99) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
def hex_173453 : String := "42430744410740420707074105404205430795074306444107400607410740424306950607"
theorem cover_173453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_173453)
  decide +kernel
#print axioms cover_173453

def state_173490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 39 else (if j.val < 4 then 29 else 47)))
def hex_173490 : String := "4306440608"
theorem cover_173490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_173490)
  decide +kernel
#print axioms cover_173490

def state_173495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
def hex_173495 : String := "424307444107420707410742070743060A"
theorem cover_173495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_173495)
  decide +kernel
#print axioms cover_173495

def state_173513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
def hex_173513 : String := "40424306080642434105050805"
theorem cover_173513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_173513)
  decide +kernel
#print axioms cover_173513

def state_173527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 23)))
def hex_173527 : String := "424344060A44414042080642084306080841400A420A430A0A0A43064406414240064306440641420A060A0642400643060A06"
theorem cover_173527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_173527)
  decide +kernel
#print axioms cover_173527

def state_173580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 23)))
def hex_173580 : String := "44414043064244064107060643064207054006054140430642090609400A09"
theorem cover_173580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_173580)
  decide +kernel
#print axioms cover_173580

def state_173612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 46)))
def hex_173612 : String := "414042084344054140064207050508420843050508"
theorem cover_173612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_173612)
  decide +kernel
#print axioms cover_173612

def state_173635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
def hex_173635 : String := "42430A0843444140420A06420706400A42080541400A090A440841400A420A434441070809440841400A09080A"
theorem cover_173635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_173635)
  decide +kernel
#print axioms cover_173635

def state_173680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
def hex_173680 : String := "42430908434441070509440841404209430744080909400808"
theorem cover_173680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_173680)
  decide +kernel
#print axioms cover_173680
end Mub6.Numerical.CircleFullPrototype.Forest
