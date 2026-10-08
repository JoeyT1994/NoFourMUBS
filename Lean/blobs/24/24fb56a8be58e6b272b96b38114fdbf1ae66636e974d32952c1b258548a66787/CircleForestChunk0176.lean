import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_63572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_63572 : String := "404142444342440509440509424440410A050540410A4305420505410A05440A0A430942094440070907440A4307074244050944050941424405090A05"
theorem cover_63572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_63572)
  decide +kernel
#print axioms cover_63572

def state_63634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
def hex_63634 : String := "41424443424440080A40410A08060A0A4342444041070706400706440A0742060A0A4244084341420907094142080708444305410A05430707"
theorem cover_63634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_63634)
  decide +kernel
#print axioms cover_63634

def state_63691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
def hex_63691 : String := "4142440A060A4244054305064405430505"
theorem cover_63691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_63691)
  decide +kernel
#print axioms cover_63691

def state_63708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
def hex_63708 : String := "440A4340410A050540410A070A"
theorem cover_63708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_63708)
  decide +kernel
#print axioms cover_63708

def state_63721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
def hex_63721 : String := "42444008410A08404143424406060A42060743420844080708410A4342060A06440A0A"
theorem cover_63721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_63721)
  decide +kernel
#print axioms cover_63721

def state_63756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_63756 : String := "4342440541430540420805050505420844054140070505"
theorem cover_63756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_63756)
  decide +kernel
#print axioms cover_63756

def state_63779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_63779 : String := "4143424405404305410A050505424405060A05"
theorem cover_63779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_63779 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_63779)
  decide +kernel
#print axioms cover_63779
end Mub6.Numerical.CircleFullPrototype.Forest
