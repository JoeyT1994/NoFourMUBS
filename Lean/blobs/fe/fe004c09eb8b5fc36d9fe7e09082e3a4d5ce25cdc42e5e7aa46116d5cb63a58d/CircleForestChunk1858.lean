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
def state_2318962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
def hex_2318962 : String := "40440742074143400944090940074407420741430507070744420741080742410A06414340440505054044420505420A41054305070A4306400706"
theorem cover_2318962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2318962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2318962)
  decide +kernel
#print axioms cover_2318962

def state_2319022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 42)))
def hex_2319022 : String := "4143054042050505434009054042070808"
theorem cover_2319022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2319022)
  decide +kernel
#print axioms cover_2319022

def state_2319040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 43)))
def hex_2319040 : String := "4340420505054042440541054305404405424105090505440505420505"
theorem cover_2319040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_2319040)
  decide +kernel
#print axioms cover_2319040

def state_2319069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 43)))
def hex_2319069 : String := "434042090942440505054042440941430940094409420909094409094244084143054044054205050543064009064408410509"
theorem cover_2319069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2319069)
  decide +kernel
#print axioms cover_2319069

def state_2319121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 21)))
def hex_2319121 : String := "42440741434006440742070606074441434006420744070606074143400642440606440606064340420709420744070907"
theorem cover_2319121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2319121)
  decide +kernel
#print axioms cover_2319121

def state_2319172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 42)))
def hex_2319172 : String := "414340074207080707"
theorem cover_2319172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2319172)
  decide +kernel
#print axioms cover_2319172
end Mub6.Numerical.CircleFullD0.Forest
