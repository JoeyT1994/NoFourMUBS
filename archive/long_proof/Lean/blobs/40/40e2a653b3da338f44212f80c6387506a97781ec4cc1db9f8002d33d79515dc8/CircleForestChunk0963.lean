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
def state_1531669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 208) else (if j.val < 3 then 207 else (if j.val < 4 then 76 else 65)))
def hex_1531669 : String := "4344870544874042414305064344870544074006420605410509424143050A43448705448740424105070A4241050A0A410543050A"
theorem cover_1531669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1531669)
  decide +kernel
#print axioms cover_1531669

def state_1531722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 209) else (if j.val < 3 then 207 else (if j.val < 4 then 76 else 65)))
def hex_1531722 : String := "430944874009424143448740050544874007420741430507074308074143094487400942410A090909"
theorem cover_1531722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531722 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1531722)
  decide +kernel
#print axioms cover_1531722

def state_1531764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 104) else (if j.val < 3 then 206 else (if j.val < 4 then 76 else 65)))
def hex_1531764 : String := "41430844874042094109080808"
theorem cover_1531764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1531764)
  decide +kernel
#print axioms cover_1531764

def state_1531778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 208) else (if j.val < 3 then 207 else (if j.val < 4 then 76 else 65)))
def hex_1531778 : String := "43448705448740424143050943440805448740420A0A42080A4143050A43050A42410908410743050A"
theorem cover_1531778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531778 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1531778)
  decide +kernel
#print axioms cover_1531778

def state_1531819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 209) else (if j.val < 3 then 207 else (if j.val < 4 then 76 else 65)))
def hex_1531819 : String := "4308448740424143084408404208410808080841430644064042410A06060606420806"
theorem cover_1531819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1531819)
  decide +kernel
#print axioms cover_1531819

def state_1531854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 32)))
def hex_1531854 : String := "4487404241434487400642060A0707410A43440740074207410A0707424109434405404207070805410A4344874042410A070A424109080A0A"
theorem cover_1531854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1531854)
  decide +kernel
#print axioms cover_1531854
end Mub6.Numerical.CircleFullD0.Forest
