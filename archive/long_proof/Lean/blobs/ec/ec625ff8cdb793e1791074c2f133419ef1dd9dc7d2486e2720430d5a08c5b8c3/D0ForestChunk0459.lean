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
def state_1047767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1047767 : String := "43444041070807400907444041434207094207444008410708074308084143074206444107430740090506434208440807420544050940410909410607"
theorem cover_1047767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1047767)
  decide +kernel
#print axioms cover_1047767

def state_1047828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1047828 : String := "424344080744080A4344084008074440084308054008430808"
theorem cover_1047828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_1047828)
  decide +kernel
#print axioms cover_1047828

def state_1047853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1047853 : String := "4142434407060643074441430706434042054405070505064243440807444205050643444008070744434041420505050505430709"
theorem cover_1047853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1047853)
  decide +kernel
#print axioms cover_1047853

def state_1047911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_1047911 : String := "40414244064340070606090909"
theorem cover_1047911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047911 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1047911)
  decide +kernel
#print axioms cover_1047911

def state_1047928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 7)))
def hex_1047928 : String := "4440414205440543050742050907404142074308444041084205050708420543054440410505054041420543054405080541050507"
theorem cover_1047928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047928 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 53) (hex := hex_1047928)
  decide +kernel
#print axioms cover_1047928

def state_1047982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
def hex_1047982 : String := "40414206430706420743440640410707060606"
theorem cover_1047982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1047982)
  decide +kernel
#print axioms cover_1047982
end Mub6.Numerical.CircleFullD0.Forest
