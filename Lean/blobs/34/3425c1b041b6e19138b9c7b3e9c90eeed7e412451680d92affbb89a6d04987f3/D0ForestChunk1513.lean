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
def state_1663808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1663808 : String := "4243440640060744400643060640430609430609434440060740420644064106074206074440420643064105074206074042430606430606420606"
theorem cover_1663808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 59) (hex := hex_1663808)
  decide +kernel
#print axioms cover_1663808

def state_1663867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1663867 : String := "4142430708434406060642430808430744424306060706"
theorem cover_1663867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1663867)
  decide +kernel
#print axioms cover_1663867

def state_1663892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1663892 : String := "42430844404106080940414308424406400841060808084143054206060543444041064208440608080844404106420606064041420808084106420806"
theorem cover_1663892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663892 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1663892)
  decide +kernel
#print axioms cover_1663892

def state_1663954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1663954 : String := "4308440940430541080505"
theorem cover_1663954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1663954)
  decide +kernel
#print axioms cover_1663954

def state_1663965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_1663965 : String := "434440420944414306064340094206060909420544410607054042054108050544404209430944060942430906064042084309414408080942054305410609"
theorem cover_1663965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1663965)
  decide +kernel
#print axioms cover_1663965

def state_1664028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1664028 : String := "41424309440641430506054308064243050943444205440605054406420505"
theorem cover_1664028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1664028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1664028)
  decide +kernel
#print axioms cover_1664028
end Mub6.Numerical.CircleFullD0.Forest
