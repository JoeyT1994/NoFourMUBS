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
def state_2578968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 36)))
def hex_2578968 : String := "414407434240094107070742094007410707440743424006410706074240094109094007410707"
theorem cover_2578968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2578968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2578968)
  decide +kernel
#print axioms cover_2578968

def state_2579008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 36)))
def hex_2579008 : String := "4407434240410507054007074240410A440709410544050540410707410607"
theorem cover_2579008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579008 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2579008)
  decide +kernel
#print axioms cover_2579008

def state_2579039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 96 else 36)))
def hex_2579039 : String := "440743424041070705400707424041440743420507094407434206070941440505440743050840410707410707"
theorem cover_2579039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2579039)
  decide +kernel
#print axioms cover_2579039

def state_2579085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
def hex_2579085 : String := "414442090709444243090907420943400541090905"
theorem cover_2579085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2579085)
  decide +kernel
#print axioms cover_2579085

def state_2579107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 76) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
def hex_2579107 : String := "4406424340090808434041064406090606"
theorem cover_2579107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2579107)
  decide +kernel
#print axioms cover_2579107

def state_2579125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 72)))
def hex_2579125 : String := "42434007074041060706430706"
theorem cover_2579125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2579125)
  decide +kernel
#print axioms cover_2579125

def state_2579138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 77) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 73)))
def hex_2579138 : String := "42434041094409094108444342080708084009084340414407094407420907410644074243400707084307064041094409094106440608"
theorem cover_2579138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2579138 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2579138)
  decide +kernel
#print axioms cover_2579138
end Mub6.Numerical.CircleFullD0.Forest
