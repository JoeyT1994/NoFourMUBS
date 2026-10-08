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
def state_70632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 49) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 41)))
def hex_70632 : String := "4105424443400541050605064443400541050A0505"
theorem cover_70632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_70632)
  decide +kernel
#print axioms cover_70632

def state_70654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 98) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 41)))
def hex_70654 : String := "42444341054005070543410540050805440705"
theorem cover_70654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_70654)
  decide +kernel
#print axioms cover_70654

def state_70674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 82 else (if j.val < 4 then 95 else 41)))
def hex_70674 : String := "44434041420505420644430A05430605414244074308054407430705B8404105420605414244050505B8434041440505064108B84041050641440505B8"
theorem cover_70674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_70674)
  decide +kernel
#print axioms cover_70674

def state_70735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 99) else (if j.val < 3 then 83 else (if j.val < 4 then 95 else 41)))
def hex_70735 : String := "444340414205050A4107B84041054205054107B843400941090940410542050541420505B8"
theorem cover_70735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70735 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 37) (hex := hex_70735)
  decide +kernel
#print axioms cover_70735

def state_70773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
def hex_70773 : String := "414344420609084405054306444206400543060506"
theorem cover_70773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_70773)
  decide +kernel
#print axioms cover_70773

def state_70794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
def hex_70794 : String := "414308444208410543080508434442084009080844424306400641080643404109094108094041054442050506414442050508444243084005080909420609"
theorem cover_70794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_70794)
  decide +kernel
#print axioms cover_70794

def state_70859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 20)))
def hex_70859 : String := "41434244070909420505430A42440A40054309050A"
theorem cover_70859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_70859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_70859)
  decide +kernel
#print axioms cover_70859
end Mub6.Numerical.CircleFullPrototype.Forest
