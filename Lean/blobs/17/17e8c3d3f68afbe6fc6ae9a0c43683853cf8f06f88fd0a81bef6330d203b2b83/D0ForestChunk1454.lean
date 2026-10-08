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
def state_1649685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
def hex_1649685 : String := "4043090543444241094009430944050909094405424105400544050909"
theorem cover_1649685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1649685)
  decide +kernel
#print axioms cover_1649685

def state_1649715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
def hex_1649715 : String := "4309440509"
theorem cover_1649715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649715 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1649715)
  decide +kernel
#print axioms cover_1649715

def state_1649724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
def hex_1649724 : String := "40094309444241054043090543440606054105400543090509"
theorem cover_1649724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1649724)
  decide +kernel
#print axioms cover_1649724

def state_1649750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
def hex_1649750 : String := "430944424109400943094405090909"
theorem cover_1649750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1649750)
  decide +kernel
#print axioms cover_1649750

def state_1649766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 42)))
def hex_1649766 : String := "444241094009080908"
theorem cover_1649766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1649766)
  decide +kernel
#print axioms cover_1649766

def state_1649778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 198) else (if j.val < 3 then 120 else (if j.val < 4 then 105 else 84)))
def hex_1649778 : String := "404309440509434442064109A0084442070542410640430605064105400908"
theorem cover_1649778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649778 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1649778)
  decide +kernel
#print axioms cover_1649778

def state_1649809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 199) else (if j.val < 3 then 120 else (if j.val < 4 then 105 else 84)))
def hex_1649809 : String := "404344A009444241054043A00543A0054105400543A00542410940094308440707094344A008444207414005074043A0070742414043060706404308070708"
theorem cover_1649809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1649809)
  decide +kernel
#print axioms cover_1649809

def state_1649872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 121 else (if j.val < 4 then 105 else 84)))
def hex_1649872 : String := "4140094309440509404309440509430844424140054308054043A005430807410540050808"
theorem cover_1649872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1649872)
  decide +kernel
#print axioms cover_1649872

def state_1649909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 85)))
def hex_1649909 : String := "42410940090808"
theorem cover_1649909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649909 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1649909)
  decide +kernel
#print axioms cover_1649909

def state_1649916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 42)))
def hex_1649916 : String := "410940094308444241400543080540094308444241050605080908"
theorem cover_1649916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 27) (hex := hex_1649916)
  decide +kernel
#print axioms cover_1649916

def state_1649943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 43)))
def hex_1649943 : String := "09"
theorem cover_1649943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1649943)
  decide +kernel
#print axioms cover_1649943
end Mub6.Numerical.CircleFullD0.Forest
