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
def state_2576738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
def hex_2576738 : String := "42434144400943090909444009434206090909410909434144074005420905444005424307050540054243410909050505"
theorem cover_2576738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2576738)
  decide +kernel
#print axioms cover_2576738

def state_2576790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
def hex_2576790 : String := "44430A0A43400A0A0A"
theorem cover_2576790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576790 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2576790)
  decide +kernel
#print axioms cover_2576790

def state_2576802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 16)))
def hex_2576802 : String := "4241090641440743400707094407434006074009420907"
theorem cover_2576802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576802 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2576802)
  decide +kernel
#print axioms cover_2576802

def state_2576825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 48 else 16)))
def hex_2576825 : String := "42410544430540420541050505430540090541444307420A0743420507420A4007074443074240070507434205074240410909054007410707"
theorem cover_2576825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2576825)
  decide +kernel
#print axioms cover_2576825

def state_2576883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 16)))
def hex_2576883 : String := "4209414443090909444340074209070909"
theorem cover_2576883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2576883)
  decide +kernel
#print axioms cover_2576883

def state_2576901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 44 else (if j.val < 4 then 49 else 16)))
def hex_2576901 : String := "410A4443400942054105054009084340090808"
theorem cover_2576901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2576901)
  decide +kernel
#print axioms cover_2576901

def state_2576921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
def hex_2576921 : String := "4443420A07420A0643420A404107070A4208400906"
theorem cover_2576921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2576921)
  decide +kernel
#print axioms cover_2576921

def state_2576943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 32)))
def hex_2576943 : String := "434240410709414407430542050744074307420807400707424009414406084443420907420806434208090840410707410607"
theorem cover_2576943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2576943)
  decide +kernel
#print axioms cover_2576943
end Mub6.Numerical.CircleFullD0.Forest
