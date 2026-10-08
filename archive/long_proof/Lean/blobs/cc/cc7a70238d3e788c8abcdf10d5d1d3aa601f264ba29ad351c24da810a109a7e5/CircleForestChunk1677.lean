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
def state_2275711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 14)))
def hex_2275711 : String := "4041074442434407070707424344404107420607074041060607440706434407070707"
theorem cover_2275711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_2275711)
  decide +kernel
#print axioms cover_2275711

def state_2275747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 15)))
def hex_2275747 : String := "4340410844424308064340410844420643400708060741084442064308060840410606410606084108444208434008084006060840410606410606"
theorem cover_2275747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_2275747)
  decide +kernel
#print axioms cover_2275747

def state_2275809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
def hex_2275809 : String := "444243080843050742080A"
theorem cover_2275809 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275809 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2275809)
  decide +kernel
#print axioms cover_2275809

def state_2275825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 54) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2275825 : String := "44420843400505404105090808"
theorem cover_2275825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2275825)
  decide +kernel
#print axioms cover_2275825

def state_2275838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2275838 : String := "444243400741080740410606410606434009414442050508094009414442430806090909424307064340074108074009410806"
theorem cover_2275838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2275838)
  decide +kernel
#print axioms cover_2275838

def state_2275890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 54) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2275890 : String := "44420843050808"
theorem cover_2275890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2275890)
  decide +kernel
#print axioms cover_2275890

def state_2275899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 44 else 60)))
def hex_2275899 : String := "434108404442084308410844060608444208430808084108400606"
theorem cover_2275899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2275899)
  decide +kernel
#print axioms cover_2275899

def state_2275927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 60)))
def hex_2275927 : String := "414044050805404442434105440507410544400905400708054243080843050944424305400505054208430505"
theorem cover_2275927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2275927)
  decide +kernel
#print axioms cover_2275927
end Mub6.Numerical.CircleFullD0.Forest
