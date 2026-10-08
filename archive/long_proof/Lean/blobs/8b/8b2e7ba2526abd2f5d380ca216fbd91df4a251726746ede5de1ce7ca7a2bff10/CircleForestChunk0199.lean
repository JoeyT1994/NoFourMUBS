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
def state_69142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_69142 : String := "4305424440090540060544404305090540434142050A05414209440940064305090943054142050505"
theorem cover_69142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_69142)
  decide +kernel
#print axioms cover_69142

def state_69183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
def hex_69183 : String := "414305424441090541430509054441070541434042054405050540420944064107430509094305404205050505"
theorem cover_69183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_69183)
  decide +kernel
#print axioms cover_69183

def state_69231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 5)))
def hex_69231 : String := "44420640410843440806060808"
theorem cover_69231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_69231)
  decide +kernel
#print axioms cover_69231

def state_69246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 10)))
def hex_69246 : String := "400608"
theorem cover_69246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_69246)
  decide +kernel
#print axioms cover_69246

def state_69252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 10)))
def hex_69252 : String := "444206400641080806"
theorem cover_69252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_69252)
  decide +kernel
#print axioms cover_69252

def state_69261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 10)))
def hex_69261 : String := "4442064041430606064143420644410740060808420A44410A43400609090A434206444006410806064206444340064109064006090642064006410806"
theorem cover_69261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_69261)
  decide +kernel
#print axioms cover_69261

def state_69322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
def hex_69322 : String := "4306444206400643060606"
theorem cover_69322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_69322)
  decide +kernel
#print axioms cover_69322

def state_69334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 10)))
def hex_69334 : String := "43084442084143080A430840420A4443410840090809080808"
theorem cover_69334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69334 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 25) (hex := hex_69334)
  decide +kernel
#print axioms cover_69334

def state_69360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 10)))
def hex_69360 : String := "444206404108050508"
theorem cover_69360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_69360)
  decide +kernel
#print axioms cover_69360
end Mub6.Numerical.CircleFullPrototype.Forest
