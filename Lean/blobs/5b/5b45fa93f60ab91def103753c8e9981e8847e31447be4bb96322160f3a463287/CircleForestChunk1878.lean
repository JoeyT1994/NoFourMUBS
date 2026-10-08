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
def state_2323739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 88)))
def hex_2323739 : String := "420741434044074207084442074143400744074207410507070742410A074143404442070808440A0A40080A43400844070807400744074207414308060707"
theorem cover_2323739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_2323739)
  decide +kernel
#print axioms cover_2323739

def state_2323802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 89)))
def hex_2323802 : String := "42414340080A080741434008444208080808434005444205080808"
theorem cover_2323802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2323802)
  decide +kernel
#print axioms cover_2323802

def state_2323829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 62 else 44)))
def hex_2323829 : String := "44420A41434044420A410A0A0A0A40440A0A0A434044070A0A0A420A414340440A0A0A0A4340440A0A0A0A"
theorem cover_2323829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2323829)
  decide +kernel
#print axioms cover_2323829

def state_2323872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 63 else 44)))
def hex_2323872 : String := "404407420708444207410A07420A410A0A"
theorem cover_2323872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2323872)
  decide +kernel
#print axioms cover_2323872

def state_2323894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
def hex_2323894 : String := "41064340444206064206064442410543404405050540060541054305064241064340440606440542050540064406064105434044050605064006440606"
theorem cover_2323894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_2323894)
  decide +kernel
#print axioms cover_2323894

def state_2323955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
def hex_2323955 : String := "410643400A4405074006440606"
theorem cover_2323955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2323955)
  decide +kernel
#print axioms cover_2323955

def state_2323968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 89)))
def hex_2323968 : String := "4241064340084442080707084106430708"
theorem cover_2323968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2323968)
  decide +kernel
#print axioms cover_2323968
end Mub6.Numerical.CircleFullD0.Forest
