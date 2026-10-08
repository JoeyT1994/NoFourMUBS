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
def state_980175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_980175 : String := "434441434007424406410706440507400642064406410706430806410743444005420605074440420607420641074305060744064144400607070A"
theorem cover_980175 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980175 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_980175)
  decide +kernel
#print axioms cover_980175

def state_980234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_980234 : String := "434441070807444142400607070841424440430741070707400707444007070742444007070707"
theorem cover_980234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_980234)
  decide +kernel
#print axioms cover_980234

def state_980273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_980273 : String := "42434406434405400541420605050A44060A4344084205084408420A08"
theorem cover_980273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_980273)
  decide +kernel
#print axioms cover_980273

def state_980311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 8)))
def hex_980311 : String := "414305094305400505"
theorem cover_980311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_980311)
  decide +kernel
#print axioms cover_980311

def state_980320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 9)))
def hex_980320 : String := "41434007094009094340084405424341070541094005440542430506050540440642060644420605424109434006440506064109430509"
theorem cover_980320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_980320)
  decide +kernel
#print axioms cover_980320

def state_980375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 4)))
def hex_980375 : String := "44410905414307094305400842440541070505"
theorem cover_980375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980375 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_980375)
  decide +kernel
#print axioms cover_980375
end Mub6.Numerical.CircleFullD0.Forest
