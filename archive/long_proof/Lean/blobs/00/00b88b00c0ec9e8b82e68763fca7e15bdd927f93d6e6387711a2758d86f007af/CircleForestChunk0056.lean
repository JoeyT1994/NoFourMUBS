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
def state_950821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 54)))
def hex_950821 : String := "414443404241440505050505404207410744050707430840420808084443054042050505430540424108084108440505420708"
theorem cover_950821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_950821)
  decide +kernel
#print axioms cover_950821

def state_950872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 54)))
def hex_950872 : String := "41444305404241444305070A440543054042070505410A05424107050A0A4405430540424144050805410A054241080505"
theorem cover_950872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_950872)
  decide +kernel
#print axioms cover_950872

def state_950921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
def hex_950921 : String := "4241440707440508410A440505"
theorem cover_950921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_950921)
  decide +kernel
#print axioms cover_950921

def state_950936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 54)))
def hex_950936 : String := "414407434042074107070707440643404207414407074407070707"
theorem cover_950936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_950936)
  decide +kernel
#print axioms cover_950936

def state_950964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
def hex_950964 : String := "444340424107074144070AC742070740420641070706434042410844430807080A0A404241070741430A05C707"
theorem cover_950964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_950964)
  decide +kernel
#print axioms cover_950964

def state_951009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 54)))
def hex_951009 : String := "444340424144060706C70606434042414443404207410707070708444305064308400807C742410707410A440508404241074344060706C74206410606"
theorem cover_951009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_951009)
  decide +kernel
#print axioms cover_951009
end Mub6.Numerical.CircleFullD0.Forest
