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
def state_1465206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 10)))
def hex_1465206 : String := "4041440743074244430607060744074306074144050944430707434206074240064109064007410907"
theorem cover_1465206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1465206)
  decide +kernel
#print axioms cover_1465206

def state_1465248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
def hex_1465248 : String := "41444243050505420A0844424307090742434144400642060706060A43074144070844074005420A07"
theorem cover_1465248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1465248)
  decide +kernel
#print axioms cover_1465248

def state_1465290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
def hex_1465290 : String := "440542434044050A050A43404405080505"
theorem cover_1465290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1465290)
  decide +kernel
#print axioms cover_1465290

def state_1465308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 20)))
def hex_1465308 : String := "424340410507054041050905430705"
theorem cover_1465308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1465308)
  decide +kernel
#print axioms cover_1465308

def state_1465325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 30 else 21)))
def hex_1465325 : String := "4041444243050543050506064144054243060543050544420843050506"
theorem cover_1465325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_1465325)
  decide +kernel
#print axioms cover_1465325

def state_1465354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 31 else 21)))
def hex_1465354 : String := "40410A44420A434140070507090A4144050A444208054243060A434006410506400A410544050A"
theorem cover_1465354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1465354)
  decide +kernel
#print axioms cover_1465354

def state_1465394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 30 else 21)))
def hex_1465394 : String := "40414407430742444007050807074144054309054407434206074240064105064007410507"
theorem cover_1465394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1465394)
  decide +kernel
#print axioms cover_1465394

def state_1465432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
def hex_1465432 : String := "414405420A084442430709074243410A060A4307410807"
theorem cover_1465432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1465432)
  decide +kernel
#print axioms cover_1465432

def state_1465456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
def hex_1465456 : String := "05"
theorem cover_1465456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1465456)
  decide +kernel
#print axioms cover_1465456

def state_1465458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 42)))
def hex_1465458 : String := "05"
theorem cover_1465458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1465458)
  decide +kernel
#print axioms cover_1465458
end Mub6.Numerical.CircleFullD0.Forest
