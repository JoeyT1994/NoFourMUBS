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
def state_2286447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
def hex_2286447 : String := "44420A40430A0A0A424043070A09404341440A07074144420A40430A0A0A424043070A094043074144420A400A0AE50A430A4144090A0A0A4309410909"
theorem cover_2286447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_2286447)
  decide +kernel
#print axioms cover_2286447

def state_2286508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 15)))
def hex_2286508 : String := "420943410909410909"
theorem cover_2286508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2286508)
  decide +kernel
#print axioms cover_2286508

def state_2286517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
def hex_2286517 : String := "440A404209430A41440A420A0A0A09"
theorem cover_2286517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2286517)
  decide +kernel
#print axioms cover_2286517

def state_2286534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
def hex_2286534 : String := "404243414409090A410906434144074240434107090707074408420A08410744070742094341070A07"
theorem cover_2286534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2286534)
  decide +kernel
#print axioms cover_2286534

def state_2286577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 15)))
def hex_2286577 : String := "4341090906"
theorem cover_2286577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2286577)
  decide +kernel
#print axioms cover_2286577

def state_2286585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
def hex_2286585 : String := "42404341090909094043410744074240430907074043410544070707070707"
theorem cover_2286585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_2286585)
  decide +kernel
#print axioms cover_2286585

def state_2286617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 31)))
def hex_2286617 : String := "40434109090609"
theorem cover_2286617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2286617)
  decide +kernel
#print axioms cover_2286617

def state_2286627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
def hex_2286627 : String := "4442404341050907070742400808404341054407080707"
theorem cover_2286627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2286627)
  decide +kernel
#print axioms cover_2286627

def state_2286652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 62)))
def hex_2286652 : String := "404341090941070909"
theorem cover_2286652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2286652)
  decide +kernel
#print axioms cover_2286652
end Mub6.Numerical.CircleFullD0.Forest
