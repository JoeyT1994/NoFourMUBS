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
def state_2594964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 9)))
def hex_2594964 : String := "4340414406434206060644430906434240414405054405050940050642400506050640410544050506"
theorem cover_2594964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2594964)
  decide +kernel
#print axioms cover_2594964

def state_2595005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_2595005 : String := "41064406424043410505050606"
theorem cover_2595005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595005 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2595005)
  decide +kernel
#print axioms cover_2595005

def state_2595018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
def hex_2595018 : String := "434106440643404241050505060605"
theorem cover_2595018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2595018)
  decide +kernel
#print axioms cover_2595018

def state_2595038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
def hex_2595038 : String := "40054243444107420705070505"
theorem cover_2595038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2595038)
  decide +kernel
#print axioms cover_2595038

def state_2595051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 10)))
def hex_2595051 : String := "40424344050505054243444142434007070743400507054243400641070640050743400541074405050507444105050543444105050505"
theorem cover_2595051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2595051)
  decide +kernel
#print axioms cover_2595051

def state_2595106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 11)))
def hex_2595106 : String := "410507"
theorem cover_2595106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2595106)
  decide +kernel
#print axioms cover_2595106

def state_2595109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 5)))
def hex_2595109 : String := "05"
theorem cover_2595109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2595109)
  decide +kernel
#print axioms cover_2595109

def state_2595110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2595110 : String := "05"
theorem cover_2595110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2595110)
  decide +kernel
#print axioms cover_2595110

def state_2595116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 10)))
def hex_2595116 : String := "434044414208434007060642434007080843404441060707440607400506074408084044080708"
theorem cover_2595116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595116 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2595116)
  decide +kernel
#print axioms cover_2595116

def state_2595155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 10)))
def hex_2595155 : String := "43404441064342400506050507440641064342070606400506"
theorem cover_2595155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2595155)
  decide +kernel
#print axioms cover_2595155

def state_2595185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 20)))
def hex_2595185 : String := "42434007410707400707434041074443070707414406074443424007060642060607404105074106440607"
theorem cover_2595185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2595185)
  decide +kernel
#print axioms cover_2595185
end Mub6.Numerical.CircleFullD0.Forest
