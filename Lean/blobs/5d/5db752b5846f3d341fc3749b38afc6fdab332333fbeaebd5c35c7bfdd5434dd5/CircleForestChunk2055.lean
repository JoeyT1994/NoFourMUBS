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
def state_2573636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_2573636 : String := "4144074006054440060506"
theorem cover_2573636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2573636)
  decide +kernel
#print axioms cover_2573636

def state_2573649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
def hex_2573649 : String := "404243410A4407060A074243050A430741074407420A07"
theorem cover_2573649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2573649)
  decide +kernel
#print axioms cover_2573649

def state_2573673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 9)))
def hex_2573673 : String := "4243060A434441400A420A0740064206430608064441094009420A4344070A094109400942094344090609"
theorem cover_2573673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2573673)
  decide +kernel
#print axioms cover_2573673

def state_2573717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 9)))
def hex_2573717 : String := "4305440A0A"
theorem cover_2573717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2573717)
  decide +kernel
#print axioms cover_2573717

def state_2573723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 9)))
def hex_2573723 : String := "44414205400705420540430544074107070541424043050A054043440506440A0A43054405054240060540430644414206400643050506064305440505"
theorem cover_2573723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2573723)
  decide +kernel
#print axioms cover_2573723

def state_2573785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 18)))
def hex_2573785 : String := "410A4243400A050A43404407410A420A434007070A4407410A420543050A400A0A"
theorem cover_2573785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_2573785)
  decide +kernel
#print axioms cover_2573785

def state_2573818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 19)))
def hex_2573818 : String := "410A4243400A4405050A434044410A420A43060A410A0644410A42054305400A05410A4243050A43400605400A0A400A440A0A"
theorem cover_2573818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2573818)
  decide +kernel
#print axioms cover_2573818
end Mub6.Numerical.CircleFullD0.Forest
