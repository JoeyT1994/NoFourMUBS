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
def state_1304659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
def hex_1304659 : String := "424441084340420844410605060540420844080A08410A43060A4441074340070540424409070742080941074306400707"
theorem cover_1304659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1304659)
  decide +kernel
#print axioms cover_1304659

def state_1304708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 58 else 45)))
def hex_1304708 : String := "4244084108430508444108054107430540424405070705"
theorem cover_1304708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304708 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1304708)
  decide +kernel
#print axioms cover_1304708

def state_1304731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 43) else (if j.val < 3 then 48 else (if j.val < 4 then 59 else 45)))
def hex_1304731 : String := "40420A4409410943400A0A0A420844084108434042084408070808"
theorem cover_1304731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304731 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1304731)
  decide +kernel
#print axioms cover_1304731

def state_1304758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 21) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 22)))
def hex_1304758 : String := "44094107434007424441074305090707400942440941074340074208070909"
theorem cover_1304758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304758 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1304758)
  decide +kernel
#print axioms cover_1304758

def state_1304789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_1304789 : String := "41074306404244410743070A07074244410A4340420A07420A07400A0A410743070A444107430740074244410743074007420A07070707"
theorem cover_1304789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 55) (hex := hex_1304789)
  decide +kernel
#print axioms cover_1304789

def state_1304844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
def hex_1304844 : String := "44410743070907"
theorem cover_1304844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1304844)
  decide +kernel
#print axioms cover_1304844
end Mub6.Numerical.CircleFullD0.Forest
