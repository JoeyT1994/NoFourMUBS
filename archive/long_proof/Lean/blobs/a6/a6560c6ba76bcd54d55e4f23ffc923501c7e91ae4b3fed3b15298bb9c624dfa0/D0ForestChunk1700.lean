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
def state_2281158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
def hex_2281158 : String := "41444243404106064105060643400905400907424340060606434009410509400606444243404106064106060643400941090909424340060606430906"
theorem cover_2281158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 61) (hex := hex_2281158)
  decide +kernel
#print axioms cover_2281158

def state_2281219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
def hex_2281219 : String := "41440742430806074442434041060641060606434041074442430506054206090707424340060606434041444206070644420609064107444206070606"
theorem cover_2281219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281219 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2281219)
  decide +kernel
#print axioms cover_2281219

def state_2281280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 61)))
def hex_2281280 : String := "43404105094105440542430540090505404109094107440742434009070709"
theorem cover_2281280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281280 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2281280)
  decide +kernel
#print axioms cover_2281280

def state_2281312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 60)))
def hex_2281312 : String := "424340414408420A4308080841440A420A4308080840414408424340080A400606080841440842430A400606430808084340080808"
theorem cover_2281312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2281312)
  decide +kernel
#print axioms cover_2281312

def state_2281368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2281368 : String := "414442430740070A43090942070907"
theorem cover_2281368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2281368)
  decide +kernel
#print axioms cover_2281368

def state_2281385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 122)))
def hex_2281385 : String := "42430A0A43400A0A4041440A420A090841440A420A0A08"
theorem cover_2281385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281385 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2281385)
  decide +kernel
#print axioms cover_2281385
end Mub6.Numerical.CircleFullD0.Forest
