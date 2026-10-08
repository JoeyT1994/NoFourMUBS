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
def state_1505373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1505373 : String := "434206444043410A424440430A0606060A410642064440430A0A0606060642064440410643420644404106080606060606"
theorem cover_1505373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1505373)
  decide +kernel
#print axioms cover_1505373

def state_1505424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 30)))
def hex_1505424 : String := "44404143420644404341068806060606434206884206444041080505060606"
theorem cover_1505424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1505424)
  decide +kernel
#print axioms cover_1505424

def state_1505460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 60)))
def hex_1505460 : String := "44404341444240430941060906400A0A420605884144420640430A410888434106090606884341068841068840434105880606"
theorem cover_1505460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1505460)
  decide +kernel
#print axioms cover_1505460

def state_1505511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 60)))
def hex_1505511 : String := "444043410A88410A8843410A88414244404307060606078840054305410588"
theorem cover_1505511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1505511)
  decide +kernel
#print axioms cover_1505511

def state_1505543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 60)))
def hex_1505543 : String := "4440414344420640080606064388080606"
theorem cover_1505543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1505543)
  decide +kernel
#print axioms cover_1505543

def state_1505562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 120)))
def hex_1505562 : String := "41434244400A430A4106880A0A4244400806060A4388424440410808414388064388054008064440414307074307420807410707400A410A4307420607"
theorem cover_1505562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1505562)
  decide +kernel
#print axioms cover_1505562
end Mub6.Numerical.CircleFullD0.Forest
