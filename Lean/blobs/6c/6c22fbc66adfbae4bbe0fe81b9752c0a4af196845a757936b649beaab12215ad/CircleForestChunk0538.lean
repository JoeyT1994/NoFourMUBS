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
def state_290657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 8)))
def hex_290657 : String := "444142400A050642050A414240434442050642054106054405054344050505400A064205400A4344050505"
theorem cover_290657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290657 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_290657)
  decide +kernel
#print axioms cover_290657

def state_290700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 8)))
def hex_290700 : String := "4043440A410A0A0A06"
theorem cover_290700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_290700)
  decide +kernel
#print axioms cover_290700

def state_290716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
def hex_290716 : String := "40054305444241054005080509"
theorem cover_290716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_290716)
  decide +kernel
#print axioms cover_290716

def state_290730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
def hex_290730 : String := "434442410540054305440505050509"
theorem cover_290730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_290730)
  decide +kernel
#print axioms cover_290730

def state_290746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 56 else 18)))
def hex_290746 : String := "44424140054305440505404305444241050705420705430744420A410507074105054241050705"
theorem cover_290746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_290746)
  decide +kernel
#print axioms cover_290746

def state_290788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 90) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
def hex_290788 : String := "404344050509434442080542080508"
theorem cover_290788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290788 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_290788)
  decide +kernel
#print axioms cover_290788

def state_290804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 91) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
def hex_290804 : String := "4344424140094344A9090940094344A90744A9094105090909"
theorem cover_290804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_290804)
  decide +kernel
#print axioms cover_290804

def state_290830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 91) else (if j.val < 3 then 96 else (if j.val < 4 then 114 else 36)))
def hex_290830 : String := "444241434044A90A0808434044A9070A4044A9420A09440808414340050640440609064340440707074044A909440642070642410A0A41430A0907"
theorem cover_290830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_290830)
  decide +kernel
#print axioms cover_290830

def state_290889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 91) else (if j.val < 3 then 96 else (if j.val < 4 then 115 else 36)))
def hex_290889 : String := "444241084043440808080841084009434406080809"
theorem cover_290889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_290889)
  decide +kernel
#print axioms cover_290889
end Mub6.Numerical.CircleFullPrototype.Forest
