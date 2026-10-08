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
def state_2256481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 109)))
def hex_2256481 : String := "4043414207BE07414207BE0743414208BE4207BE414208BE4205BE"
theorem cover_2256481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 27) (hex := hex_2256481)
  decide +kernel
#print axioms cover_2256481

def state_2256508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2256508 : String := "BE"
theorem cover_2256508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2256508)
  decide +kernel
#print axioms cover_2256508

def state_2256510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
def hex_2256510 : String := "44400743414207BE074142440705BE0740074307414205BE05"
theorem cover_2256510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2256510)
  decide +kernel
#print axioms cover_2256510

def state_2256535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 54)))
def hex_2256535 : String := "44404342070808434241BE0A41BE084241BE0808404307420741BE07434241BE0741BE40074407074241BE0741BE404407074408430705"
theorem cover_2256535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2256535)
  decide +kernel
#print axioms cover_2256535

def state_2256591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2256591 : String := "4307414207444007430741420744400743074142074407070707070707"
theorem cover_2256591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 29) (hex := hex_2256591)
  decide +kernel
#print axioms cover_2256591

def state_2256620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 55)))
def hex_2256620 : String := "434142444007080744BE40070842074407074142444007080644BE4043410806410606430806420744400743420741BE07420541BE06400606"
theorem cover_2256620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2256620)
  decide +kernel
#print axioms cover_2256620

def state_2256677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
def hex_2256677 : String := "420744400743074207414408070707"
theorem cover_2256677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2256677)
  decide +kernel
#print axioms cover_2256677

def state_2256692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
def hex_2256692 : String := "4207444007430742070807"
theorem cover_2256692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256692 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2256692)
  decide +kernel
#print axioms cover_2256692
end Mub6.Numerical.CircleFullD0.Forest
