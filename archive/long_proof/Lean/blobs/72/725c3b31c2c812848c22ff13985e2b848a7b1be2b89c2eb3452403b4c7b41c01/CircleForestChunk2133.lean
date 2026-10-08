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
def state_2592526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 10)))
def hex_2592526 : String := "4143404244090709094042444143400506054309050705424406414342440607070643094207050943094042444109094107090909"
theorem cover_2592526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2592526)
  decide +kernel
#print axioms cover_2592526

def state_2592579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 11)))
def hex_2592579 : String := "414344400709070743094440070907"
theorem cover_2592579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2592579)
  decide +kernel
#print axioms cover_2592579

def state_2592594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_2592594 : String := "43440940090A4440430905094043090543094441090907"
theorem cover_2592594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592594 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2592594)
  decide +kernel
#print axioms cover_2592594

def state_2592619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_2592619 : String := "4440060906"
theorem cover_2592619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2592619)
  decide +kernel
#print axioms cover_2592619

def state_2592626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_2592626 : String := "4142434407064440420707420A0840424306414408060643060842430641440A42060A06430A414408430840050A0A4309440840054309410505420A430608"
theorem cover_2592626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_2592626)
  decide +kernel
#print axioms cover_2592626

def state_2592689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
def hex_2592689 : String := "41424309444243094041090709094243400A09404144424309400A090942430A400A0A0A0A41090943094041090A090942430A440A0A430944080A"
theorem cover_2592689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_2592689)
  decide +kernel
#print axioms cover_2592689
end Mub6.Numerical.CircleFullD0.Forest
