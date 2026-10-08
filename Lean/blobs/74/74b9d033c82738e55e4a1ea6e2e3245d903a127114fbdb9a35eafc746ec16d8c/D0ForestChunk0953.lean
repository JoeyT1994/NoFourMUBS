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
def state_1529229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 44)))
def hex_1529229 : String := "434042440A050A424441430A400542050A43050541430A0805440A0A400642444305050544434106050508"
theorem cover_1529229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1529229)
  decide +kernel
#print axioms cover_1529229

def state_1529272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 45)))
def hex_1529272 : String := "08"
theorem cover_1529272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1529272)
  decide +kernel
#print axioms cover_1529272

def state_1529274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 22)))
def hex_1529274 : String := "44410943404244090944414340420909090943400508054109434005090542090909410943404209090909"
theorem cover_1529274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529274 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 43) (hex := hex_1529274)
  decide +kernel
#print axioms cover_1529274

def state_1529319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 44)))
def hex_1529319 : String := "4342404441094342090709070940070709"
theorem cover_1529319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1529319)
  decide +kernel
#print axioms cover_1529319

def state_1529338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 94 else (if j.val < 4 then 36 else 44)))
def hex_1529338 : String := "40444143424044080908400A084209404409090943424044050508400A0842054005084143070943424005440905400A074205400509440809"
theorem cover_1529338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529338 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1529338)
  decide +kernel
#print axioms cover_1529338

def state_1529395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 95 else (if j.val < 4 then 36 else 44)))
def hex_1529395 : String := "404441430742400A090A430A42400A080A410743074240050707440807"
theorem cover_1529395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1529395)
  decide +kernel
#print axioms cover_1529395

def state_1529424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 37 else 44)))
def hex_1529424 : String := "42404409090940444341420940440A0909424005094005440809410905434109420540050909440909"
theorem cover_1529424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1529424)
  decide +kernel
#print axioms cover_1529424

def state_1529465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 45)))
def hex_1529465 : String := "41430709434240444107430705070707420909"
theorem cover_1529465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529465 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1529465)
  decide +kernel
#print axioms cover_1529465
end Mub6.Numerical.CircleFullD0.Forest
