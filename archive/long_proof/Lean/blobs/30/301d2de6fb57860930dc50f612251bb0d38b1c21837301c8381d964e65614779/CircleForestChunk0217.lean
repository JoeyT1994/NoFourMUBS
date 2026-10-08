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
def state_73463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 96 else 41)))
def hex_73463 : String := "40414206080841424443404142060806B84008B8434006B84006B844434008B80843404142050507B84008B842440806440807"
theorem cover_73463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_73463)
  decide +kernel
#print axioms cover_73463

def state_73514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
def hex_73514 : String := "400841424408434005410507050808"
theorem cover_73514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_73514)
  decide +kernel
#print axioms cover_73514

def state_73529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_73529 : String := "424408064408430707"
theorem cover_73529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_73529)
  decide +kernel
#print axioms cover_73529

def state_73538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_73538 : String := "414244084008090808"
theorem cover_73538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_73538)
  decide +kernel
#print axioms cover_73538

def state_73547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 21)))
def hex_73547 : String := "400743414442064340064144420643070707070707074144420740074307070707"
theorem cover_73547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_73547)
  decide +kernel
#print axioms cover_73547

def state_73581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
def hex_73581 : String := "400843414244084340084142440843400841090908080808080808"
theorem cover_73581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73581 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 27) (hex := hex_73581)
  decide +kernel
#print axioms cover_73581

def state_73609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
def hex_73609 : String := "43414244400543070507440807074142050507"
theorem cover_73609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_73609)
  decide +kernel
#print axioms cover_73609

def state_73628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
def hex_73628 : String := "43414244434041090741094207094041050741424405050942074408070744430940080909420744080741424440054341050705074408400509420708"
theorem cover_73628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_73628)
  decide +kernel
#print axioms cover_73628

def state_73689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_73689 : String := "424408400741430705074408400841434205050508"
theorem cover_73689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_73689)
  decide +kernel
#print axioms cover_73689
end Mub6.Numerical.CircleFullPrototype.Forest
