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
def state_1037095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 62)))
def hex_1037095 : String := "424344400A094041420A0708414243090609090A43094406400706"
theorem cover_1037095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1037095)
  decide +kernel
#print axioms cover_1037095

def state_1037123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
def hex_1037123 : String := "4142430705074243070507"
theorem cover_1037123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1037123)
  decide +kernel
#print axioms cover_1037123

def state_1037136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 38 else 63)))
def hex_1037136 : String := "43444041070741424344404107070840070844064005060742434440410707414206064206068444068407400741424308050784444005410542060505"
theorem cover_1037136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1037136)
  decide +kernel
#print axioms cover_1037136

def state_1037197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 105 else (if j.val < 4 then 38 else 63)))
def hex_1037197 : String := "430707"
theorem cover_1037197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1037197)
  decide +kernel
#print axioms cover_1037197

def state_1037200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
def hex_1037200 : String := "42434440414243070707420807414243440984440684430707424309440684098444400A4142060642060684430707"
theorem cover_1037200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1037200)
  decide +kernel
#print axioms cover_1037200

def state_1037247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 39 else 31)))
def hex_1037247 : String := "44400A4106064005410542434405050505"
theorem cover_1037247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1037247)
  decide +kernel
#print axioms cover_1037247

def state_1037264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 19 else 31)))
def hex_1037264 : String := "4344400741070707444007410742060607"
theorem cover_1037264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1037264)
  decide +kernel
#print axioms cover_1037264

def state_1037281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
def hex_1037281 : String := "43440907444007414307070907"
theorem cover_1037281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1037281)
  decide +kernel
#print axioms cover_1037281

def state_1037296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 7)))
def hex_1037296 : String := "4440084208094008424143054405400605054143440906444008094008424105050908"
theorem cover_1037296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1037296)
  decide +kernel
#print axioms cover_1037296

def state_1037332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
def hex_1037332 : String := "400842410A084143080A08"
theorem cover_1037332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1037332)
  decide +kernel
#print axioms cover_1037332

def state_1037344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
def hex_1037344 : String := "420808"
theorem cover_1037344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1037344)
  decide +kernel
#print axioms cover_1037344
end Mub6.Numerical.CircleFullD0.Forest
