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
def state_2560566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 99)))
def hex_2560566 : String := "4042434144400A0707444005060541444042080808400507440805434144400A07074440050705414440420805070A44080542430607430707"
theorem cover_2560566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2560566)
  decide +kernel
#print axioms cover_2560566

def state_2560623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
def hex_2560623 : String := "44404208084208084042430505054206430608"
theorem cover_2560623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_2560623)
  decide +kernel
#print axioms cover_2560623

def state_2560642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 61 else 49)))
def hex_2560642 : String := "41440840424341440840080808084341440840050708084208084408400808"
theorem cover_2560642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2560642)
  decide +kernel
#print axioms cover_2560642

def state_2560675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 60 else 49)))
def hex_2560675 : String := "444042434144400608400A07440840050808434106440609064243410744070708430708404243410A0541444005070744050509420707"
theorem cover_2560675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2560675)
  decide +kernel
#print axioms cover_2560675

def state_2560730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 60 else 49)))
def hex_2560730 : String := "44404208084208084005424341070508430708"
theorem cover_2560730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2560730)
  decide +kernel
#print axioms cover_2560730

def state_2560749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 61 else 49)))
def hex_2560749 : String := "414408404208084208084408400508"
theorem cover_2560749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560749 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2560749)
  decide +kernel
#print axioms cover_2560749

def state_2560764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
def hex_2560764 : String := "424341444042070705074440080606414408070843410744400807074144080708"
theorem cover_2560764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560764 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2560764)
  decide +kernel
#print axioms cover_2560764
end Mub6.Numerical.CircleFullD0.Forest
