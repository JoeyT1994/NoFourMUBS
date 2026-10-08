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
def state_2560330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 92) else (if j.val < 3 then 56 else (if j.val < 4 then 61 else 49)))
def hex_2560330 : String := "4440424344054105400605050605404243410744400A0707414405074408400A07430A0607"
theorem cover_2560330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2560330)
  decide +kernel
#print axioms cover_2560330

def state_2560367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 93) else (if j.val < 3 then 56 else (if j.val < 4 then 61 else 49)))
def hex_2560367 : String := "4440420808084042434144400807074408404208080741440840080708434144400607074408400A0741080842430708430707"
theorem cover_2560367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2560367)
  decide +kernel
#print axioms cover_2560367

def state_2560418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 49)))
def hex_2560418 : String := "43414440060707444042434106440607060642070740420A09074144064006074440060840424341064406070606420707"
theorem cover_2560418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2560418)
  decide +kernel
#print axioms cover_2560418

def state_2560467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
def hex_2560467 : String := "42430741054405074307410507"
theorem cover_2560467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2560467)
  decide +kernel
#print axioms cover_2560467

def state_2560481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 48)))
def hex_2560481 : String := "4042434144084042080842080808084341440840420806080808424341050808434144054008050808"
theorem cover_2560481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2560481)
  decide +kernel
#print axioms cover_2560481

def state_2560527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 98)))
def hex_2560527 : String := "404243414409400909090843414440080840420A0A074408404205050808420943410744080708"
theorem cover_2560527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2560527)
  decide +kernel
#print axioms cover_2560527
end Mub6.Numerical.CircleFullD0.Forest
