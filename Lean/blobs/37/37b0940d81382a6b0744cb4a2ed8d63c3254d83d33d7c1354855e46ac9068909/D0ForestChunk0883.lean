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
def state_1512471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 61)))
def hex_1512471 : String := "43420844404108434208444008410843090808084106434206444041064342064409060606060640080608"
theorem cover_1512471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512471 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 43) (hex := hex_1512471)
  decide +kernel
#print axioms cover_1512471

def state_1512515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 106 else 61)))
def hex_1512515 : String := "42440A064440414342084409400841080908434209090A4143420A440A4041060A060A0A4041084342074440074108090508410643420644400A060606"
theorem cover_1512515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512515 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1512515)
  decide +kernel
#print axioms cover_1512515

def state_1512576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 41 else (if j.val < 4 then 107 else 61)))
def hex_1512576 : String := "42084440080A08"
theorem cover_1512576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512576 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1512576)
  decide +kernel
#print axioms cover_1512576

def state_1512583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 53 else 61)))
def hex_1512583 : String := "4106434206440A0606"
theorem cover_1512583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1512583)
  decide +kernel
#print axioms cover_1512583

def state_1512594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 30)))
def hex_1512594 : String := "440A400A0A"
theorem cover_1512594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1512594)
  decide +kernel
#print axioms cover_1512594

def state_1512600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
def hex_1512600 : String := "404143420A44064006080A0A0A"
theorem cover_1512600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512600 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1512600)
  decide +kernel
#print axioms cover_1512600

def state_1512616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 61)))
def hex_1512616 : String := "42440A40414305070741434206050A0A44404143050909414308420A08084005410505"
theorem cover_1512616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512616 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 35) (hex := hex_1512616)
  decide +kernel
#print axioms cover_1512616

def state_1512651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 61)))
def hex_1512651 : String := "42440A40070A444041430909090A4041434205054207094309094143420A05420A440A050A"
theorem cover_1512651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1512651)
  decide +kernel
#print axioms cover_1512651

def state_1512688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 91) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1512688 : String := "43420A440940050A0A"
theorem cover_1512688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1512688)
  decide +kernel
#print axioms cover_1512688

def state_1512697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1512697 : String := "4143420A440840414305420A050808420A440A4041430A0A0A0A0A"
theorem cover_1512697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512697 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1512697)
  decide +kernel
#print axioms cover_1512697
end Mub6.Numerical.CircleFullD0.Forest
