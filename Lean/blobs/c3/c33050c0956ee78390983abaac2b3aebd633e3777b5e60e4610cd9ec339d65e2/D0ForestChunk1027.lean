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
def state_1546843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
def hex_1546843 : String := "404244414305094308084143050543404208050509444105430540424408084408050841054305404244410543050505050542440809440805"
theorem cover_1546843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1546843)
  decide +kernel
#print axioms cover_1546843

def state_1546900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
def hex_1546900 : String := "4042094441094340420944410A4308074109434042080808090909410943404209440909090909"
theorem cover_1546900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546900 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 39) (hex := hex_1546900)
  decide +kernel
#print axioms cover_1546900

def state_1546940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 42)))
def hex_1546940 : String := "40424408430841404244080844084109080808440843414042080508064140424408414305404208050808440841054305404208080808404208080808"
theorem cover_1546940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546940 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1546940)
  decide +kernel
#print axioms cover_1546940

def state_1547003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 41 else 42)))
def hex_1547003 : String := "444143400707070741094340070805"
theorem cover_1547003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1547003)
  decide +kernel
#print axioms cover_1547003

def state_1547019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 84)))
def hex_1547019 : String := "414340420744074143080707080707"
theorem cover_1547019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547019 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1547019)
  decide +kernel
#print axioms cover_1547019

def state_1547035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 85)))
def hex_1547035 : String := "43404244410907094441434042440708440841050808094308074143404206050509434042440809440841054305080809420944080909"
theorem cover_1547035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1547035)
  decide +kernel
#print axioms cover_1547035
end Mub6.Numerical.CircleFullD0.Forest
