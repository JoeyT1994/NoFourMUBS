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
def state_1332994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 124 else (if j.val < 4 then 189 else 101)))
def hex_1332994 : String := "444041084243064440070640080643064406400806410A06404108424308084308084107424306440640410705064306440606"
theorem cover_1332994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1332994)
  decide +kernel
#print axioms cover_1332994

def state_1333045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 125 else (if j.val < 4 then 94 else 101)))
def hex_1333045 : String := "43440640410706064440410506064041084243080809410506"
theorem cover_1333045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1333045)
  decide +kernel
#print axioms cover_1333045

def state_1333070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 62 else (if j.val < 4 then 94 else 101)))
def hex_1333070 : String := "42430644064041420543064406050506430644064041090606"
theorem cover_1333070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1333070)
  decide +kernel
#print axioms cover_1333070

def state_1333096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 100)))
def hex_1333096 : String := "4007410A07"
theorem cover_1333096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1333096)
  decide +kernel
#print axioms cover_1333096

def state_1333102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 101)))
def hex_1333102 : String := "4142080807"
theorem cover_1333102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333102 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1333102)
  decide +kernel
#print axioms cover_1333102

def state_1333108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 62 else (if j.val < 4 then 95 else 101)))
def hex_1333108 : String := "4243444041084243440740070A070A0A40410842080841084243440A4008090A0A440A40080A43440A4041084208080A0A"
theorem cover_1333108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1333108)
  decide +kernel
#print axioms cover_1333108

def state_1333158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 124 else (if j.val < 4 then 95 else 101)))
def hex_1333158 : String := "434440070640414205434440050605050541420543060A0544074005410A05"
theorem cover_1333158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1333158)
  decide +kernel
#print axioms cover_1333158

def state_1333189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 125 else (if j.val < 4 then 95 else 101)))
def hex_1333189 : String := "43444007064041424344400706404108050644074007410A074309440740070A420507414243060A0606440740070A"
theorem cover_1333189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1333189)
  decide +kernel
#print axioms cover_1333189
end Mub6.Numerical.CircleFullD0.Forest
