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
def state_2270171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 90 else 56)))
def hex_2270171 : String := "40444142430940094408060908414243440906060909444142430540440A0644050605420A084142434044060644060606430540094406064206430906"
theorem cover_2270171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_2270171)
  decide +kernel
#print axioms cover_2270171

def state_2270232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 91 else 56)))
def hex_2270232 : String := "40444143420608060641060644414342064008070606410606"
theorem cover_2270232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270232 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2270232)
  decide +kernel
#print axioms cover_2270232

def state_2270257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 45 else 56)))
def hex_2270257 : String := "434009440941090840094408410908"
theorem cover_2270257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2270257)
  decide +kernel
#print axioms cover_2270257

def state_2270272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 56)))
def hex_2270272 : String := "42430A0808"
theorem cover_2270272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2270272)
  decide +kernel
#print axioms cover_2270272

def state_2270278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2270278 : String := "42434044414206090606444142064340060606064106064006064340094441424309090909414243090609094044090644414206090606"
theorem cover_2270278 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270278 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2270278)
  decide +kernel
#print axioms cover_2270278

def state_2270333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 57)))
def hex_2270333 : String := "4243400744060605430909"
theorem cover_2270333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270333 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2270333)
  decide +kernel
#print axioms cover_2270333

def state_2270347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 90 else (if j.val < 4 then 45 else 56)))
def hex_2270347 : String := "434044414243050705420A08414243400605064305074206430A06444105420A0741074206430A0640444107064106064407410606"
theorem cover_2270347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270347 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2270347)
  decide +kernel
#print axioms cover_2270347

def state_2270400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 91 else (if j.val < 4 then 45 else 56)))
def hex_2270400 : String := "434044054105424305080544054105424305070540440741070807"
theorem cover_2270400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270400 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2270400)
  decide +kernel
#print axioms cover_2270400
end Mub6.Numerical.CircleFullD0.Forest
