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
def state_1500633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 28)))
def hex_1500633 : String := "40414306050641434405420540064306050543440542050505"
theorem cover_1500633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500633 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1500633)
  decide +kernel
#print axioms cover_1500633

def state_1500659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
def hex_1500659 : String := "41434442400643410806080642084006430A084442080908434406420806440908"
theorem cover_1500659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1500659)
  decide +kernel
#print axioms cover_1500659

def state_1500697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
def hex_1500697 : String := "4341444205054208400843410806084405420506410805"
theorem cover_1500697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1500697)
  decide +kernel
#print axioms cover_1500697

def state_1500720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 58)))
def hex_1500720 : String := "4341440542054043414405084405420540060541050543414405420540430A05050505440542050505"
theorem cover_1500720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500720 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1500720)
  decide +kernel
#print axioms cover_1500720

def state_1500762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 58)))
def hex_1500762 : String := "430641440642080606"
theorem cover_1500762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1500762)
  decide +kernel
#print axioms cover_1500762

def state_1500773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 58)))
def hex_1500773 : String := "444240060506424043410A0641444205060A44054205064341444205060A44064240430605050A414442050542400A050A4405420540060540064306410706"
theorem cover_1500773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1500773)
  decide +kernel
#print axioms cover_1500773

def state_1500836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 58)))
def hex_1500836 : String := "440642400643414405420506050506"
theorem cover_1500836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1500836)
  decide +kernel
#print axioms cover_1500836
end Mub6.Numerical.CircleFullD0.Forest
