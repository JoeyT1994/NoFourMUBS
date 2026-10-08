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
def state_276514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 114 else 36)))
def hex_276514 : String := "44424041430744050705054041430744D90707410A05420707"
theorem cover_276514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_276514)
  decide +kernel
#print axioms cover_276514

def state_276539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 115 else 36)))
def hex_276539 : String := "4442404108050540414344D9420740070744D942084008080505424041080708404143070807410805"
theorem cover_276539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_276539)
  decide +kernel
#print axioms cover_276539

def state_276580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 93) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
def hex_276580 : String := "430705"
theorem cover_276580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_276580)
  decide +kernel
#print axioms cover_276580

def state_276583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
def hex_276583 : String := "41430A0505"
theorem cover_276583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_276583)
  decide +kernel
#print axioms cover_276583

def state_276588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 37)))
def hex_276588 : String := "4240070740414307444207070707410A07"
theorem cover_276588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276588 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_276588)
  decide +kernel
#print axioms cover_276588

def state_276605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
def hex_276605 : String := "4307440507"
theorem cover_276605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_276605)
  decide +kernel
#print axioms cover_276605

def state_276610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
def hex_276610 : String := "41430A44050A05"
theorem cover_276610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_276610)
  decide +kernel
#print axioms cover_276610

def state_276617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 19)))
def hex_276617 : String := "42400707400707"
theorem cover_276617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_276617)
  decide +kernel
#print axioms cover_276617

def state_276626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 16 else (if j.val < 4 then 29 else 18)))
def hex_276626 : String := "4041080505"
theorem cover_276626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_276626)
  decide +kernel
#print axioms cover_276626

def state_276631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 29 else 18)))
def hex_276631 : String := "404143444240410805054041434442054041080505420840410843070808080505420840410843074408074108054442084041080505084305054143050505"
theorem cover_276631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 63) (hex := hex_276631)
  decide +kernel
#print axioms cover_276631

def state_276694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 19)))
def hex_276694 : String := "424008084041440808444307420507074108440507"
theorem cover_276694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_276694)
  decide +kernel
#print axioms cover_276694

def state_276716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 8)))
def hex_276716 : String := "40414243444006070608434407400A080A420A0A41420843440708074205434405404142050A05054405400A05"
theorem cover_276716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_276716)
  decide +kernel
#print axioms cover_276716
end Mub6.Numerical.CircleFullPrototype.Forest
