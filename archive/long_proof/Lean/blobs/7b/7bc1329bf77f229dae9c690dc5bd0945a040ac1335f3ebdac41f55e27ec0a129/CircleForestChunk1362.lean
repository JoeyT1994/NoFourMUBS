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
def state_1627633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
def hex_1627633 : String := "4243414008084044420808420909444208084206430708410840080843414007074007074108400808"
theorem cover_1627633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1627633)
  decide +kernel
#print axioms cover_1627633

def state_1627674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
def hex_1627674 : String := "4243414009064009444206090641400808404408094442080842060A43410709414008084044080944420807420907"
theorem cover_1627674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_1627674)
  decide +kernel
#print axioms cover_1627674

def state_1627722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_1627722 : String := "444243414009440A090A0A4341070606420A09"
theorem cover_1627722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627722 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1627722)
  decide +kernel
#print axioms cover_1627722

def state_1627746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 36)))
def hex_1627746 : String := "4442434140094208070A0A43070A420A09"
theorem cover_1627746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1627746)
  decide +kernel
#print axioms cover_1627746

def state_1627763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 36)))
def hex_1627763 : String := "44424341404206070640420507054108400A420A44080543074108400A44420807420807424341060541400A060A430741400A44080A400A440A05"
theorem cover_1627763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1627763)
  decide +kernel
#print axioms cover_1627763

def state_1627822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 36)))
def hex_1627822 : String := "4044420A0A0A4442430541400A050A4341070541400A44420A060A0A420543050A"
theorem cover_1627822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1627822)
  decide +kernel
#print axioms cover_1627822

def state_1627855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 99 else 36)))
def hex_1627855 : String := "4140444208080A44424341080A0808420A4341080A08400A44420A430A0A0A"
theorem cover_1627855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1627855)
  decide +kernel
#print axioms cover_1627855
end Mub6.Numerical.CircleFullD0.Forest
