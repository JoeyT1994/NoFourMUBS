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
def state_1497211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 14)))
def hex_1497211 : String := "44084043084244410507050708"
theorem cover_1497211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1497211)
  decide +kernel
#print axioms cover_1497211

def state_1497226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 28)))
def hex_1497226 : String := "404308414405420508440542050608"
theorem cover_1497226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1497226)
  decide +kernel
#print axioms cover_1497226

def state_1497243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 29)))
def hex_1497243 : String := "414442404308414408090808084240430941094209090908440842404308414244404308410808080908424408404308414209080808080808"
theorem cover_1497243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_1497243)
  decide +kernel
#print axioms cover_1497243

def state_1497303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 58)))
def hex_1497303 : String := "404341444205084209094442050542404309050508414405420540434109094109050944054205404341440542050505050543410908410905"
theorem cover_1497303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1497303)
  decide +kernel
#print axioms cover_1497303

def state_1497360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 58)))
def hex_1497360 : String := "404308414408424043084144074209074407424043070707070807440842404308410808080708"
theorem cover_1497360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 39) (hex := hex_1497360)
  decide +kernel
#print axioms cover_1497360

def state_1497400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 59)))
def hex_1497400 : String := "40434109420944404341080841094408090909410942444043090509064440434109444205404308050809410944054205404309090909404309090909"
theorem cover_1497400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1497400)
  decide +kernel
#print axioms cover_1497400
end Mub6.Numerical.CircleFullD0.Forest
