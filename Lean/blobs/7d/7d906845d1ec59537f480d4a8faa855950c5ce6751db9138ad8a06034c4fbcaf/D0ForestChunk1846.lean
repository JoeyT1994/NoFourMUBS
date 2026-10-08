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
def state_2316218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 89)))
def hex_2316218 : String := "42434044420808080A40080A43404443410508060844054341050808400644410542060608"
theorem cover_2316218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_2316218)
  decide +kernel
#print axioms cover_2316218

def state_2316255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 89)))
def hex_2316255 : String := "4243404407080A40070A4340444108080844414342050542080843090841080840084441080808"
theorem cover_2316255 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316255 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2316255)
  decide +kernel
#print axioms cover_2316255

def state_2316294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 40 else (if j.val < 4 then 59 else 44)))
def hex_2316294 : String := "4441420505420A43050A41420A43054044050A05420A430A0A"
theorem cover_2316294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2316294)
  decide +kernel
#print axioms cover_2316294

def state_2316321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 88)))
def hex_2316321 : String := "414305424006050543424044090944050540090542404441060941060844410509414305064309420808404406064405420505"
theorem cover_2316321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2316321)
  decide +kernel
#print axioms cover_2316321

def state_2316372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 41 else (if j.val < 4 then 59 else 89)))
def hex_2316372 : String := "41434240444305060844050507424006440506064342404441080808444105430908410808404442080808440507424008444108080840084442080808"
theorem cover_2316372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2316372 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_2316372)
  decide +kernel
#print axioms cover_2316372
end Mub6.Numerical.CircleFullD0.Forest
