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
def state_1330390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 12)))
def hex_1330390 : String := "4240444309420A090A4443074241444043074241070707070744400A4306420606400A074107440907074044090844430641050907"
theorem cover_1330390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330390 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1330390)
  decide +kernel
#print axioms cover_1330390

def state_1330443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 12)))
def hex_1330443 : String := "42400A44430641420A06060A400944060A"
theorem cover_1330443 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330443 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1330443)
  decide +kernel
#print axioms cover_1330443

def state_1330460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 13)))
def hex_1330460 : String := "41070A"
theorem cover_1330460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330460 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1330460)
  decide +kernel
#print axioms cover_1330460

def state_1330467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
def hex_1330467 : String := "434442410840054443420509054308054108400844430942080843080842080844424106054108400843080808"
theorem cover_1330467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330467 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1330467)
  decide +kernel
#print axioms cover_1330467

def state_1330516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 24)))
def hex_1330516 : String := "44404342410808084208084342410744404307420707070707424109444340420508090909414443070807444340080740080943070840084307420807"
theorem cover_1330516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1330516)
  decide +kernel
#print axioms cover_1330516

def state_1330579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 48)))
def hex_1330579 : String := "43420541444008430942050840084307080542054144400543420508050805"
theorem cover_1330579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330579 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1330579)
  decide +kernel
#print axioms cover_1330579

def state_1330611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 44 else 48)))
def hex_1330611 : String := "424144404342050605430642050640430505070541444043064241070506060744064043060506"
theorem cover_1330611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1330611)
  decide +kernel
#print axioms cover_1330611

def state_1330651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 56 else (if j.val < 4 then 45 else 48)))
def hex_1330651 : String := "05"
theorem cover_1330651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1330651)
  decide +kernel
#print axioms cover_1330651
end Mub6.Numerical.CircleFullD0.Forest
