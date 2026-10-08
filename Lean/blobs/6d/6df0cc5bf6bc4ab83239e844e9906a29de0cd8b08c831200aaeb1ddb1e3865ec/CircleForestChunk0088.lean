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
def state_21080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 42)))
def hex_21080 : String := "42430A4105444042050905094341440A0A440A0941444042434105090543414440060505090642054305054006054440420909424309054309414405050809"
theorem cover_21080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_21080)
  decide +kernel
#print axioms cover_21080

def state_21143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 43)))
def hex_21143 : String := "40420609424309054309410509"
theorem cover_21143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_21143)
  decide +kernel
#print axioms cover_21143

def state_21156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 31) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 21)))
def hex_21156 : String := "4440094243090843090909"
theorem cover_21156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_21156)
  decide +kernel
#print axioms cover_21156

def state_21167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 21)))
def hex_21167 : String := "4241050A41444042430A05430A410544404205430A0505404205430505054205430A05404205430705054440420A430A41440809080A404209090A"
theorem cover_21167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_21167)
  decide +kernel
#print axioms cover_21167

def state_21227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 20)))
def hex_21227 : String := "404207414340420744074106074207440741434042074407060808080808420741434042074407410508080808"
theorem cover_21227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_21227)
  decide +kernel
#print axioms cover_21227

def state_21272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 21)))
def hex_21272 : String := "4042064143444006420541054344080606060643440806064205410543440840080508"
theorem cover_21272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_21272)
  decide +kernel
#print axioms cover_21272

def state_21314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 40 else 20)))
def hex_21314 : String := "4441424005430544050505054142404305A343440508A30505"
theorem cover_21314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21314 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_21314)
  decide +kernel
#print axioms cover_21314
end Mub6.Numerical.CircleFullPrototype.Forest
