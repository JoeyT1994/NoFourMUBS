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
def state_1572868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1572868 : String := "420505"
theorem cover_1572868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1572868)
  decide +kernel
#print axioms cover_1572868

def state_1572871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1572871 : String := "424344400941094206094041090941094206094405404105420805414244054309050542444340050605434008064008414208050844054309054344050905"
theorem cover_1572871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572871 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1572871)
  decide +kernel
#print axioms cover_1572871

def state_1572934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_1572934 : String := "440542440540054105434244054005410508050505"
theorem cover_1572934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1572934)
  decide +kernel
#print axioms cover_1572934

def state_1572955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_1572955 : String := "4344050905"
theorem cover_1572955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572955 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1572955)
  decide +kernel
#print axioms cover_1572955

def state_1572964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1572964 : String := "42434008440842064306050505"
theorem cover_1572964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1572964)
  decide +kernel
#print axioms cover_1572964

def state_1572977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1572977 : String := "4243404408084408410842064306080843404405410543090544410543420805054143424005060505434240090640094441054309050942080505"
theorem cover_1572977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1572977)
  decide +kernel
#print axioms cover_1572977

def state_1573037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1573037 : String := "4243444008420643064105064008420643064406064408400842084408414309080843440909440540094405410909"
theorem cover_1573037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1573037)
  decide +kernel
#print axioms cover_1573037
end Mub6.Numerical.CircleFullD0.Forest
