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
def state_2552876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 47)))
def hex_2552876 : String := "4341440540420943050505440940090941440540420508054408400808"
theorem cover_2552876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2552876)
  decide +kernel
#print axioms cover_2552876

def state_2552907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 47)))
def hex_2552907 : String := "44054042434405410540420505050543440541054006050605"
theorem cover_2552907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2552907)
  decide +kernel
#print axioms cover_2552907

def state_2552932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 47)))
def hex_2552932 : String := "444042434105090543410544054006050605404243E241440540420806050843E2410644060842430505434105440540E20505"
theorem cover_2552932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2552932)
  decide +kernel
#print axioms cover_2552932

def state_2552983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 47)))
def hex_2552983 : String := "4144054006054408400808"
theorem cover_2552983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2552983)
  decide +kernel
#print axioms cover_2552983

def state_2552994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
def hex_2552994 : String := "420505"
theorem cover_2552994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2552994)
  decide +kernel
#print axioms cover_2552994

def state_2552999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
def hex_2552999 : String := "440540430542050505"
theorem cover_2552999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2552999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2552999)
  decide +kernel
#print axioms cover_2552999

def state_2553009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_2553009 : String := "40430542050505"
theorem cover_2553009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2553009)
  decide +kernel
#print axioms cover_2553009

def state_2553018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
def hex_2553018 : String := "4241440508444043084205050540080841440507444043050905400807"
theorem cover_2553018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2553018)
  decide +kernel
#print axioms cover_2553018

def state_2553049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
def hex_2553049 : String := "44054043424405080542440541054006050605"
theorem cover_2553049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2553049)
  decide +kernel
#print axioms cover_2553049

def state_2553068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 58 else (if j.val < 4 then 57 else 47)))
def hex_2553068 : String := "444043424105440540430505050542410544054006050605404342E241094440430806050942E2410644060943420505424105440540E20505"
theorem cover_2553068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2553068)
  decide +kernel
#print axioms cover_2553068

def state_2553125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 59 else (if j.val < 4 then 57 else 47)))
def hex_2553125 : String := "4144050944400605400909"
theorem cover_2553125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2553125)
  decide +kernel
#print axioms cover_2553125
end Mub6.Numerical.CircleFullD0.Forest
