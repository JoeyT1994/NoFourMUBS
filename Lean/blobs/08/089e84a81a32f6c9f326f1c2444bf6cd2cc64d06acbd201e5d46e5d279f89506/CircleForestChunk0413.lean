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
def state_1036600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 37 else 63)))
def hex_1036600 : String := "434440074142430944090A07094006410A42060644404107074142434440070840070844400708400708074243094440410707098407400741424307080784"
theorem cover_1036600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1036600)
  decide +kernel
#print axioms cover_1036600

def state_1036663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 37 else 63)))
def hex_1036663 : String := "07"
theorem cover_1036663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1036663)
  decide +kernel
#print axioms cover_1036663

def state_1036664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 63)))
def hex_1036664 : String := "4243094440410707098407"
theorem cover_1036664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1036664)
  decide +kernel
#print axioms cover_1036664

def state_1036675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 31)))
def hex_1036675 : String := "430707"
theorem cover_1036675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1036675)
  decide +kernel
#print axioms cover_1036675

def state_1036680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
def hex_1036680 : String := "414243440A400741070A0A430707420A0A"
theorem cover_1036680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1036680)
  decide +kernel
#print axioms cover_1036680

def state_1036699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 30)))
def hex_1036699 : String := "434440410A0A0640414243440A4007414209050A0A430707420A4307074142434406060643440640070606424344060606434406400706064406400A06"
theorem cover_1036699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1036699)
  decide +kernel
#print axioms cover_1036699

def state_1036760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 30)))
def hex_1036760 : String := "4344404107074142060606400741424307060742430706074406400706"
theorem cover_1036760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1036760)
  decide +kernel
#print axioms cover_1036760

def state_1036789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
def hex_1036789 : String := "4243440A40410A0A41424344060606430906420A090A4344094007094406400A06"
theorem cover_1036789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1036789)
  decide +kernel
#print axioms cover_1036789

def state_1036823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
def hex_1036823 : String := "4142430705074243444007410707070507"
theorem cover_1036823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1036823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1036823)
  decide +kernel
#print axioms cover_1036823
end Mub6.Numerical.CircleFullD0.Forest
