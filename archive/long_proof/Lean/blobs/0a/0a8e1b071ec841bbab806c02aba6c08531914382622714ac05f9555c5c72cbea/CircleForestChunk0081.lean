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
def state_19387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
def hex_19387 : String := "4105420540414205434409050542430A054344060A44090541054205430A05"
theorem cover_19387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_19387)
  decide +kernel
#print axioms cover_19387

def state_19418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 21)))
def hex_19418 : String := "4041054205444041420543070542434440060A0605430806410542054344400805070540060505"
theorem cover_19418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_19418)
  decide +kernel
#print axioms cover_19418

def state_19457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 10)))
def hex_19457 : String := "4440410542054340414205444340060906054244070544070641054205444340070507054006050505"
theorem cover_19457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_19457)
  decide +kernel
#print axioms cover_19457

def state_19502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 28) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
def hex_19502 : String := "4240084108430844090808"
theorem cover_19502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19502 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_19502)
  decide +kernel
#print axioms cover_19502

def state_19516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 58) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
def hex_19516 : String := "430844424041094409430806094041080A09424008410843080608"
theorem cover_19516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_19516)
  decide +kernel
#print axioms cover_19516

def state_19544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 40 else 20)))
def hex_19544 : String := "444240430844054108054308444109064108424043054405084306440608054005430544050508"
theorem cover_19544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_19544)
  decide +kernel
#print axioms cover_19544

def state_19586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 112 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 40)))
def hex_19586 : String := "4441434209050943050741434240410844420705084108440908080A434240054441420705054142430806050505424007070A"
theorem cover_19586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_19586)
  decide +kernel
#print axioms cover_19586
end Mub6.Numerical.CircleFullPrototype.Forest
