import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2591571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 20)))
def hex_2591571 : String := "40444142434007050A434044410A420507074405054007440A0742430540070543404441420507420509070540074441070707074441420543050805410707"
theorem cover_2591571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2591571)
  decide +kernel
#print axioms cover_2591571

def state_2591634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 20)))
def hex_2591634 : String := "404441070707440807"
theorem cover_2591634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591634 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2591634)
  decide +kernel
#print axioms cover_2591634

def state_2591647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 34) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 40)))
def hex_2591647 : String := "4243404441420A434007070742430907430907074441420506090740074406074340444142070709074409074007440607"
theorem cover_2591647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591647 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2591647)
  decide +kernel
#print axioms cover_2591647

def state_2591696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 35) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 40)))
def hex_2591696 : String := "42434044410909070940074441420706090743094007440907"
theorem cover_2591696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591696 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2591696)
  decide +kernel
#print axioms cover_2591696

def state_2591721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 41)))
def hex_2591721 : String := "07"
theorem cover_2591721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591721 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2591721)
  decide +kernel
#print axioms cover_2591721

def state_2591722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 20)))
def hex_2591722 : String := "44414243090643090609414243400705074309074243090709"
theorem cover_2591722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_2591722)
  decide +kernel
#print axioms cover_2591722

def state_2591747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 20)))
def hex_2591747 : String := "4044414342074007060743424007074007070707444106434206060607"
theorem cover_2591747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2591747)
  decide +kernel
#print axioms cover_2591747

def state_2591776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 21)))
def hex_2591776 : String := "07"
theorem cover_2591776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591776 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2591776)
  decide +kernel
#print axioms cover_2591776

def state_2591777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
def hex_2591777 : String := "4441420806424305084340440909084044060806414243440807074344080708424344080707434440070807440807"
theorem cover_2591777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_2591777)
  decide +kernel
#print axioms cover_2591777
end Mub6.Numerical.CircleFullD0.Forest
