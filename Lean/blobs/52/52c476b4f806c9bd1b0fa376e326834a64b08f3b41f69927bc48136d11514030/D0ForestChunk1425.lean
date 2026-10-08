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
def state_1642755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 40)))
def hex_1642755 : String := "4442414340440607440842410805074006084340064406050606424143400A42444143050A0505440705400A42440A0A44060A434007050A4143070606"
theorem cover_1642755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642755 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1642755)
  decide +kernel
#print axioms cover_1642755

def state_1642817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 41)))
def hex_1642817 : String := "4309400942444143094009424441084309080909430940094244410A0A09440A07094441090907"
theorem cover_1642817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 39) (hex := hex_1642817)
  decide +kernel
#print axioms cover_1642817

def state_1642856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 41)))
def hex_1642856 : String := "430940420909424441434007050A43050A05444143070A0A07"
theorem cover_1642856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642856 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1642856)
  decide +kernel
#print axioms cover_1642856

def state_1642885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 40)))
def hex_1642885 : String := "40420644410643054042054441060505050605"
theorem cover_1642885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1642885)
  decide +kernel
#print axioms cover_1642885

def state_1642905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
def hex_1642905 : String := "42444106430608064441434008060843404208440808420509400808414306404206080643404205440505054042440806440841430508054205440605"
theorem cover_1642905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642905 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1642905)
  decide +kernel
#print axioms cover_1642905

def state_1642966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
def hex_1642966 : String := "4206440906"
theorem cover_1642966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642966 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1642966)
  decide +kernel
#print axioms cover_1642966

def state_1642971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 40)))
def hex_1642971 : String := "430540424441430509050544414340050509050505"
theorem cover_1642971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1642971)
  decide +kernel
#print axioms cover_1642971

def state_1642992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 41)))
def hex_1642992 : String := "4143054042064441064305400505050505"
theorem cover_1642992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1642992)
  decide +kernel
#print axioms cover_1642992
end Mub6.Numerical.CircleFullD0.Forest
