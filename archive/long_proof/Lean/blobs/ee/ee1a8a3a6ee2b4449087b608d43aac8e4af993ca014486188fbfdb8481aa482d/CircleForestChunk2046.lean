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
def state_2571555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
def hex_2571555 : String := "404243050505424306414440430505430609400506444005060543414440420505420608400506444005060541444005E2400542050544400542050505"
theorem cover_2571555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_2571555)
  decide +kernel
#print axioms cover_2571555

def state_2571616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 49)))
def hex_2571616 : String := "40054206430505"
theorem cover_2571616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2571616)
  decide +kernel
#print axioms cover_2571616

def state_2571623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
def hex_2571623 : String := "444005420643050505"
theorem cover_2571623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2571623)
  decide +kernel
#print axioms cover_2571623

def state_2571635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2571635 : String := "420505"
theorem cover_2571635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2571635)
  decide +kernel
#print axioms cover_2571635

def state_2571638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2571638 : String := "424341444007420943090740054205054407054144400708400542050544070543414440054243E2414407050543E24144080505050541444005080505"
theorem cover_2571638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571638 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2571638)
  decide +kernel
#print axioms cover_2571638

def state_2571699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_2571699 : String := "4005420505"
theorem cover_2571699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2571699)
  decide +kernel
#print axioms cover_2571699

def state_2571704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
def hex_2571704 : String := "44400542050505"
theorem cover_2571704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571704 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2571704)
  decide +kernel
#print axioms cover_2571704

def state_2571714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 48)))
def hex_2571714 : String := "4043050543424144400A43084208080A444005430505054144400908094440054305050542414440054342E241090542E2410905050541444005090505"
theorem cover_2571714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2571714)
  decide +kernel
#print axioms cover_2571714

def state_2571775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 49)))
def hex_2571775 : String := "4005430505"
theorem cover_2571775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2571775)
  decide +kernel
#print axioms cover_2571775

def state_2571780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 24)))
def hex_2571780 : String := "44400543050505"
theorem cover_2571780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2571780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2571780)
  decide +kernel
#print axioms cover_2571780
end Mub6.Numerical.CircleFullD0.Forest
