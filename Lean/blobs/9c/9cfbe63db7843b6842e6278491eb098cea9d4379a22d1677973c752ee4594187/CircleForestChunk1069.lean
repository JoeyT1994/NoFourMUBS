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
def state_1556954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 87)))
def hex_1556954 : String := "414044428941050942894105430540090544428906428905404442890642890906"
theorem cover_1556954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1556954)
  decide +kernel
#print axioms cover_1556954

def state_1556991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 174)))
def hex_1556991 : String := "89"
theorem cover_1556991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1556991)
  decide +kernel
#print axioms cover_1556991

def state_1556993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 211 else (if j.val < 4 then 166 else 174)))
def hex_1556993 : String := "4140444289054289054405054044090944428906428909"
theorem cover_1556993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_1556993)
  decide +kernel
#print axioms cover_1556993

def state_1557016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 174)))
def hex_1557016 : String := "41404442894308080844420A0A420A0540444207430907428943090844428943410A060A4289434140440505054009060A"
theorem cover_1557016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1557016)
  decide +kernel
#print axioms cover_1557016

def state_1557065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 175)))
def hex_1557065 : String := "428943410540444289094289054442890542890541400844420A05054044420808084442894341054008440A050A4289430508"
theorem cover_1557065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1557065)
  decide +kernel
#print axioms cover_1557065

def state_1557116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 120) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
def hex_1557116 : String := "444289434105064140440A0A0A4044420A0A420A0A44060A42894341054044428905050541054044420A43050A428943050A440A420A05"
theorem cover_1557116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1557116)
  decide +kernel
#print axioms cover_1557116

def state_1557173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 174)))
def hex_1557173 : String := "4289434140090606414044074207094442070742894306410A0607"
theorem cover_1557173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1557173)
  decide +kernel
#print axioms cover_1557173

def state_1557201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 210 else (if j.val < 4 then 83 else 175)))
def hex_1557201 : String := "89"
theorem cover_1557201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1557201)
  decide +kernel
#print axioms cover_1557201

def state_1557203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 211 else (if j.val < 4 then 166 else 175)))
def hex_1557203 : String := "4140094442890642890909"
theorem cover_1557203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1557203)
  decide +kernel
#print axioms cover_1557203
end Mub6.Numerical.CircleFullD0.Forest
