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
def state_165663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_165663 : String := "4344410743074440420508420707054105430705444105444005420543410544400542050705050505"
theorem cover_165663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165663 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_165663)
  decide +kernel
#print axioms cover_165663

def state_165706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_165706 : String := "4142074307074243074408084306440640410742080607"
theorem cover_165706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_165706)
  decide +kernel
#print axioms cover_165706

def state_165729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_165729 : String := "41420543404442054307054205430A05440742050705424307054340444107060A4407074044410542054306444006070541050A444107420707410507"
theorem cover_165729 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165729 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_165729)
  decide +kernel
#print axioms cover_165729

def state_165791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_165791 : String := "414205440805424440434105440805410544090543084105080544404341080609430808404341054205440643400608054105420509434108420808410508"
theorem cover_165791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_165791)
  decide +kernel
#print axioms cover_165791

def state_165854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_165854 : String := "41054205400543444105420540054307050505"
theorem cover_165854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_165854)
  decide +kernel
#print axioms cover_165854

def state_165874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_165874 : String := "4243080643444008084042054341440806440842054340410509060505420643410644080606440806"
theorem cover_165874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_165874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_165874)
  decide +kernel
#print axioms cover_165874
end Mub6.Numerical.CircleFullPrototype.Forest
