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
def state_291417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 46) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 36)))
def hex_291417 : String := "41434044424143070505414307400706070744420506074044420541434044050505050542054108050505"
theorem cover_291417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_291417)
  decide +kernel
#print axioms cover_291417

def state_291460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 46) else (if j.val < 3 then 97 else (if j.val < 4 then 57 else 36)))
def hex_291460 : String := "414340444241060706070640444241064307050642414307080741060744064241060506430740444205070705"
theorem cover_291460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291460 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_291460)
  decide +kernel
#print axioms cover_291460

def state_291505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 37)))
def hex_291505 : String := "424143074007070741430740070707"
theorem cover_291505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291505 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_291505)
  decide +kernel
#print axioms cover_291505

def state_291520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 18)))
def hex_291520 : String := "444241434044050505050541064307054241070507"
theorem cover_291520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291520 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_291520)
  decide +kernel
#print axioms cover_291520

def state_291541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 18)))
def hex_291541 : String := "4340444106070744060740444106424307404407070606414243070907074406410607"
theorem cover_291541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_291541)
  decide +kernel
#print axioms cover_291541

def state_291576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 47) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
def hex_291576 : String := "42430740440507054307400707"
theorem cover_291576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291576 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_291576)
  decide +kernel
#print axioms cover_291576

def state_291589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 19)))
def hex_291589 : String := "41424307070707"
theorem cover_291589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_291589)
  decide +kernel
#print axioms cover_291589

def state_291599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 29 else 18)))
def hex_291599 : String := "40434442054140434442410605060944080843440608080542410805410940090544420541080542050943444205410605420541080505"
theorem cover_291599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_291599)
  decide +kernel
#print axioms cover_291599
end Mub6.Numerical.CircleFullPrototype.Forest
