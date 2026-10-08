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
def state_137316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
def hex_137316 : String := "4244074340410606414207434407060607074443400A410A07074340410A05414243440A06060A4207050A"
theorem cover_137316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_137316)
  decide +kernel
#print axioms cover_137316

def state_137359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 13)))
def hex_137359 : String := "400A410A07"
theorem cover_137359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_137359)
  decide +kernel
#print axioms cover_137359

def state_137365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_137365 : String := "41424306440640410706414205060606420606"
theorem cover_137365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_137365)
  decide +kernel
#print axioms cover_137365

def state_137384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_137384 : String := "4142434406064406404105060543444006420606064406064243444006410606064406064344400641420606420606400641060644400641060606"
theorem cover_137384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_137384)
  decide +kernel
#print axioms cover_137384

def state_137447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_137447 : String := "4243440942070944424340090640410A0A41440607440606430940090942070909"
theorem cover_137447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_137447)
  decide +kernel
#print axioms cover_137447

def state_137480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_137480 : String := "424344410908074441424306400806430940090942430608430840084441060608414243070A0A420707434408410A074441094308400809410A434408070A"
theorem cover_137480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_137480)
  decide +kernel
#print axioms cover_137480
end Mub6.Numerical.CircleFullPrototype.Forest
