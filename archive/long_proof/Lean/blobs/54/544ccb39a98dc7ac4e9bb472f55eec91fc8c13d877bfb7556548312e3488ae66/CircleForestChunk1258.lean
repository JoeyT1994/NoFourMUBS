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
def state_1602383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 85) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
def hex_1602383 : String := "43440840084206414306080608"
theorem cover_1602383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1602383)
  decide +kernel
#print axioms cover_1602383

def state_1602397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 99)))
def hex_1602397 : String := "410606"
theorem cover_1602397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1602397)
  decide +kernel
#print axioms cover_1602397

def state_1602402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 118 else 99)))
def hex_1602402 : String := "44064042060A06"
theorem cover_1602402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1602402)
  decide +kernel
#print axioms cover_1602402

def state_1602409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 119 else 99)))
def hex_1602409 : String := "444042410606410A4306440540050642064106064042419F43060841430A440A400A0A434406400A0644400842060A4042080A424106060A4206410A06"
theorem cover_1602409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1602409)
  decide +kernel
#print axioms cover_1602409

def state_1602470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
def hex_1602470 : String := "430644400806404208414306080806"
theorem cover_1602470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1602470)
  decide +kernel
#print axioms cover_1602470

def state_1602486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 58 else 49)))
def hex_1602486 : String := "444041094243064405400906090A40410A424306444041090906404107070A090A"
theorem cover_1602486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1602486)
  decide +kernel
#print axioms cover_1602486

def state_1602520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 98)))
def hex_1602520 : String := "40410542434405400541054206050505410A42430644054041054206050A05"
theorem cover_1602520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602520 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1602520)
  decide +kernel
#print axioms cover_1602520

def state_1602552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
def hex_1602552 : String := "414243440540090A44054005424105430A05050542434440410508410A42080A40410707410A42430607074440054105084007414243070705420707430905"
theorem cover_1602552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1602552)
  decide +kernel
#print axioms cover_1602552
end Mub6.Numerical.CircleFullD0.Forest
