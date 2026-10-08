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
def state_2586447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 18)))
def hex_2586447 : String := "4041080841440742430740070707440742430740070707"
theorem cover_2586447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2586447)
  decide +kernel
#print axioms cover_2586447

def state_2586471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 18)))
def hex_2586471 : String := "414407424308400544070A084407424308400541080808"
theorem cover_2586471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2586471)
  decide +kernel
#print axioms cover_2586471

def state_2586495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 18)))
def hex_2586495 : String := "44074243404407410A4243070A07440641064243070A074044060A06434044074107070606"
theorem cover_2586495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2586495)
  decide +kernel
#print axioms cover_2586495

def state_2586533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 36)))
def hex_2586533 : String := "07"
theorem cover_2586533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586533 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2586533)
  decide +kernel
#print axioms cover_2586533

def state_2586536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 37)))
def hex_2586536 : String := "40414407080841440742430740070707440742430740070707"
theorem cover_2586536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2586536)
  decide +kernel
#print axioms cover_2586536

def state_2586561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 37)))
def hex_2586561 : String := "40414407424340084407410A084044050544070A430840050644074243084008DC0841440642434044074107070606064407DC"
theorem cover_2586561 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586561 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2586561)
  decide +kernel
#print axioms cover_2586561

def state_2586612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 37)))
def hex_2586612 : String := "43400841070740414406080841064406430706"
theorem cover_2586612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2586612)
  decide +kernel
#print axioms cover_2586612

def state_2586631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 18)))
def hex_2586631 : String := "434008414407420707074041050541440643424007060606440743084240050605"
theorem cover_2586631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2586631)
  decide +kernel
#print axioms cover_2586631

def state_2586667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
def hex_2586667 : String := "444142430608080806"
theorem cover_2586667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2586667)
  decide +kernel
#print axioms cover_2586667
end Mub6.Numerical.CircleFullD0.Forest
