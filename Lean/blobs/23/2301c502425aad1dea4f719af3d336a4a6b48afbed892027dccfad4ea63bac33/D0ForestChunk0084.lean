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
def state_957566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 55)))
def hex_957566 : String := "4443404142C70A42C7444340410A420A0A0A4041054205430A05410A420A0A0A410A4244430A06080A404105420505410542054344060505430A05"
theorem cover_957566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_957566)
  decide +kernel
#print axioms cover_957566

def state_957625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
def hex_957625 : String := "410A4244434041070606060844430A40410A06060A"
theorem cover_957625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957625 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_957625)
  decide +kernel
#print axioms cover_957625

def state_957646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 27)))
def hex_957646 : String := "44404142050506064005410542054344050505"
theorem cover_957646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_957646)
  decide +kernel
#print axioms cover_957646

def state_957671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 54)))
def hex_957671 : String := "4440414244090A09090940410A42430A4440410A420A090A0A0A0A"
theorem cover_957671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957671 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_957671)
  decide +kernel
#print axioms cover_957671

def state_957699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 108)))
def hex_957699 : String := "4041424443080505440843404105080905424406434041050806054408430940080641420644060A420609"
theorem cover_957699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957699 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_957699)
  decide +kernel
#print axioms cover_957699

def state_957742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
def hex_957742 : String := "40410542434405050543444041054205090A0505410A42430A050A"
theorem cover_957742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_957742)
  decide +kernel
#print axioms cover_957742

def state_957769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 54)))
def hex_957769 : String := "4344090A44404109090940410A42430A44404105090905430944090A0A"
theorem cover_957769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_957769)
  decide +kernel
#print axioms cover_957769

def state_957801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 108)))
def hex_957801 : String := "09"
theorem cover_957801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_957801)
  decide +kernel
#print axioms cover_957801
end Mub6.Numerical.CircleFullD0.Forest
