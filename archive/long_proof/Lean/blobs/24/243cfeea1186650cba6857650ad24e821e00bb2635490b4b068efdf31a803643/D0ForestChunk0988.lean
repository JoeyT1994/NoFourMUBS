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
def state_1537600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
def hex_1537600 : String := "434440420641064344400642064105430506060642094109434440420941054305090905090606"
theorem cover_1537600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 39) (hex := hex_1537600)
  decide +kernel
#print axioms cover_1537600

def state_1537642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
def hex_1537642 : String := "41420608424344404206054241054305050505064305440805"
theorem cover_1537642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1537642)
  decide +kernel
#print axioms cover_1537642

def state_1537667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
def hex_1537667 : String := "414243050943054440080705424344404205050505444042094341050A09090943054440434105050A434105050A05"
theorem cover_1537667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1537667)
  decide +kernel
#print axioms cover_1537667

def state_1537714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
def hex_1537714 : String := "4044050605"
theorem cover_1537714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537714 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1537714)
  decide +kernel
#print axioms cover_1537714

def state_1537719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 5)))
def hex_1537719 : String := "4440434106420608064341094209440A080906"
theorem cover_1537719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537719 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1537719)
  decide +kernel
#print axioms cover_1537719

def state_1537738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_1537738 : String := "410942094344404142090742430709430544090541074209070509"
theorem cover_1537738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1537738)
  decide +kernel
#print axioms cover_1537738

def state_1537766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_1537766 : String := "4440410742434406054440414243050A0606064041050507430506074041050507"
theorem cover_1537766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_1537766)
  decide +kernel
#print axioms cover_1537766
end Mub6.Numerical.CircleFullD0.Forest
