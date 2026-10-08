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
def state_1518897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
def hex_1518897 : String := "4042410A4344400A424108430907070A080A42414344400706060643444042410707070740424106430A080742060744074042060706410707"
theorem cover_1518897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1518897)
  decide +kernel
#print axioms cover_1518897

def state_1518954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 7)))
def hex_1518954 : String := "44400707404208074241060707"
theorem cover_1518954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1518954)
  decide +kernel
#print axioms cover_1518954

def state_1518970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 14)))
def hex_1518970 : String := "4041050505"
theorem cover_1518970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1518970)
  decide +kernel
#print axioms cover_1518970

def state_1518976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 15)))
def hex_1518976 : String := "414208434440084108420505080842084344094008410809440508"
theorem cover_1518976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1518976)
  decide +kernel
#print axioms cover_1518976

def state_1519004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 15)))
def hex_1519004 : String := "42434405060543444041420543440505050505404108420843444008050805410642054344050605440505"
theorem cover_1519004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1519004)
  decide +kernel
#print axioms cover_1519004

def state_1519047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 15)))
def hex_1519047 : String := "420A4344054140420843444105054140084208434405080540080A0542054344054106050540420A430A050A05"
theorem cover_1519047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 45) (hex := hex_1519047)
  decide +kernel
#print axioms cover_1519047

def state_1519092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 7)))
def hex_1519092 : String := "05"
theorem cover_1519092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1519092)
  decide +kernel
#print axioms cover_1519092

def state_1519095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
def hex_1519095 : String := "400941424344054005050507420509"
theorem cover_1519095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1519095)
  decide +kernel
#print axioms cover_1519095
end Mub6.Numerical.CircleFullD0.Forest
