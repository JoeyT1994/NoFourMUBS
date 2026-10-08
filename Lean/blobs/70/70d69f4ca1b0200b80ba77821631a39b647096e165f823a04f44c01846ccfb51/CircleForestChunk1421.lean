import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1641744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
def hex_1641744 : String := "434209074240440A0944414342444007410843070809094244080A4405094342440A09440A070A41090940094441430744050643070609"
theorem cover_1641744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1641744)
  decide +kernel
#print axioms cover_1641744

def state_1641799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 20)))
def hex_1641799 : String := "43424007444305410705050942400A4441430A0A0A0A400644060A"
theorem cover_1641799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1641799)
  decide +kernel
#print axioms cover_1641799

def state_1641826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 21)))
def hex_1641826 : String := "4241430944420909094305444205090509"
theorem cover_1641826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1641826)
  decide +kernel
#print axioms cover_1641826

def state_1641847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 20)))
def hex_1641847 : String := "4042054441430540420644060505050505"
theorem cover_1641847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1641847)
  decide +kernel
#print axioms cover_1641847

def state_1641866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 51 else 20)))
def hex_1641866 : String := "4441064305404206444108430507060506"
theorem cover_1641866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1641866)
  decide +kernel
#print axioms cover_1641866

def state_1641885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 40)))
def hex_1641885 : String := "434042440606444143060843404206080608410643054009050640424408084408410843400808084206440841064306400806"
theorem cover_1641885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1641885)
  decide +kernel
#print axioms cover_1641885

def state_1641937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 102 else 40)))
def hex_1641937 : String := "404244414305400805050544414305400A05050505"
theorem cover_1641937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1641937)
  decide +kernel
#print axioms cover_1641937

def state_1641958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 103 else 40)))
def hex_1641958 : String := "4042444108430A0841430508054441080A41430A0A0A42444106050544414340080508430509414305404205080505"
theorem cover_1641958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1641958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1641958)
  decide +kernel
#print axioms cover_1641958
end Mub6.Numerical.CircleFullD0.Forest
