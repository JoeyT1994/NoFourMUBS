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
def state_1547090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 85)))
def hex_1547090 : String := "434042440741430807074407414340420708080707420808400707"
theorem cover_1547090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1547090)
  decide +kernel
#print axioms cover_1547090

def state_1547117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 42)))
def hex_1547117 : String := "420944084109430808"
theorem cover_1547117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1547117)
  decide +kernel
#print axioms cover_1547117

def state_1547127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
def hex_1547127 : String := "434042444105430509410543050544050542090540420644090609"
theorem cover_1547127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1547127)
  decide +kernel
#print axioms cover_1547127

def state_1547158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 86)))
def hex_1547158 : String := "43414042440843050944080508404208440808084140420944410943080909094042440809444308084341404208440808080809420808"
theorem cover_1547158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1547158)
  decide +kernel
#print axioms cover_1547158

def state_1547213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 87)))
def hex_1547213 : String := "43414007054042444308410908430709444307410740420807070742440807074109404209444341094042094408430709080943410740420907070909"
theorem cover_1547213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1547213)
  decide +kernel
#print axioms cover_1547213

def state_1547276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 86)))
def hex_1547276 : String := "41054042440843050844060506"
theorem cover_1547276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1547276)
  decide +kernel
#print axioms cover_1547276

def state_1547290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
def hex_1547290 : String := "40424441054305404209440805084105430509444105430505054244080505"
theorem cover_1547290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1547290)
  decide +kernel
#print axioms cover_1547290
end Mub6.Numerical.CircleFullD0.Forest
