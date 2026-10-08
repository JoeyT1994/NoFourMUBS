import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_178981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 14)))
def hex_178981 : String := "44404109064142440605094244064306400606064041420509420A430A094142054344094005050942430A44400505054344060A4409400941090A"
theorem cover_178981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_178981)
  decide +kernel
#print axioms cover_178981

def state_179040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 14)))
def hex_179040 : String := "43064406400941094243060906"
theorem cover_179040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_179040)
  decide +kernel
#print axioms cover_179040

def state_179053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 14)))
def hex_179053 : String := "4243064406400A420A4143060A0643054405400606"
theorem cover_179053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_179053)
  decide +kernel
#print axioms cover_179053

def state_179074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 15)))
def hex_179074 : String := "4142430A400A4441050A0A43400844410808084008444108424308080808420A0A"
theorem cover_179074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_179074)
  decide +kernel
#print axioms cover_179074

def state_179108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 14)))
def hex_179108 : String := "4142440940094341054205090909424440074342070707400743420741440707070709"
theorem cover_179108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_179108)
  decide +kernel
#print axioms cover_179108

def state_179143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
def hex_179143 : String := "414240434441050A050543444105420540050505054009434409080942400A430A0A40430A09434441090A084407410607"
theorem cover_179143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_179143)
  decide +kernel
#print axioms cover_179143

def state_179198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 14)))
def hex_179198 : String := "440641424307400507430640440607074243064044060A44060906"
theorem cover_179198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_179198)
  decide +kernel
#print axioms cover_179198
end Mub6.Numerical.CircleFullPrototype.Forest
