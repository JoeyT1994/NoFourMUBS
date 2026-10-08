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
def state_1604546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 51)))
def hex_1604546 : String := "43410844400A08084108444042070608400608"
theorem cover_1604546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1604546)
  decide +kernel
#print axioms cover_1604546

def state_1604565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
def hex_1604565 : String := "43440A0A444009430808400608"
theorem cover_1604565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1604565)
  decide +kernel
#print axioms cover_1604565

def state_1604582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 50)))
def hex_1604582 : String := "4142434406054442404107070640074143064406070642050743440A0744400741090707424305444142050705054307440707"
theorem cover_1604582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1604582)
  decide +kernel
#print axioms cover_1604582

def state_1604633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 50)))
def hex_1604633 : String := "41424305440605430A440A0A42054305444041420507060605"
theorem cover_1604633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1604633)
  decide +kernel
#print axioms cover_1604633

def state_1604658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 51)))
def hex_1604658 : String := "40414205074205074142054305440A0505"
theorem cover_1604658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1604658)
  decide +kernel
#print axioms cover_1604658

def state_1604679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 50)))
def hex_1604679 : String := "434442400841434406420507440807084007414344070707430707424007410505074442084007414307070742400741070707"
theorem cover_1604679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1604679)
  decide +kernel
#print axioms cover_1604679

def state_1604730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 50)))
def hex_1604730 : String := "4344400741420707070744400741070707"
theorem cover_1604730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1604730)
  decide +kernel
#print axioms cover_1604730

def state_1604747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
def hex_1604747 : String := "42434408410705084344070707"
theorem cover_1604747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1604747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1604747)
  decide +kernel
#print axioms cover_1604747
end Mub6.Numerical.CircleFullD0.Forest
