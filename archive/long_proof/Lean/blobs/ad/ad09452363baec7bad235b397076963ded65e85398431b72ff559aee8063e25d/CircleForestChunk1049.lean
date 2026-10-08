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
def state_1552075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 84)))
def hex_1552075 : String := "430941400942444143080707414305404207090843084007080909"
theorem cover_1552075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1552075)
  decide +kernel
#print axioms cover_1552075

def state_1552102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 85)))
def hex_1552102 : String := "43094140424409410509094244410543094009420809410543054042440905050544090540094244094309414009424408410508090909"
theorem cover_1552102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1552102)
  decide +kernel
#print axioms cover_1552102

def state_1552157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 105 else (if j.val < 4 then 40 else 42)))
def hex_1552157 : String := "440909"
theorem cover_1552157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1552157)
  decide +kernel
#print axioms cover_1552157

def state_1552161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 42)))
def hex_1552161 : String := "42440741060744414309070741430906430907"
theorem cover_1552161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_1552161)
  decide +kernel
#print axioms cover_1552161

def state_1552182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 84)))
def hex_1552182 : String := "4143400742074407414340420705424407050507070707"
theorem cover_1552182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_1552182)
  decide +kernel
#print axioms cover_1552182

def state_1552208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 118) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 85)))
def hex_1552208 : String := "4244410607064441430906074106430906"
theorem cover_1552208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1552208)
  decide +kernel
#print axioms cover_1552208

def state_1552227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 170)))
def hex_1552227 : String := "41434042064407054244410507050540064206074340074207440741050707"
theorem cover_1552227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1552227)
  decide +kernel
#print axioms cover_1552227

def state_1552258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 118) else (if j.val < 3 then 208 else (if j.val < 4 then 82 else 171)))
def hex_1552258 : String := "4143050643404244070644410507064244414305060741054305064441054305070540064206440706"
theorem cover_1552258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1552258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1552258)
  decide +kernel
#print axioms cover_1552258
end Mub6.Numerical.CircleFullD0.Forest
