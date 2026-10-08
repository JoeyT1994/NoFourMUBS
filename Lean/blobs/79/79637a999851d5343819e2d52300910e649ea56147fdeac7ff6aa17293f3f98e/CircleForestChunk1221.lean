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
def state_1593410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 25)))
def hex_1593410 : String := "4440410809084041060608"
theorem cover_1593410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1593410)
  decide +kernel
#print axioms cover_1593410

def state_1593427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
def hex_1593427 : String := "4244064041060505444041060606404108430642050806"
theorem cover_1593427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1593427)
  decide +kernel
#print axioms cover_1593427

def state_1593451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 57 else 50)))
def hex_1593451 : String := "44404143090943060A41060640414342054409050A43050A05"
theorem cover_1593451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1593451)
  decide +kernel
#print axioms cover_1593451

def state_1593476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 57 else 50)))
def hex_1593476 : String := "444041090941084306094041430809434244090509424440090905440940090841084305420508"
theorem cover_1593476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1593476)
  decide +kernel
#print axioms cover_1593476

def state_1593515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
def hex_1593515 : String := "43420644060542444043064106060505444043410606414409424009060944064205400906064043414205444009050505414244050544400909050505"
theorem cover_1593515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1593515)
  decide +kernel
#print axioms cover_1593515

def state_1593576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 50)))
def hex_1593576 : String := "414306420544060506"
theorem cover_1593576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593576 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1593576)
  decide +kernel
#print axioms cover_1593576

def state_1593585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 51)))
def hex_1593585 : String := "404143420544404108050505420544404143084205084305420544050505050505"
theorem cover_1593585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1593585)
  decide +kernel
#print axioms cover_1593585

def state_1593621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 50)))
def hex_1593621 : String := "43440908440942404108090808"
theorem cover_1593621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1593621)
  decide +kernel
#print axioms cover_1593621

def state_1593635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 56 else 50)))
def hex_1593635 : String := "4442404106060609424041430644094205084305440605064041080908"
theorem cover_1593635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1593635)
  decide +kernel
#print axioms cover_1593635
end Mub6.Numerical.CircleFullD0.Forest
