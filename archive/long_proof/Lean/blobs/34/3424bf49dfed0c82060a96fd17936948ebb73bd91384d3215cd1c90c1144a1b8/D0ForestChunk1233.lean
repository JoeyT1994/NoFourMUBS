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
def state_1596388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 25)))
def hex_1596388 : String := "42444105050544410843404442050805084044424108050842050844080505"
theorem cover_1596388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1596388)
  decide +kernel
#print axioms cover_1596388

def state_1596419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
def hex_1596419 : String := "42440705444107430740440742070707410843054042050805"
theorem cover_1596419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1596419)
  decide +kernel
#print axioms cover_1596419

def state_1596444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1596444 : String := "4143404244050508054042054408050543404205444143050505050540420544414305400605050505"
theorem cover_1596444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596444 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1596444)
  decide +kernel
#print axioms cover_1596444

def state_1596487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
def hex_1596487 : String := "430808"
theorem cover_1596487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1596487)
  decide +kernel
#print axioms cover_1596487

def state_1596491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_1596491 : String := "404442410843084440090708084241084308080808"
theorem cover_1596491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1596491)
  decide +kernel
#print axioms cover_1596491

def state_1596514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_1596514 : String := "424109434440050840424108430844090805084440054241054307440540050705404241094344054005084405060542410843084408080808"
theorem cover_1596514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596514 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1596514)
  decide +kernel
#print axioms cover_1596514

def state_1596571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1596571 : String := "42410843404408080840444241064344400608060606060808"
theorem cover_1596571 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596571 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 25) (hex := hex_1596571)
  decide +kernel
#print axioms cover_1596571

def state_1596596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_1596596 : String := "444241084308080808"
theorem cover_1596596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596596 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1596596)
  decide +kernel
#print axioms cover_1596596

def state_1596605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1596605 : String := "410843404244080808084042444108430806060608"
theorem cover_1596605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1596605)
  decide +kernel
#print axioms cover_1596605
end Mub6.Numerical.CircleFullD0.Forest
