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
def state_945617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 101 else (if j.val < 4 then 34 else 53)))
def hex_945617 : String := "444340420741070507074340424107440707414443404207070707094443050743404209050509420741070740420741070707"
theorem cover_945617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_945617)
  decide +kernel
#print axioms cover_945617

def state_945668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 35 else 53)))
def hex_945668 : String := "4042094109440A09420741440707440607"
theorem cover_945668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_945668)
  decide +kernel
#print axioms cover_945668

def state_945686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 52)))
def hex_945686 : String := "0A"
theorem cover_945686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_945686)
  decide +kernel
#print axioms cover_945686

def state_945689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 53)))
def hex_945689 : String := "420A41440A43400A420A41440A430509050A0A"
theorem cover_945689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_945689)
  decide +kernel
#print axioms cover_945689

def state_945708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 53)))
def hex_945708 : String := "42414407434042070707070A41444305064340424144050705414405430540090505420505404207414407070A07440543050A"
theorem cover_945708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_945708)
  decide +kernel
#print axioms cover_945708

def state_945759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 35 else 53)))
def hex_945759 : String := "400A42064144060706"
theorem cover_945759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_945759)
  decide +kernel
#print axioms cover_945759

def state_945770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 52)))
def hex_945770 : String := "43404244084143080808440841080842440841434042080807400807430540080644084143050805404208084244064107064408410808"
theorem cover_945770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_945770)
  decide +kernel
#print axioms cover_945770

def state_945831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 106)))
def hex_945831 : String := "40424408060642444108084143064006420706434006424407060640084207084441080841064306400608"
theorem cover_945831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_945831)
  decide +kernel
#print axioms cover_945831
end Mub6.Numerical.CircleFullD0.Forest
