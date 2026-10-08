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
def state_170530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 49 else 30)))
def hex_170530 : String := "4240414443420509050544074342050805410644074342064041064407060606404109444342400841080708090841064443420A0A0A43424008060806"
theorem cover_170530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170530 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_170530)
  decide +kernel
#print axioms cover_170530

def state_170591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 31)))
def hex_170591 : String := "43424041064443420A080808410644434240410609064008050606400841064443050606424041054406060606"
theorem cover_170591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_170591)
  decide +kernel
#print axioms cover_170591

def state_170636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 15)))
def hex_170636 : String := "404105440905410644424340050A054340090A0506"
theorem cover_170636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_170636)
  decide +kernel
#print axioms cover_170636

def state_170657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_170657 : String := "400541054442050905"
theorem cover_170657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170657 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_170657)
  decide +kernel
#print axioms cover_170657

def state_170668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
def hex_170668 : String := "09"
theorem cover_170668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_170668)
  decide +kernel
#print axioms cover_170668

def state_170670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
def hex_170670 : String := "09"
theorem cover_170670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_170670)
  decide +kernel
#print axioms cover_170670

def state_170672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 14)))
def hex_170672 : String := "434240094109444342060A094342404109440505410A054009054240090A0940094109440909420909"
theorem cover_170672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_170672)
  decide +kernel
#print axioms cover_170672

def state_170713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 15)))
def hex_170713 : String := "43424041090841440906444342404108084144050505054240084109440A08084307084008410708424008410644090608"
theorem cover_170713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_170713)
  decide +kernel
#print axioms cover_170713

def state_170762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 7)))
def hex_170762 : String := "09"
theorem cover_170762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170762 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_170762)
  decide +kernel
#print axioms cover_170762

def state_170763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_170763 : String := "440909"
theorem cover_170763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_170763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_170763)
  decide +kernel
#print axioms cover_170763
end Mub6.Numerical.CircleFullPrototype.Forest
