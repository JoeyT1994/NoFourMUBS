import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_62644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 8)))
def hex_62644 : String := "4244430508434042414406060506420505404241440843070708410707424144054340420505050805410A054443050543060A"
theorem cover_62644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_62644)
  decide +kernel
#print axioms cover_62644

def state_62695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 8)))
def hex_62695 : String := "4042440843060806420505"
theorem cover_62695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_62695)
  decide +kernel
#print axioms cover_62695

def state_62706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 8)))
def hex_62706 : String := "414042080942080A08"
theorem cover_62706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_62706)
  decide +kernel
#print axioms cover_62706

def state_62717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_62717 : String := "4042440707074244434042440707064244414340060540074205050541070744410705074042440707074244414340070A0A0841070744070743070707"
theorem cover_62717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_62717)
  decide +kernel
#print axioms cover_62717

def state_62778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 24 else 9)))
def hex_62778 : String := "40074244434140060505414007420805070707"
theorem cover_62778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_62778)
  decide +kernel
#print axioms cover_62778

def state_62797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
def hex_62797 : String := "4140074244434007424408410707074007420807070740074244080707"
theorem cover_62797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_62797)
  decide +kernel
#print axioms cover_62797

def state_62826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
def hex_62826 : String := "4443410605410A07430707"
theorem cover_62826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_62826)
  decide +kernel
#print axioms cover_62826

def state_62837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
def hex_62837 : String := "404244094107070742440841434007424408070707434007420807074441070707"
theorem cover_62837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_62837)
  decide +kernel
#print axioms cover_62837
end Mub6.Numerical.CircleFullPrototype.Forest
