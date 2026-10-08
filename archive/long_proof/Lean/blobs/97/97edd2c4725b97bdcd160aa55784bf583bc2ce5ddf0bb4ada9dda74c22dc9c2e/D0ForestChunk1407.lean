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
def state_1638463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 39)))
def hex_1638463 : String := "414340440842080644084241084307084107074005084340440606444241430708430706064241430740074407074307400644060507400644064241080606"
theorem cover_1638463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1638463)
  decide +kernel
#print axioms cover_1638463

def state_1638527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 38)))
def hex_1638527 : String := "420941434008090809"
theorem cover_1638527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638527 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1638527)
  decide +kernel
#print axioms cover_1638527

def state_1638537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 39)))
def hex_1638537 : String := "41434044420808420641430608434005054008094409064044084208080943404409050509"
theorem cover_1638537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638537 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1638537)
  decide +kernel
#print axioms cover_1638537

def state_1638576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 102 else 39)))
def hex_1638576 : String := "4044424108434008080841084307084241434044070744080608434007054008440842050841430708430740074408074442090942410A0541430A0A430509"
theorem cover_1638576 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638576 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1638576)
  decide +kernel
#print axioms cover_1638576

def state_1638639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 103 else 39)))
def hex_1638639 : String := "40440842080809"
theorem cover_1638639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1638639)
  decide +kernel
#print axioms cover_1638639

def state_1638646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 39)))
def hex_1638646 : String := "43404442410909414307084305094241430540440842050705054143074007440705430540050544090540440942094143400609080909"
theorem cover_1638646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638646 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1638646)
  decide +kernel
#print axioms cover_1638646
end Mub6.Numerical.CircleFullD0.Forest
