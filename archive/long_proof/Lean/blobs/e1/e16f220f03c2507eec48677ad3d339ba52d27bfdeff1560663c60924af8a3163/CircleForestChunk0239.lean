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
def state_994752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 43)))
def hex_994752 : String := "404344414205404344070505050741054205404344070505054407054344070507"
theorem cover_994752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_994752)
  decide +kernel
#print axioms cover_994752

def state_994789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 108) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
def hex_994789 : String := "4240434441420740430A070707C64407C643440741050707404344410A42070AC644414240430A08070A42074043070707C6430A440741060A"
theorem cover_994789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_994789)
  decide +kernel
#print axioms cover_994789

def state_994846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
def hex_994846 : String := "420740434407C64407C607"
theorem cover_994846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994846 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_994846)
  decide +kernel
#print axioms cover_994846

def state_994857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 87)))
def hex_994857 : String := "414240C60540C6064240C643440741050744070540C643444241060706424106400906064442074106074241050706"
theorem cover_994857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_994857)
  decide +kernel
#print axioms cover_994857

def state_994905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 86)))
def hex_994905 : String := "4142084043444142084043440708080807C64441080708434407080842074043070707"
theorem cover_994905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_994905)
  decide +kernel
#print axioms cover_994905

def state_994940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 87)))
def hex_994940 : String := "4142054044080808424044070808404443C6420741080743C64208410840440708074443070743420841060708"
theorem cover_994940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_994940)
  decide +kernel
#print axioms cover_994940
end Mub6.Numerical.CircleFullD0.Forest
