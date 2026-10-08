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
def state_2336491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 10)))
def hex_2336491 : String := "40424441430508064143054044410506410506050644410506414305404244050505050642440505440505"
theorem cover_2336491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336491 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2336491)
  decide +kernel
#print axioms cover_2336491

def state_2336536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 10)))
def hex_2336536 : String := "44414308070741434044410A07410A0A0A4044070A0A43404406060607"
theorem cover_2336536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336536 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2336536)
  decide +kernel
#print axioms cover_2336536

def state_2336566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 20)))
def hex_2336566 : String := "4143080808"
theorem cover_2336566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336566 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2336566)
  decide +kernel
#print axioms cover_2336566

def state_2336573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 21)))
def hex_2336573 : String := "40424408410543064044080A06440541054305404244050505054244050505"
theorem cover_2336573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2336573)
  decide +kernel
#print axioms cover_2336573

def state_2336606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 21)))
def hex_2336606 : String := "4441080741434044050A050A4340440A0A0A0A"
theorem cover_2336606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336606 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2336606)
  decide +kernel
#print axioms cover_2336606

def state_2336626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 42)))
def hex_2336626 : String := "410808"
theorem cover_2336626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2336626)
  decide +kernel
#print axioms cover_2336626

def state_2336630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
def hex_2336630 : String := "430540424405410543050944050505"
theorem cover_2336630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2336630)
  decide +kernel
#print axioms cover_2336630

def state_2336645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 43)))
def hex_2336645 : String := "4340424408414305404405050543064044070A06440841054306080840424408410A0A4408414340420505058343404208080883420808"
theorem cover_2336645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2336645)
  decide +kernel
#print axioms cover_2336645

def state_2336700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
def hex_2336700 : String := "4244080A4405410508"
theorem cover_2336700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2336700 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2336700)
  decide +kernel
#print axioms cover_2336700
end Mub6.Numerical.CircleFullD0.Forest
