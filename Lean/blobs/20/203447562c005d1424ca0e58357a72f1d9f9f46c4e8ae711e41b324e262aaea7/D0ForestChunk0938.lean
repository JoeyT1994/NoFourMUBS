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
def state_1525701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 132 else 176)))
def hex_1525701 : String := "404244084143404205440805420808400509434005060544084143404244080A0A0840424405050A42094408094340420505064005420505420808"
theorem cover_1525701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1525701)
  decide +kernel
#print axioms cover_1525701

def state_1525760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 133 else 176)))
def hex_1525760 : String := "4042440741090544414308400508074143404205050909054244080944084109430809"
theorem cover_1525760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525760 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1525760)
  decide +kernel
#print axioms cover_1525760

def state_1525796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 177)))
def hex_1525796 : String := "43404209444107430709070909"
theorem cover_1525796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525796 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1525796)
  decide +kernel
#print axioms cover_1525796

def state_1525810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 132 else 177)))
def hex_1525810 : String := "404244414340050905054109054441434042440505070740420505094340054205050541070542444109430609094441094306404205050607"
theorem cover_1525810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1525810)
  decide +kernel
#print axioms cover_1525810

def state_1525867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 133 else 177)))
def hex_1525867 : String := "4042054441090505420909"
theorem cover_1525867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1525867)
  decide +kernel
#print axioms cover_1525867

def state_1525878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 116) else (if j.val < 3 then 89 else (if j.val < 4 then 67 else 88)))
def hex_1525878 : String := "404244070544410605410605424441090709444109434042054407054209090941094340050909"
theorem cover_1525878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1525878)
  decide +kernel
#print axioms cover_1525878
end Mub6.Numerical.CircleFullD0.Forest
