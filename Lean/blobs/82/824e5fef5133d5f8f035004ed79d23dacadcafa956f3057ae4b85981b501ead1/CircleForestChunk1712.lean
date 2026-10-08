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
def state_2284054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 191 else (if j.val < 4 then 88 else 125)))
def hex_2284054 : String := "4340410544054243050505054041054442430507054243404105440509054041054407090743050707"
theorem cover_2284054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284054 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2284054)
  decide +kernel
#print axioms cover_2284054

def state_2284096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 124)))
def hex_2284096 : String := "42430A4041440A420A430A0A080A43400808400808"
theorem cover_2284096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2284096)
  decide +kernel
#print axioms cover_2284096

def state_2284119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
def hex_2284119 : String := "404144420A0A42430A0A43400A0A4041440A420A430A40090A0A0A0A41440A420A430A0A0A"
theorem cover_2284119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_2284119)
  decide +kernel
#print axioms cover_2284119

def state_2284157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2284157 : String := "414442430A0643400A0A4041440A06080A4243400A0A0643404144420A430A40060642064340090A060A41440A4206430A060A4006410606440A420A430A0A"
theorem cover_2284157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_2284157)
  decide +kernel
#print axioms cover_2284157

def state_2284220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2284220 : String := "4144420A430A0742430A0643400A0A40410606070A"
theorem cover_2284220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2284220)
  decide +kernel
#print axioms cover_2284220

def state_2284243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 176 else 125)))
def hex_2284243 : String := "414442434005054008050842434041050741050A40414442430505050944080941050A4340050540080544084243080808"
theorem cover_2284243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2284243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2284243)
  decide +kernel
#print axioms cover_2284243
end Mub6.Numerical.CircleFullD0.Forest
