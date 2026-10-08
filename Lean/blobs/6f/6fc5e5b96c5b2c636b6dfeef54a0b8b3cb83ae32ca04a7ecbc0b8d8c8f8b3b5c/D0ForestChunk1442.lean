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
def state_1646806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 52 else 41)))
def hex_1646806 : String := "4143404244080A44080A420644410843060706400842074407074340420A0A4244050544414305070505400A420744070A"
theorem cover_1646806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_1646806)
  decide +kernel
#print axioms cover_1646806

def state_1646855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 53 else 20)))
def hex_1646855 : String := "42074407410707"
theorem cover_1646855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646855 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1646855)
  decide +kernel
#print axioms cover_1646855

def state_1646862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
def hex_1646862 : String := "4342440706444140070709414043060706404305070507"
theorem cover_1646862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1646862)
  decide +kernel
#print axioms cover_1646862

def state_1646885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
def hex_1646885 : String := "404342444143400705074305074143050705444143400A42440705440905400A0743400A050A4143400A050A0A420744070A4342054441090505420709"
theorem cover_1646885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1646885)
  decide +kernel
#print axioms cover_1646885

def state_1646951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 40)))
def hex_1646951 : String := "4143400842084408080843404244080A0A424408414340080808430A0A440841434008420808080A4008420808"
theorem cover_1646951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646951 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1646951)
  decide +kernel
#print axioms cover_1646951

def state_1646999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 104 else 41)))
def hex_1646999 : String := "4244080A440A09"
theorem cover_1646999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1646999)
  decide +kernel
#print axioms cover_1646999

def state_1647007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 116 else (if j.val < 4 then 104 else 41)))
def hex_1647007 : String := "4441434008060843400A4206440806084143404206090640080643400A050A"
theorem cover_1647007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1647007)
  decide +kernel
#print axioms cover_1647007
end Mub6.Numerical.CircleFullD0.Forest
