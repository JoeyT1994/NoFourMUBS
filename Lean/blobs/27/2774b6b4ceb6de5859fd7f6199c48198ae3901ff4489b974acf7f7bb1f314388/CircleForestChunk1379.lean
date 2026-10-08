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
def state_1631748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
def hex_1631748 : String := "4042440941434207080743420709074409414340080908434042440943410809084406434108400609080909420909"
theorem cover_1631748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_1631748)
  decide +kernel
#print axioms cover_1631748

def state_1631797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
def hex_1631797 : String := "40420644414306440606434406064440420608064042064106430608064106430644060606"
theorem cover_1631797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_1631797)
  decide +kernel
#print axioms cover_1631797

def state_1631834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_1631834 : String := "40424441084306070644410843440840080808414344060608434440420608064042064106430608064408400808420644410843060806"
theorem cover_1631834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1631834)
  decide +kernel
#print axioms cover_1631834

def state_1631892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
def hex_1631892 : String := "444341064205054106420644404341060541420640444306070606420540444305070505054043054106050506"
theorem cover_1631892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_1631892)
  decide +kernel
#print axioms cover_1631892

def state_1631939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
def hex_1631939 : String := "41444042060706404206070644404243054140444205050505054305410705054042050505"
theorem cover_1631939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1631939)
  decide +kernel
#print axioms cover_1631939
end Mub6.Numerical.CircleFullD0.Forest
