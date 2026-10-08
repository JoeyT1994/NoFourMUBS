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
def state_1480682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 15)))
def hex_1480682 : String := "424440410505414307424440050705054305420505054440050705"
theorem cover_1480682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1480682)
  decide +kernel
#print axioms cover_1480682

def state_1480712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 30)))
def hex_1480712 : String := "4341050541424440054305070505420505"
theorem cover_1480712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1480712)
  decide +kernel
#print axioms cover_1480712

def state_1480730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 30)))
def hex_1480730 : String := "4142444043054105054341090541094206050544400508054244400543054108050505"
theorem cover_1480730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1480730)
  decide +kernel
#print axioms cover_1480730

def state_1480766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 30)))
def hex_1480766 : String := "4244434041424443050505050541064206064041420644430507054207054106060644434005410905404105054109424408050505"
theorem cover_1480766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1480766)
  decide +kernel
#print axioms cover_1480766

def state_1480819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 30)))
def hex_1480819 : String := "4244434005414206050A4041420705050A43050644430540054142440805050505"
theorem cover_1480819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1480819)
  decide +kernel
#print axioms cover_1480819

def state_1480852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 31)))
def hex_1480852 : String := "40054305410505"
theorem cover_1480852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1480852)
  decide +kernel
#print axioms cover_1480852

def state_1480859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 15)))
def hex_1480859 : String := "444043050543410505414244430505050542050505"
theorem cover_1480859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1480859)
  decide +kernel
#print axioms cover_1480859

def state_1480880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
def hex_1480880 : String := "43420505424440054143054244090505090505"
theorem cover_1480880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1480880)
  decide +kernel
#print axioms cover_1480880
end Mub6.Numerical.CircleFullD0.Forest
