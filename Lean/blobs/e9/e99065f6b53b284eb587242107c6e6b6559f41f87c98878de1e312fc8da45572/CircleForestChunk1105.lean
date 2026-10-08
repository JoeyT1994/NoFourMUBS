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
def state_1565549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 89)))
def hex_1565549 : String := "4342410506054241404443050A4305420805444305050540444306420A064342060642410A400A06410A0606410540440643050505"
theorem cover_1565549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565549 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1565549)
  decide +kernel
#print axioms cover_1565549

def state_1565602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 55 else (if j.val < 4 then 42 else 44)))
def hex_1565602 : String := "41054009440505"
theorem cover_1565602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1565602)
  decide +kernel
#print axioms cover_1565602

def state_1565611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
def hex_1565611 : String := "404443420A0808430808440A43420A050A"
theorem cover_1565611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1565611)
  decide +kernel
#print axioms cover_1565611

def state_1565629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
def hex_1565629 : String := "4443424140080A400744070A4140080A400944090A42070A434241084008440A08410840084443080808420808"
theorem cover_1565629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1565629)
  decide +kernel
#print axioms cover_1565629

def state_1565674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 44)))
def hex_1565674 : String := "4443420A410A0A0A4342410A400A0A410A40440A0A0A0A"
theorem cover_1565674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1565674)
  decide +kernel
#print axioms cover_1565674

def state_1565697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 44)))
def hex_1565697 : String := "414044050505404443090A434241050905420808444342410506050A43050A"
theorem cover_1565697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1565697)
  decide +kernel
#print axioms cover_1565697

def state_1565729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 45)))
def hex_1565729 : String := "4241404405050540444342410740080705424108400844430808080843070844430742410740444307424107400807070707050705"
theorem cover_1565729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 53) (hex := hex_1565729)
  decide +kernel
#print axioms cover_1565729
end Mub6.Numerical.CircleFullD0.Forest
