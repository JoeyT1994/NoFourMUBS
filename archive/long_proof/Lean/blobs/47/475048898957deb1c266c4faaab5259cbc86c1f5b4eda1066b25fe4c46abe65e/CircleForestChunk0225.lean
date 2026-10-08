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
def state_75365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 21)))
def hex_75365 : String := "4143424440080A0A4408400541054342070505420505434244080744080708"
theorem cover_75365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_75365)
  decide +kernel
#print axioms cover_75365

def state_75396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 21)))
def hex_75396 : String := "4143420A060A43424443404142070607410642070640080A07440643400706400706420A08"
theorem cover_75396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_75396)
  decide +kernel
#print axioms cover_75396

def state_75434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_75434 : String := "4143444240050A40054105090705430707"
theorem cover_75434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_75434)
  decide +kernel
#print axioms cover_75434

def state_75451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_75451 : String := "414344420A4143080A43094044420A05070A080A4344420743400941080740074144420A09070707444207404143070507410A0707"
theorem cover_75451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_75451)
  decide +kernel
#print axioms cover_75451

def state_75504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
def hex_75504 : String := "4440410508410A420A43440840080A0840050A"
theorem cover_75504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_75504)
  decide +kernel
#print axioms cover_75504

def state_75526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 10)))
def hex_75526 : String := "41424344400506400541050905430605424344084043090843094142440805060808430A08"
theorem cover_75526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_75526)
  decide +kernel
#print axioms cover_75526

def state_75563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 10)))
def hex_75563 : String := "4142430606064243440643400906404106424408090606440640414243060506080606"
theorem cover_75563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75563 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_75563)
  decide +kernel
#print axioms cover_75563
end Mub6.Numerical.CircleFullPrototype.Forest
