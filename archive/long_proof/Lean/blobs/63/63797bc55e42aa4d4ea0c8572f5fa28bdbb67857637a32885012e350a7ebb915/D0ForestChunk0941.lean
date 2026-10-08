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
def state_1526404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 66 else 88)))
def hex_1526404 : String := "424441430A4006424406060A430A400A42440A0A0A41430A40064244060607430A4005424405050A0A"
theorem cover_1526404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526404 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1526404)
  decide +kernel
#print axioms cover_1526404

def state_1526448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 232) else (if j.val < 3 then 180 else (if j.val < 4 then 66 else 176)))
def hex_1526448 : String := "4340424441080841070A0A424408070740424441094308400608410943400A0909440A0A4209440807"
theorem cover_1526448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526448 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1526448)
  decide +kernel
#print axioms cover_1526448

def state_1526489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 233) else (if j.val < 3 then 180 else (if j.val < 4 then 66 else 176)))
def hex_1526489 : String := "4340424408410A0A0A420808404244414308400A0843084005084143400A42090A400A0943400542050A050A42440841094308404205080844084143070908"
theorem cover_1526489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526489 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1526489)
  decide +kernel
#print axioms cover_1526489

def state_1526552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 180 else (if j.val < 4 then 66 else 177)))
def hex_1526552 : String := "41430740420907074340424441070A0707074042444143400A070905410705440A0742444109434042050707090707"
theorem cover_1526552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1526552)
  decide +kernel
#print axioms cover_1526552

def state_1526599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 181 else (if j.val < 4 then 66 else 88)))
def hex_1526599 : String := "44410A0A07"
theorem cover_1526599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526599 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1526599)
  decide +kernel
#print axioms cover_1526599

def state_1526605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 90 else (if j.val < 4 then 67 else 88)))
def hex_1526605 : String := "42444106434005424405050A05410643400542050505440A0A"
theorem cover_1526605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1526605)
  decide +kernel
#print axioms cover_1526605
end Mub6.Numerical.CircleFullD0.Forest
