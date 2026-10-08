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
def state_1489889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 28)))
def hex_1489889 : String := "400643414244064308400608060641424405404306414205060543410905054406400608424405400643080506"
theorem cover_1489889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1489889)
  decide +kernel
#print axioms cover_1489889

def state_1489935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 29)))
def hex_1489935 : String := "43414244400643064106060A0A424406400643410A0641420705060641424440064341420706064107074007434107070744060A4244064006434107070706"
theorem cover_1489935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1489935)
  decide +kernel
#print axioms cover_1489935

def state_1490000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 29)))
def hex_1490000 : String := "4244434041094209060840410942090609094443084006080A"
theorem cover_1490000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1490000)
  decide +kernel
#print axioms cover_1490000

def state_1490027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 48 else 58)))
def hex_1490027 : String := "43400608404142060606410808"
theorem cover_1490027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490027 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1490027)
  decide +kernel
#print axioms cover_1490027

def state_1490040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 48 else 59)))
def hex_1490040 : String := "43404142090A424408050841080840414209444306400609054244434006084006410707434005410505074406054109420908"
theorem cover_1490040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490040 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1490040)
  decide +kernel
#print axioms cover_1490040

def state_1490091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 48 else 29)))
def hex_1490091 : String := "4406430840410A0608"
theorem cover_1490091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1490091)
  decide +kernel
#print axioms cover_1490091
end Mub6.Numerical.CircleFullD0.Forest
