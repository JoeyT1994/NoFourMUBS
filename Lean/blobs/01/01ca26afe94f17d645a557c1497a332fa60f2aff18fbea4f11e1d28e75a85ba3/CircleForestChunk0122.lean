import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_50515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 27)))
def hex_50515 : String := "4243400A074041420705424443400A07400541054244050505060A41074244080606430606"
theorem cover_50515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50515 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_50515)
  decide +kernel
#print axioms cover_50515

def state_50554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 27)))
def hex_50554 : String := "09"
theorem cover_50554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_50554)
  decide +kernel
#print axioms cover_50554

def state_50557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 27)))
def hex_50557 : String := "4244430A404142440505054244430A41050A0A0A414244430840050843070644050542444309404144050509094309400A4142910609090A0A"
theorem cover_50557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50557 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_50557)
  decide +kernel
#print axioms cover_50557

def state_50614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 27)))
def hex_50614 : String := "42444309400A090A09"
theorem cover_50614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_50614)
  decide +kernel
#print axioms cover_50614

def state_50623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 27)))
def hex_50623 : String := "4142444309414042440807090809430741064044090607094244090909"
theorem cover_50623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_50623)
  decide +kernel
#print axioms cover_50623

def state_50652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 27)))
def hex_50652 : String := "09"
theorem cover_50652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_50652)
  decide +kernel
#print axioms cover_50652

def state_50653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_50653 : String := "43400A410742070740410A420A0A414207064244430A40414442070A07084107444243054008054307400A4107440505070744430A400A41060A06"
theorem cover_50653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_50653)
  decide +kernel
#print axioms cover_50653

def state_50712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_50712 : String := "434409420606444243094440054105430944424005080509400A4143060509430944050606"
theorem cover_50712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_50712)
  decide +kernel
#print axioms cover_50712

def state_50751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_50751 : String := "440941404205090505"
theorem cover_50751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_50751)
  decide +kernel
#print axioms cover_50751
end Mub6.Numerical.CircleFullPrototype.Forest
