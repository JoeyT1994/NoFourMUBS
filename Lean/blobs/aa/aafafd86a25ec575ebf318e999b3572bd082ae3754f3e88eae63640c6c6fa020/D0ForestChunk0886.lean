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
def state_1513186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 122)))
def hex_1513186 : String := "414305424440410505410643050605054342050542444041430542444005410507050543054244090505414307420607430842444007060607054440050705"
theorem cover_1513186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1513186)
  decide +kernel
#print axioms cover_1513186

def state_1513249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 123)))
def hex_1513249 : String := "05"
theorem cover_1513249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513249 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1513249)
  decide +kernel
#print axioms cover_1513249

def state_1513250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 85 else (if j.val < 4 then 105 else 61)))
def hex_1513250 : String := "05"
theorem cover_1513250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1513250)
  decide +kernel
#print axioms cover_1513250

def state_1513252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 104 else 61)))
def hex_1513252 : String := "42444005080505"
theorem cover_1513252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1513252)
  decide +kernel
#print axioms cover_1513252

def state_1513262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 122)))
def hex_1513262 : String := "4143054244090505430909"
theorem cover_1513262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513262 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1513262)
  decide +kernel
#print axioms cover_1513262

def state_1513273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 122)))
def hex_1513273 : String := "414342440805054244404143090909414308420A070840410505414305420505430542440A05054408054308424440090840094143050A0808"
theorem cover_1513273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1513273)
  decide +kernel
#print axioms cover_1513273

def state_1513330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 84 else (if j.val < 4 then 105 else 123)))
def hex_1513330 : String := "4005410505"
theorem cover_1513330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513330 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1513330)
  decide +kernel
#print axioms cover_1513330

def state_1513335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 85 else (if j.val < 4 then 105 else 61)))
def hex_1513335 : String := "4440050805"
theorem cover_1513335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513335 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1513335)
  decide +kernel
#print axioms cover_1513335

def state_1513341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 88) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
def hex_1513341 : String := "434244080505424440414342440705054206074308424440410708060607410608400506440705"
theorem cover_1513341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1513341)
  decide +kernel
#print axioms cover_1513341

def state_1513380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 89) else (if j.val < 3 then 42 else (if j.val < 4 then 52 else 61)))
def hex_1513380 : String := "43084244404143084244084041430506080607080840414305420605430542444041050806050541060808"
theorem cover_1513380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1513380)
  decide +kernel
#print axioms cover_1513380
end Mub6.Numerical.CircleFullD0.Forest
