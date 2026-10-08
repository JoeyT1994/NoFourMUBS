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
def state_1576438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 102)))
def hex_1576438 : String := "4041424406D009420644064306094142060906"
theorem cover_1576438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1576438)
  decide +kernel
#print axioms cover_1576438

def state_1576458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 103)))
def hex_1576458 : String := "41D0424344064041D00741D005444041D042440608444306070741D0064041D0424307080741D04205430A4440070505430A444041D00741D00A400741D00A"
theorem cover_1576458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1576458)
  decide +kernel
#print axioms cover_1576458

def state_1576521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 103 else 103)))
def hex_1576521 : String := "41D042430644064041D00505430A444041D006064041D00A08"
theorem cover_1576521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1576521)
  decide +kernel
#print axioms cover_1576521

def state_1576546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 97 else (if j.val < 4 then 51 else 51)))
def hex_1576546 : String := "430A4409404142430A44090A080A41080A"
theorem cover_1576546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1576546)
  decide +kernel
#print axioms cover_1576546

def state_1576564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 51 else 51)))
def hex_1576564 : String := "43064406404142434406400705444041420607060640074142054305050543074440070A074243064406050741420643064406400A0506"
theorem cover_1576564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1576564)
  decide +kernel
#print axioms cover_1576564

def state_1576619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 51 else 51)))
def hex_1576619 : String := "430A44400A06400A0A"
theorem cover_1576619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1576619)
  decide +kernel
#print axioms cover_1576619

def state_1576628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 51)))
def hex_1576628 : String := "4142430644064041080605430808420643064406400A05"
theorem cover_1576628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1576628)
  decide +kernel
#print axioms cover_1576628

def state_1576651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 25 else 25)))
def hex_1576651 : String := "430A4409400A0A"
theorem cover_1576651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1576651)
  decide +kernel
#print axioms cover_1576651

def state_1576658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 25)))
def hex_1576658 : String := "424306440640414243064406404106060543064406070606430A440A400A0A"
theorem cover_1576658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1576658)
  decide +kernel
#print axioms cover_1576658
end Mub6.Numerical.CircleFullD0.Forest
