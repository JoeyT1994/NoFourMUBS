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
def state_2265120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 55)))
def hex_2265120 : String := "424140444342410606070706074044434206410606060644060641074044434241050805074342064107400606420607440707"
theorem cover_2265120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265120 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2265120)
  decide +kernel
#print axioms cover_2265120

def state_2265171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
def hex_2265171 : String := "4407434241054044074342060506070507"
theorem cover_2265171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2265171)
  decide +kernel
#print axioms cover_2265171

def state_2265188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 27)))
def hex_2265188 : String := "43054105404405424305410540440507070505"
theorem cover_2265188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_2265188)
  decide +kernel
#print axioms cover_2265188

def state_2265208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 26)))
def hex_2265208 : String := "400842434405400805440840080808"
theorem cover_2265208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265208 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2265208)
  decide +kernel
#print axioms cover_2265208

def state_2265226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2265226 : String := "4041440A070741440A420A430A0A0A"
theorem cover_2265226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2265226)
  decide +kernel
#print axioms cover_2265226

def state_2265241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
def hex_2265241 : String := "4041440843420708424407050808414443080843420A4044080A44080A4240440805440A06400844084143420608060644080A"
theorem cover_2265241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_2265241)
  decide +kernel
#print axioms cover_2265241

def state_2265292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 27)))
def hex_2265292 : String := "434008414405424305080508400808"
theorem cover_2265292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2265292)
  decide +kernel
#print axioms cover_2265292

def state_2265309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2265309 : String := "404144420A05420A430A400A0A0A414405420A4305400A050A"
theorem cover_2265309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265309 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2265309)
  decide +kernel
#print axioms cover_2265309
end Mub6.Numerical.CircleFullD0.Forest
