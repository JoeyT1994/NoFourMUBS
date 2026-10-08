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
def state_13119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 4)))
def hex_13119 : String := "4305440540410A43050A0A"
theorem cover_13119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_13119)
  decide +kernel
#print axioms cover_13119

def state_13130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_13130 : String := "42430544054042094305080943054405400605"
theorem cover_13130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_13130)
  decide +kernel
#print axioms cover_13130

def state_13149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_13149 : String := "414243054405404142430544050643050A42430544050905414243050605050505"
theorem cover_13149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_13149)
  decide +kernel
#print axioms cover_13149

def state_13182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_13182 : String := "40444142430940444142090709090943400744050740074441070707090944414243094009444106090643054044410A050944054108050909"
theorem cover_13182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_13182)
  decide +kernel
#print axioms cover_13182

def state_13240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_13240 : String := "40434142440A4043410A080A0A0A42444008430508400843420808080A0A434142440A400A434106420605060A42440540434209050A43054207050A0A"
theorem cover_13240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_13240)
  decide +kernel
#print axioms cover_13240

def state_13302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_13302 : String := "4344414240434441070707084344410A0909440A060A420907414209070844410A0807"
theorem cover_13302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_13302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_13302)
  decide +kernel
#print axioms cover_13302
end Mub6.Numerical.CircleFullPrototype.Forest
