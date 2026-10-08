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
def state_1474959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
def hex_1474959 : String := "434408424041864308094186084041430844084286080808440A420A4041434408420A090A090A"
theorem cover_1474959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1474959)
  decide +kernel
#print axioms cover_1474959

def state_1474998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
def hex_1474998 : String := "414344084240414307050807084405420A4043080A0843080A"
theorem cover_1474998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1474998)
  decide +kernel
#print axioms cover_1474998

def state_1475025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
def hex_1475025 : String := "434408424041430808080808444240060806424043414406424006080608414406424006430606060643084144084240430808080808400608"
theorem cover_1475025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1475025)
  decide +kernel
#print axioms cover_1475025

def state_1475082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
def hex_1475082 : String := "43084408424041430606080808"
theorem cover_1475082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1475082)
  decide +kernel
#print axioms cover_1475082

def state_1475095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
def hex_1475095 : String := "4143080808"
theorem cover_1475095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1475095)
  decide +kernel
#print axioms cover_1475095

def state_1475101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 56)))
def hex_1475101 : String := "0A"
theorem cover_1475101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1475101)
  decide +kernel
#print axioms cover_1475101

def state_1475103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 45 else 57)))
def hex_1475103 : String := "404341440A420A4043410707070A0A0A0A"
theorem cover_1475103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1475103)
  decide +kernel
#print axioms cover_1475103

def state_1475121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 57)))
def hex_1475121 : String := "434144420A06424043414406420706060743414408420A40430606080A0A40064308414406420A0606440A420A40060841440A420740060A0A"
theorem cover_1475121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1475121)
  decide +kernel
#print axioms cover_1475121

def state_1475178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 57)))
def hex_1475178 : String := "43414408420A08080A"
theorem cover_1475178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1475178)
  decide +kernel
#print axioms cover_1475178

def state_1475187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
def hex_1475187 : String := "434408424041434408420A080A090A404143080808080A"
theorem cover_1475187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475187 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1475187)
  decide +kernel
#print axioms cover_1475187
end Mub6.Numerical.CircleFullD0.Forest
