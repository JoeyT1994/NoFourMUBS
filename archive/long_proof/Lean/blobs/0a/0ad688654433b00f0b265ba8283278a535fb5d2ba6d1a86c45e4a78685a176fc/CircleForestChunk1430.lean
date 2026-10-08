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
def state_1643944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
def hex_1643944 : String := "44424143090543400707400544054241050905410543070509"
theorem cover_1643944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1643944)
  decide +kernel
#print axioms cover_1643944

def state_1643972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
def hex_1643972 : String := "434044424105430705070944420A0A420641060940054442080542410A430A40050641054340050A05"
theorem cover_1643972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1643972)
  decide +kernel
#print axioms cover_1643972

def state_1644014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 102 else 40)))
def hex_1644014 : String := "40444241070707074442410A4307404407070A41430740070707424106430640070607"
theorem cover_1644014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1644014)
  decide +kernel
#print axioms cover_1644014

def state_1644050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 40)))
def hex_1644050 : String := "44424105434005080541054307054241434005440807054340074407074005A04143070543074005A0"
theorem cover_1644050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644050 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_1644050)
  decide +kernel
#print axioms cover_1644050

def state_1644092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 80)))
def hex_1644092 : String := "42414340080A084340440842084108070A400808414340050A05434044070744080A4005440808"
theorem cover_1644092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1644092)
  decide +kernel
#print axioms cover_1644092

def state_1644131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 81)))
def hex_1644131 : String := "42414340440A42060706404405424105A04105A00A43404442410A43070A074241060707440A06A0414340070A4005440A420A0A43400744420A0707A0"
theorem cover_1644131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1644131)
  decide +kernel
#print axioms cover_1644131
end Mub6.Numerical.CircleFullD0.Forest
