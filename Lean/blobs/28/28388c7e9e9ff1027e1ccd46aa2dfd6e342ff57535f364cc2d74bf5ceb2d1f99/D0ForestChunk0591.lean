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
def state_1330652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 57 else (if j.val < 4 then 45 else 48)))
def hex_1330652 : String := "41444340420541444308080844064306054241440607050640420541080542410905410A440643060543404205410708074042050842094107444307050705"
theorem cover_1330652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330652 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1330652)
  decide +kernel
#print axioms cover_1330652

def state_1330715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 49)))
def hex_1330715 : String := "404342050A42054108054342410705074205414443074008070705"
theorem cover_1330715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330715 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1330715)
  decide +kernel
#print axioms cover_1330715

def state_1330743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 24)))
def hex_1330743 : String := "4440430808430742410544430740080A0705400807"
theorem cover_1330743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330743 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1330743)
  decide +kernel
#print axioms cover_1330743

def state_1330766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 48)))
def hex_1330766 : String := "4342410909094241444008430808084440094309420509404305054342050942054108054144090809"
theorem cover_1330766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1330766)
  decide +kernel
#print axioms cover_1330766

def state_1330808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 44 else 48)))
def hex_1330808 : String := "42414406070606"
theorem cover_1330808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1330808)
  decide +kernel
#print axioms cover_1330808

def state_1330817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 34) else (if j.val < 3 then 58 else (if j.val < 4 then 45 else 48)))
def hex_1330817 : String := "44434042410806410806064042410844434008060A4308084108444306080842410A060A434042070707404208084241074443060A0707"
theorem cover_1330817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1330817)
  decide +kernel
#print axioms cover_1330817
end Mub6.Numerical.CircleFullD0.Forest
