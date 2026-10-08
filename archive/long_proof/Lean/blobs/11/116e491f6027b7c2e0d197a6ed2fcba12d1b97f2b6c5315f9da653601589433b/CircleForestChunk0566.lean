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
def state_374716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_374716 : String := "42430544430544400541054205430544400541054205080505054344080544424305444008410808050808"
theorem cover_374716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 43) (hex := hex_374716)
  decide +kernel
#print axioms cover_374716

def state_374761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_374761 : String := "44410544400542054305410544400506050505"
theorem cover_374761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_374761)
  decide +kernel
#print axioms cover_374761

def state_374783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 6)))
def hex_374783 : String := "05"
theorem cover_374783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_374783)
  decide +kernel
#print axioms cover_374783

def state_374786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_374786 : String := "424305440A0543054441080805"
theorem cover_374786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_374786)
  decide +kernel
#print axioms cover_374786

def state_374799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_374799 : String := "424305094344410540420508424407054443054105400507050544414008420708404243444105400509050908420943444108400807084441080808410508"
theorem cover_374799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_374799)
  decide +kernel
#print axioms cover_374799

def state_374862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_374862 : String := "05"
theorem cover_374862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_374862)
  decide +kernel
#print axioms cover_374862

def state_374866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 12)))
def hex_374866 : String := "424105440A05410507"
theorem cover_374866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_374866)
  decide +kernel
#print axioms cover_374866

def state_374876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 12)))
def hex_374876 : String := "41054443060605"
theorem cover_374876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_374876)
  decide +kernel
#print axioms cover_374876

def state_374883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 12)))
def hex_374883 : String := "41444305404205440905420644410543054005060505444340420509064042414443054005060507074206414443064042060706064443060606430506"
theorem cover_374883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_374883)
  decide +kernel
#print axioms cover_374883

def state_374944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 13)))
def hex_374944 : String := "05"
theorem cover_374944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_374944)
  decide +kernel
#print axioms cover_374944
end Mub6.Numerical.CircleFullPrototype.Forest
