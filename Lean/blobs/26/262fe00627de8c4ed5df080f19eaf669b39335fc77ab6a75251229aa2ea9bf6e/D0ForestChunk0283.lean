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
def state_1005301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 89)))
def hex_1005301 : String := "4241080A41434044420A43060A42080644420806060843400A4442430A0A43050A420A43060A0A"
theorem cover_1005301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1005301)
  decide +kernel
#print axioms cover_1005301

def state_1005340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 44)))
def hex_1005340 : String := "4442410843070741430608434044074243070705074044070807420841084340444243060806060608"
theorem cover_1005340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005340 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1005340)
  decide +kernel
#print axioms cover_1005340

def state_1005381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 44)))
def hex_1005381 : String := "4044420841080A0808"
theorem cover_1005381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1005381)
  decide +kernel
#print axioms cover_1005381

def state_1005390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 45)))
def hex_1005390 : String := "4208410843404442084108430A08420841070A44080808"
theorem cover_1005390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005390 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1005390)
  decide +kernel
#print axioms cover_1005390

def state_1005413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 22)))
def hex_1005413 : String := "4442084108434044420741060708060808"
theorem cover_1005413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1005413)
  decide +kernel
#print axioms cover_1005413

def state_1005434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 44)))
def hex_1005434 : String := "4340444241064306404409070606060640444208434106400706080808"
theorem cover_1005434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005434 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1005434)
  decide +kernel
#print axioms cover_1005434

def state_1005465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 44)))
def hex_1005465 : String := "4442414305404442414305050505420A0544424108050542080643050505424143064044420807070643400506400A44420A050A410605"
theorem cover_1005465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005465 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1005465)
  decide +kernel
#print axioms cover_1005465

def state_1005520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 54 else 44)))
def hex_1005520 : String := "44424106430540440542410605054405060642410643064044420806060606"
theorem cover_1005520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005520 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1005520)
  decide +kernel
#print axioms cover_1005520
end Mub6.Numerical.CircleFullD0.Forest
