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
def state_1633789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 16)))
def hex_1633789 : String := "43414042444307094307414007090907420907404244060606420505414042090609400609"
theorem cover_1633789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1633789)
  decide +kernel
#print axioms cover_1633789

def state_1633827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_1633827 : String := "414042444305414042050705050544070742050540420544060505"
theorem cover_1633827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1633827)
  decide +kernel
#print axioms cover_1633827

def state_1633855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_1633855 : String := "404244434140420906094006050943414042054443050605050541404209060940060944064341400642050506064244094305094409430509"
theorem cover_1633855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1633855)
  decide +kernel
#print axioms cover_1633855

def state_1633912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_1633912 : String := "40424406430506064205440605"
theorem cover_1633912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1633912)
  decide +kernel
#print axioms cover_1633912

def state_1633925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
def hex_1633925 : String := "4244434240080540080542404109060940060943420505424041050505404144060506054406434041420505050540064142050505"
theorem cover_1633925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1633925)
  decide +kernel
#print axioms cover_1633925

def state_1633978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
def hex_1633978 : String := "41424409054409430540410905054205440905"
theorem cover_1633978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1633978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1633978)
  decide +kernel
#print axioms cover_1633978
end Mub6.Numerical.CircleFullD0.Forest
