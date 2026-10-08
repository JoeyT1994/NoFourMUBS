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
def state_2580674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
def hex_2580674 : String := "4442430640064441420643060706064340064441DC06064044410505064441424340064107064005074340050A050A41070606"
theorem cover_2580674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_2580674)
  decide +kernel
#print axioms cover_2580674

def state_2580725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 19)))
def hex_2580725 : String := "4041094405054144424309084340054109444208050705074442434006444107070709434005444105054105050507"
theorem cover_2580725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2580725)
  decide +kernel
#print axioms cover_2580725

def state_2580772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 9)))
def hex_2580772 : String := "414442400908400543410505054209094442400943410844420843090508084005434105050542400908400543410944050505"
theorem cover_2580772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580772 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2580772)
  decide +kernel
#print axioms cover_2580772

def state_2580823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_2580823 : String := "414440054208054005084440054243410844400508080505400542084341050505"
theorem cover_2580823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2580823)
  decide +kernel
#print axioms cover_2580823

def state_2580857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_2580857 : String := "434108444305080808"
theorem cover_2580857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2580857)
  decide +kernel
#print axioms cover_2580857

def state_2580868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_2580868 : String := "44420A0642084340440A080608"
theorem cover_2580868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2580868)
  decide +kernel
#print axioms cover_2580868

def state_2580886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
def hex_2580886 : String := "440A0A"
theorem cover_2580886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2580886)
  decide +kernel
#print axioms cover_2580886
end Mub6.Numerical.CircleFullD0.Forest
