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
def state_2302531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
def hex_2302531 : String := "4105430A420A44050A"
theorem cover_2302531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2302531)
  decide +kernel
#print axioms cover_2302531

def state_2302540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 55 else 45)))
def hex_2302540 : String := "444041054305420605054041430506434244404105C405404109C441054305094405404105C405424440064105430505400609440606410543054244050905"
theorem cover_2302540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2302540)
  decide +kernel
#print axioms cover_2302540

def state_2302603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
def hex_2302603 : String := "41054405430505"
theorem cover_2302603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2302603)
  decide +kernel
#print axioms cover_2302603

def state_2302611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 23)))
def hex_2302611 : String := "08"
theorem cover_2302611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2302611)
  decide +kernel
#print axioms cover_2302611

def state_2302616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
def hex_2302616 : String := "430842444108404308424441094009080909084109404308090944410940090909"
theorem cover_2302616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_2302616)
  decide +kernel
#print axioms cover_2302616

def state_2302650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 54 else 46)))
def hex_2302650 : String := "4244080644084041080606"
theorem cover_2302650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302650 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2302650)
  decide +kernel
#print axioms cover_2302650

def state_2302663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 55 else 92)))
def hex_2302663 : String := "4041434244080A440841080A42440A410A07444140430907090A41090A430A07410A0A"
theorem cover_2302663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2302663)
  decide +kernel
#print axioms cover_2302663

def state_2302698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 55 else 93)))
def hex_2302698 : String := "4041434244410806410805444108404305050609424441090505444109400509094306054143060A06"
theorem cover_2302698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2302698)
  decide +kernel
#print axioms cover_2302698

def state_2302742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 102) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
def hex_2302742 : String := "4342440841084009084441084009080942444109404309070A4109400909440909"
theorem cover_2302742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2302742)
  decide +kernel
#print axioms cover_2302742
end Mub6.Numerical.CircleFullD0.Forest
