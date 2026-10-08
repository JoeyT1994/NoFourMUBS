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
def state_8519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 109) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 72)))
def hex_8519 : String := "424309404205449A05094340449A07449A0940449A430707449A43094142050709"
theorem cover_8519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_8519)
  decide +kernel
#print axioms cover_8519

def state_8552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 73)))
def hex_8552 : String := "41420543070509"
theorem cover_8552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_8552)
  decide +kernel
#print axioms cover_8552

def state_8559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 17 else 36)))
def hex_8559 : String := "4340074244410707070740074244414307074307070707"
theorem cover_8559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_8559)
  decide +kernel
#print axioms cover_8559

def state_8582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 36)))
def hex_8582 : String := "4243094009094306400641424406070606"
theorem cover_8582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_8582)
  decide +kernel
#print axioms cover_8582

def state_8599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 37)))
def hex_8599 : String := "41424309400544410509050709"
theorem cover_8599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_8599)
  decide +kernel
#print axioms cover_8599

def state_8616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 36)))
def hex_8616 : String := "4044414208080941420808094441080909"
theorem cover_8616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_8616)
  decide +kernel
#print axioms cover_8616

def state_8634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 36)))
def hex_8634 : String := "444142064340410844080808404106449A4342060706064243094009064340449A090940449A43094142060709449A43094106094142064340410609060609"
theorem cover_8634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_8634)
  decide +kernel
#print axioms cover_8634

def state_8697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 36)))
def hex_8697 : String := "444106420643400905404443410605410609094443050606410609"
theorem cover_8697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_8697)
  decide +kernel
#print axioms cover_8697

def state_8725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 34 else 36)))
def hex_8725 : String := "404244410805410707440507420805"
theorem cover_8725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_8725)
  decide +kernel
#print axioms cover_8725
end Mub6.Numerical.CircleFullPrototype.Forest
