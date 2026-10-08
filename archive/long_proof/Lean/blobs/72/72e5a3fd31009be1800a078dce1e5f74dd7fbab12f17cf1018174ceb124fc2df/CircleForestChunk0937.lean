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
def state_1525453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 132 else 176)))
def hex_1525453 : String := "40424406060A42444143400642060606434042070A42080840064207440709414340060906434042050A42440905440A0A400542050944410A0A410A0A"
theorem cover_1525453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1525453)
  decide +kernel
#print axioms cover_1525453

def state_1525514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 133 else 176)))
def hex_1525514 : String := "400642440606440606"
theorem cover_1525514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1525514)
  decide +kernel
#print axioms cover_1525514

def state_1525523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 233) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 176)))
def hex_1525523 : String := "434042050A4244070544410A05410A0540054205440505"
theorem cover_1525523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1525523)
  decide +kernel
#print axioms cover_1525523

def state_1525546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 116) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 177)))
def hex_1525546 : String := "414340424406050A42444109434005420509054106054441060A0740064209440606434005420544410A050505"
theorem cover_1525546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1525546)
  decide +kernel
#print axioms cover_1525546

def state_1525592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 116) else (if j.val < 3 then 178 else (if j.val < 4 then 66 else 88)))
def hex_1525592 : String := "444143404209440909090943404207440741434005090505420A44084108084007420709410943404205440505420909400509"
theorem cover_1525592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1525592)
  decide +kernel
#print axioms cover_1525592

def state_1525645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 232) else (if j.val < 3 then 179 else (if j.val < 4 then 66 else 176)))
def hex_1525645 : String := "434042444108084109434042090909094441080841094340424408090A4208074042090909420944080940420944410943400808090909"
theorem cover_1525645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1525645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1525645)
  decide +kernel
#print axioms cover_1525645
end Mub6.Numerical.CircleFullD0.Forest
