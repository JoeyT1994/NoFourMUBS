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
def state_1624971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 34)))
def hex_1624971 : String := "400A44434142060A0A070A"
theorem cover_1624971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1624971)
  decide +kernel
#print axioms cover_1624971

def state_1624982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 34)))
def hex_1624982 : String := "400A44434142400A4443060A06400A444341420640080542050541080A434105050A420A400A4443050A0A41420A0A0A4341420A0A0A0A"
theorem cover_1624982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1624982)
  decide +kernel
#print axioms cover_1624982

def state_1625037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 35)))
def hex_1625037 : String := "434142060942090941420640094443060A06420A0A"
theorem cover_1625037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1625037)
  decide +kernel
#print axioms cover_1625037

def state_1625060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 34)))
def hex_1625060 : String := "4106420505"
theorem cover_1625060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1625060)
  decide +kernel
#print axioms cover_1625060

def state_1625066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 34)))
def hex_1625066 : String := "42064044430641064206080606"
theorem cover_1625066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1625066)
  decide +kernel
#print axioms cover_1625066

def state_1625080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 34)))
def hex_1625080 : String := "40444305070505"
theorem cover_1625080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1625080)
  decide +kernel
#print axioms cover_1625080

def state_1625087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 34)))
def hex_1625087 : String := "404443414205404443054108050505054142400705404408434106050844080542400705404443410505090A054305414205400A054205054443050905"
theorem cover_1625087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1625087)
  decide +kernel
#print axioms cover_1625087

def state_1625148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 35)))
def hex_1625148 : String := "43064106420540444305050505"
theorem cover_1625148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625148 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1625148)
  decide +kernel
#print axioms cover_1625148

def state_1625165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 34)))
def hex_1625165 : String := "424009444307414240070607424007440707074307410942090707"
theorem cover_1625165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625165 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1625165)
  decide +kernel
#print axioms cover_1625165

def state_1625192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 34)))
def hex_1625192 : String := "42404443074109090944430741424007440707074240440707050743094142090742050707"
theorem cover_1625192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1625192)
  decide +kernel
#print axioms cover_1625192
end Mub6.Numerical.CircleFullD0.Forest
