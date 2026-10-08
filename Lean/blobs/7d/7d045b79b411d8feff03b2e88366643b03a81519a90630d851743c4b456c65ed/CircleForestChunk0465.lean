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
def state_272909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_272909 : String := "434405414205430505054441420505424005050541094244090909"
theorem cover_272909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_272909)
  decide +kernel
#print axioms cover_272909

def state_272937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_272937 : String := "424344400543054105424440050A0505054440054105420805404405054441050505434405404205430505054440420505424105050540094244090609"
theorem cover_272937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_272937)
  decide +kernel
#print axioms cover_272937

def state_273003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_273003 : String := "43054244400541054305050505"
theorem cover_273003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_273003)
  decide +kernel
#print axioms cover_273003

def state_273017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
def hex_273017 : String := "4244080708"
theorem cover_273017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_273017)
  decide +kernel
#print axioms cover_273017

def state_273025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
def hex_273025 : String := "40430505434244084105080842444140054342440905054206054008430842060841054005434408054406064441050841054005430505"
theorem cover_273025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_273025)
  decide +kernel
#print axioms cover_273025

def state_273080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
def hex_273080 : String := "4008430842440841400643074406060708"
theorem cover_273080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_273080)
  decide +kernel
#print axioms cover_273080

def state_273097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 9)))
def hex_273097 : String := "414005430505400743074442070707"
theorem cover_273097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_273097)
  decide +kernel
#print axioms cover_273097

def state_273112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 4)))
def hex_273112 : String := "4408410540054305420705"
theorem cover_273112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_273112)
  decide +kernel
#print axioms cover_273112

def state_273125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 4)))
def hex_273125 : String := "420A440605"
theorem cover_273125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_273125)
  decide +kernel
#print axioms cover_273125
end Mub6.Numerical.CircleFullPrototype.Forest
