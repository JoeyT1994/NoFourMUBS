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
def state_2318760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 21)))
def hex_2318760 : String := "444143400909400A4244074105070A094143400A4244054105090A40424406060A4244410509414340050506430940064409420606440A0A43094009420909"
theorem cover_2318760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2318760)
  decide +kernel
#print axioms cover_2318760

def state_2318825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 42)))
def hex_2318825 : String := "414305404207440505054340070807"
theorem cover_2318825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2318825)
  decide +kernel
#print axioms cover_2318825

def state_2318842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 43)))
def hex_2318842 : String := "40444205054241054305404405420505050505"
theorem cover_2318842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_2318842)
  decide +kernel
#print axioms cover_2318842

def state_2318863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 86)))
def hex_2318863 : String := "4241050741054305400705"
theorem cover_2318863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2318863)
  decide +kernel
#print axioms cover_2318863

def state_2318874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 87)))
def hex_2318874 : String := "42414305404405420505054340440742074105074405420505400744070A41054340440542050505404442070542414305060741054309074405420505"
theorem cover_2318874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2318874)
  decide +kernel
#print axioms cover_2318874

def state_2318935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
def hex_2318935 : String := "44054241050A05"
theorem cover_2318935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318935 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2318935)
  decide +kernel
#print axioms cover_2318935

def state_2318943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 43)))
def hex_2318943 : String := "40444207094241430609060944420605420606"
theorem cover_2318943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2318943)
  decide +kernel
#print axioms cover_2318943
end Mub6.Numerical.CircleFullD0.Forest
