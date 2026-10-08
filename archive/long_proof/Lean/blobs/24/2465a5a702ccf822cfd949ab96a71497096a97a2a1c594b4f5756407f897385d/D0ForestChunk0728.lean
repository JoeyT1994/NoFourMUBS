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
def state_1475648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 177) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 116)))
def hex_1475648 : String := "444240070A404341070707434144420A40070842864007434144070505070A0742400743860740430507434144428605050507"
theorem cover_1475648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475648 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 51) (hex := hex_1475648)
  decide +kernel
#print axioms cover_1475648

def state_1475701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 116)))
def hex_1475701 : String := "4442864043410944084286084109440842864043080808430809428640434109444286400507054109444286404305410505090609"
theorem cover_1475701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475701 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1475701)
  decide +kernel
#print axioms cover_1475701

def state_1475754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 65 else (if j.val < 4 then 178 else 116)))
def hex_1475754 : String := "444286404308414408428608080842864043414442860505054144428640050805444286050543410606410606"
theorem cover_1475754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475754 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1475754)
  decide +kernel
#print axioms cover_1475754

def state_1475801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 232)))
def hex_1475801 : String := "4240438641070A094043410944420A08428640434108084109440707094109440A4207400709430909"
theorem cover_1475801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1475801)
  decide +kernel
#print axioms cover_1475801

def state_1475842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 233)))
def hex_1475842 : String := "42404386410606064043410944428640434109054109440705090641094442074007090609"
theorem cover_1475842 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475842 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 37) (hex := hex_1475842)
  decide +kernel
#print axioms cover_1475842

def state_1475880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 65 else (if j.val < 4 then 179 else 232)))
def hex_1475880 : String := "420A4043414408420A40430808080A0A0A"
theorem cover_1475880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475880 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1475880)
  decide +kernel
#print axioms cover_1475880
end Mub6.Numerical.CircleFullD0.Forest
