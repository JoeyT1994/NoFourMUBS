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
def state_1644943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 41)))
def hex_1644943 : String := "414307400744424143074007070707074307400744424107050705"
theorem cover_1644943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1644943)
  decide +kernel
#print axioms cover_1644943

def state_1644970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
def hex_1644970 : String := "434007054044064241430706060644424143054044060605054143070606420541430540060505"
theorem cover_1644970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644970 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1644970)
  decide +kernel
#print axioms cover_1644970

def state_1645009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
def hex_1645009 : String := "41430740064442414307064307060642410707074307400644064241070506"
theorem cover_1645009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1645009)
  decide +kernel
#print axioms cover_1645009

def state_1645040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 21)))
def hex_1645040 : String := "424143074009444241090508074305400905410909"
theorem cover_1645040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645040 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1645040)
  decide +kernel
#print axioms cover_1645040

def state_1645061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 11)))
def hex_1645061 : String := "42414307444007420609074305444009050509"
theorem cover_1645061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1645061)
  decide +kernel
#print axioms cover_1645061

def state_1645086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
def hex_1645086 : String := "424105434240084408084005440508084105434240054405410543420805050505"
theorem cover_1645086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645086 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1645086)
  decide +kernel
#print axioms cover_1645086

def state_1645119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 21)))
def hex_1645119 : String := "424143444208080908434442400841084309084008410943090809440842080A414309054309440509"
theorem cover_1645119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645119 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1645119)
  decide +kernel
#print axioms cover_1645119

def state_1645160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 10)))
def hex_1645160 : String := "4405420808"
theorem cover_1645160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1645160)
  decide +kernel
#print axioms cover_1645160
end Mub6.Numerical.CircleFullD0.Forest
