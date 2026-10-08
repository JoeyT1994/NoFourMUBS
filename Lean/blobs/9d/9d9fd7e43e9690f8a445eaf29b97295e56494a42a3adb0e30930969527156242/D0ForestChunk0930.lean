import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1523741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 10)))
def hex_1523741 : String := "44074143404207440641430640070606084007420708430607"
theorem cover_1523741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1523741)
  decide +kernel
#print axioms cover_1523741

def state_1523766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 10)))
def hex_1523766 : String := "44084143404244060606064042440741434009084005420544050543060544080A0843064042070606"
theorem cover_1523766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1523766)
  decide +kernel
#print axioms cover_1523766

def state_1523807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
def hex_1523807 : String := "08"
theorem cover_1523807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1523807)
  decide +kernel
#print axioms cover_1523807

def state_1523808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
def hex_1523808 : String := "4042074407434140420744074341400542050A0505424407430807440843084142400508080540050841400707054244074308074408430841424007080808"
theorem cover_1523808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 63) (hex := hex_1523808)
  decide +kernel
#print axioms cover_1523808

def state_1523882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
def hex_1523882 : String := "43404209070709"
theorem cover_1523882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1523882)
  decide +kernel
#print axioms cover_1523882

def state_1523893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 88)))
def hex_1523893 : String := "414383404209060943834042444109438340070941094383094441438306438340420606420909410943834042060609420944410943830909"
theorem cover_1523893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1523893)
  decide +kernel
#print axioms cover_1523893

def state_1523950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 89)))
def hex_1523950 : String := "4109434044834208074483074044420941094383080809"
theorem cover_1523950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523950 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1523950)
  decide +kernel
#print axioms cover_1523950

def state_1523975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 114) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 88)))
def hex_1523975 : String := "43074042060607"
theorem cover_1523975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523975 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1523975)
  decide +kernel
#print axioms cover_1523975

def state_1523983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 115) else (if j.val < 3 then 89 else (if j.val < 4 then 64 else 88)))
def hex_1523983 : String := "4042834441050A07428307"
theorem cover_1523983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1523983)
  decide +kernel
#print axioms cover_1523983
end Mub6.Numerical.CircleFullD0.Forest
