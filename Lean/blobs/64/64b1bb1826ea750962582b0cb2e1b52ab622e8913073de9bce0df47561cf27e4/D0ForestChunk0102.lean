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
def state_961965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 208 else (if j.val < 4 then 71 else 110)))
def hex_961965 : String := "44434041420808424405050541080540414244060844060842064406430806064308400808"
theorem cover_961965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_961965)
  decide +kernel
#print axioms cover_961965

def state_962004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 142 else 220)))
def hex_962004 : String := "404142440508050505"
theorem cover_962004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_962004)
  decide +kernel
#print axioms cover_962004

def state_962013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 143 else 220)))
def hex_962013 : String := "4041424443404108050506084443054041C7420605060842444305064308404108060644054305404107070841424406084406084206440508"
theorem cover_962013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_962013)
  decide +kernel
#print axioms cover_962013

def state_962070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 221)))
def hex_962070 : String := "43084041080808"
theorem cover_962070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_962070)
  decide +kernel
#print axioms cover_962070

def state_962077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_962077 : String := "4142084443080808424406084443050608"
theorem cover_962077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_962077)
  decide +kernel
#print axioms cover_962077

def state_962094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 111)))
def hex_962094 : String := "43084041080808"
theorem cover_962094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_962094)
  decide +kernel
#print axioms cover_962094

def state_962103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 70 else 110)))
def hex_962103 : String := "4041420A0605410905"
theorem cover_962103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_962103)
  decide +kernel
#print axioms cover_962103

def state_962112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 71 else 110)))
def hex_962112 : String := "404142C744430940410707090A424443054041424443054007054307080742440507054142440508090543400708404107070844090741420A0A4244090809"
theorem cover_962112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962112 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_962112)
  decide +kernel
#print axioms cover_962112

def state_962175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 111)))
def hex_962175 : String := "430840410842080708"
theorem cover_962175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962175 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_962175)
  decide +kernel
#print axioms cover_962175

def state_962187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 110)))
def hex_962187 : String := "40414205050505"
theorem cover_962187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_962187)
  decide +kernel
#print axioms cover_962187

def state_962197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 208 else (if j.val < 4 then 71 else 110)))
def hex_962197 : String := "444305064340410842050508404142080842440608440A08410806"
theorem cover_962197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_962197)
  decide +kernel
#print axioms cover_962197
end Mub6.Numerical.CircleFullD0.Forest
