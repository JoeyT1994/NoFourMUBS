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
def state_2572766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 58 else 97)))
def hex_2572766 : String := "4005424306414440050605054341444005060505410905"
theorem cover_2572766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2572766)
  decide +kernel
#print axioms cover_2572766

def state_2572789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 58 else (if j.val < 4 then 59 else 48)))
def hex_2572789 : String := "41444008084042434144080505080842434144084008070808084408400508"
theorem cover_2572789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_2572789)
  decide +kernel
#print axioms cover_2572789

def state_2572820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 48) else (if j.val < 3 then 59 else (if j.val < 4 then 29 else 48)))
def hex_2572820 : String := "434144400909094440434244410905050908434244410940080809090840050941094408400508"
theorem cover_2572820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572820 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_2572820)
  decide +kernel
#print axioms cover_2572820

def state_2572859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
def hex_2572859 : String := "424341444042434107060A430741070807404243060707064440420A0A06064144084042080807440840080843410944404309080A400907410908"
theorem cover_2572859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2572859)
  decide +kernel
#print axioms cover_2572859

def state_2572918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 49)))
def hex_2572918 : String := "404243414440054243064107050905054144400542434109050809050543090942430641444042070707074440420609060609"
theorem cover_2572918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2572918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2572918)
  decide +kernel
#print axioms cover_2572918
end Mub6.Numerical.CircleFullD0.Forest
