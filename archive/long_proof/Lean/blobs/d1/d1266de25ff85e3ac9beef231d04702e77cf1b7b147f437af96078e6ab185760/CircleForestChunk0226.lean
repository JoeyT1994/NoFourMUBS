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
def state_991712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 11)))
def hex_991712 : String := "44414205064240430544410509050540430A44410A0A41060A0641054205400705"
theorem cover_991712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_991712)
  decide +kernel
#print axioms cover_991712

def state_991747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
def hex_991747 : String := "42054043064441054205060506"
theorem cover_991747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_991747)
  decide +kernel
#print axioms cover_991747

def state_991761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 22)))
def hex_991761 : String := "404344410542054043050505054441054205404305050505430505"
theorem cover_991761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_991761)
  decide +kernel
#print axioms cover_991761

def state_991791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 44)))
def hex_991791 : String := "41424043440A0544410542054043050505050606424043440941050844094105094309094043084408410A080A"
theorem cover_991791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_991791)
  decide +kernel
#print axioms cover_991791

def state_991836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 50 else 45)))
def hex_991836 : String := "4142050642404305050540430A44410642400806060706"
theorem cover_991836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_991836)
  decide +kernel
#print axioms cover_991836

def state_991862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
def hex_991862 : String := "404344410505050505"
theorem cover_991862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_991862)
  decide +kernel
#print axioms cover_991862

def state_991871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 44)))
def hex_991871 : String := "4043444106424043064441064205060606060644414205064240434441054205404306440905060544C60543060540430644C60606410542050606"
theorem cover_991871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_991871)
  decide +kernel
#print axioms cover_991871

def state_991931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 44)))
def hex_991931 : String := "4043444142054009090941050944414205404309440905090941050943440905440705"
theorem cover_991931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_991931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_991931)
  decide +kernel
#print axioms cover_991931
end Mub6.Numerical.CircleFullD0.Forest
