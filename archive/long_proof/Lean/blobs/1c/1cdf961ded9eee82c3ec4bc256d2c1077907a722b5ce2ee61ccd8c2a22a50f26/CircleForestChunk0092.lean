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
def state_959458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
def hex_959458 : String := "4142440A094443400641420A060A0A430640064109420906420A440A43060A"
theorem cover_959458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_959458)
  decide +kernel
#print axioms cover_959458

def state_959492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 54)))
def hex_959492 : String := "4340420A41440A43400642090A090A4241440A4305090A414443050A43054042090A424107054144050905440505400A420A41440A090A"
theorem cover_959492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_959492)
  decide +kernel
#print axioms cover_959492

def state_959547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 55)))
def hex_959547 : String := "434042094109440A064241090941444340090809084443054009420505430809400909"
theorem cover_959547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_959547)
  decide +kernel
#print axioms cover_959547

def state_959585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
def hex_959585 : String := "4142440A4306400A420A0A4443050A43064006410606420A440543050A"
theorem cover_959585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_959585)
  decide +kernel
#print axioms cover_959585

def state_959614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
def hex_959614 : String := "414244054305404241440509054144054305400609054241440505050544054305404142440506050505420505"
theorem cover_959614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_959614)
  decide +kernel
#print axioms cover_959614

def state_959660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 54)))
def hex_959660 : String := "41420A440A43400A41420A0A0A0A0A"
theorem cover_959660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_959660)
  decide +kernel
#print axioms cover_959660

def state_959677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 54)))
def hex_959677 : String := "440A4340420A0A4241440A090A414443050A4340094208410805090A400942060A"
theorem cover_959677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_959677)
  decide +kernel
#print axioms cover_959677

def state_959711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 108)))
def hex_959711 : String := "43400A41420A05050A"
theorem cover_959711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_959711)
  decide +kernel
#print axioms cover_959711
end Mub6.Numerical.CircleFullD0.Forest
