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
def state_2271839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 15)))
def hex_2271839 : String := "434140444208430841060606084007444243070643400741080740060642064307064140060606"
theorem cover_2271839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2271839)
  decide +kernel
#print axioms cover_2271839

def state_2271880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
def hex_2271880 : String := "4044424341080941090909424308060944424341084008084108400A08434105090A42080A"
theorem cover_2271880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271880 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_2271880)
  decide +kernel
#print axioms cover_2271880

def state_2271917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 15)))
def hex_2271917 : String := "400944424340410907414442430808090844420709074041090941444206090644420609064309094243400741080740060609"
theorem cover_2271917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2271917)
  decide +kernel
#print axioms cover_2271917

def state_2271968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 15)))
def hex_2271968 : String := "4140444243410606060A060A404442060906444243400606064309400606420609"
theorem cover_2271968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2271968)
  decide +kernel
#print axioms cover_2271968

def state_2272002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_2272002 : String := "43440A0744430A440A0607"
theorem cover_2272002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2272002)
  decide +kernel
#print axioms cover_2272002

def state_2272014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_2272014 : String := "44420A4408400741070707"
theorem cover_2272014 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272014 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2272014)
  decide +kernel
#print axioms cover_2272014

def state_2272027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
def hex_2272027 : String := "43440A400741420A0A0A44400841430A44084206080840074143420A440A40070A42054440080805430A05"
theorem cover_2272027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2272027 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2272027)
  decide +kernel
#print axioms cover_2272027
end Mub6.Numerical.CircleFullD0.Forest
