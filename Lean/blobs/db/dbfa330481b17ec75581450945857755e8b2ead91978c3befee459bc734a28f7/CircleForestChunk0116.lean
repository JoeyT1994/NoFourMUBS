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
def state_965337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 111)))
def hex_965337 : String := "4142444340410842060706060844434007094041070706084244434041420607060606430840410706064443070607"
theorem cover_965337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_965337)
  decide +kernel
#print axioms cover_965337

def state_965384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 55)))
def hex_965384 : String := "4443094009094307400741424407070707"
theorem cover_965384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_965384)
  decide +kernel
#print axioms cover_965384

def state_965401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
def hex_965401 : String := "414244434041090909404142060A06060A44090A42444309064340410A090940414244060844060842064406080609"
theorem cover_965401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_965401)
  decide +kernel
#print axioms cover_965401

def state_965449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 54)))
def hex_965449 : String := "404142064344064041424344064041090606060942060906060606"
theorem cover_965449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 27) (hex := hex_965449)
  decide +kernel
#print axioms cover_965449

def state_965479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 37 else 55)))
def hex_965479 : String := "4344404142050542064344060505060505"
theorem cover_965479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_965479)
  decide +kernel
#print axioms cover_965479

def state_965499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 74 else 110)))
def hex_965499 : String := "4142434440410507410542050905054344400709074405054243444007060744060543074440070607"
theorem cover_965499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965499 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_965499)
  decide +kernel
#print axioms cover_965499

def state_965540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 74 else 110)))
def hex_965540 : String := "4142434406400506054344090A440605424344064041420509060606430906"
theorem cover_965540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_965540)
  decide +kernel
#print axioms cover_965540

def state_965571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 74 else 111)))
def hex_965571 : String := "4041054205074142050A42434440050A05054344070705"
theorem cover_965571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_965571)
  decide +kernel
#print axioms cover_965571
end Mub6.Numerical.CircleFullD0.Forest
