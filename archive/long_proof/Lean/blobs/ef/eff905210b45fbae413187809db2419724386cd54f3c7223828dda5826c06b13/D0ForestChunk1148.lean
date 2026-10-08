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
def state_1575930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
def hex_1575930 : String := "42410A44404342410A440740434209050507410544054005050507404342EA0842EA410544054005080A410A4440050808"
theorem cover_1575930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 49) (hex := hex_1575930)
  decide +kernel
#print axioms cover_1575930

def state_1575979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_1575979 : String := "0A"
theorem cover_1575979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575979 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1575979)
  decide +kernel
#print axioms cover_1575979

def state_1575980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_1575980 : String := "4144050A440740424341440540050A44400507404243EA050542070A41054405064341054405060507"
theorem cover_1575980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1575980)
  decide +kernel
#print axioms cover_1575980

def state_1576021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_1576021 : String := "410A4407420707"
theorem cover_1576021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1576021)
  decide +kernel
#print axioms cover_1576021

def state_1576028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 11)))
def hex_1576028 : String := "404144054243440540050A05054407424341440740420905070909434105440540050705410A07"
theorem cover_1576028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1576028)
  decide +kernel
#print axioms cover_1576028

def state_1576067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 11)))
def hex_1576067 : String := "43404144050A444342410540050705054342410A4440430805080808424105440540050A05410A44070A4041050507"
theorem cover_1576067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1576067)
  decide +kernel
#print axioms cover_1576067

def state_1576123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 12)))
def hex_1576123 : String := "4142430A444009094007414243074405074307054207070A42084307440707"
theorem cover_1576123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1576123)
  decide +kernel
#print axioms cover_1576123

def state_1576157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 12)))
def hex_1576157 : String := "4406400A0A"
theorem cover_1576157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1576157)
  decide +kernel
#print axioms cover_1576157

def state_1576163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 24)))
def hex_1576163 : String := "404109420609410906"
theorem cover_1576163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1576163)
  decide +kernel
#print axioms cover_1576163

def state_1576176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 50 else 25)))
def hex_1576176 : String := "44400A0A40070A"
theorem cover_1576176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1576176)
  decide +kernel
#print axioms cover_1576176
end Mub6.Numerical.CircleFullD0.Forest
