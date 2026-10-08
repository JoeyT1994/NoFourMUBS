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
def state_1605999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 48)))
def hex_1605999 : String := "4041050841424344084008420841050808054208434405400541050808"
theorem cover_1605999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1605999)
  decide +kernel
#print axioms cover_1605999

def state_1606029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
def hex_1606029 : String := "4142080508"
theorem cover_1606029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1606029)
  decide +kernel
#print axioms cover_1606029

def state_1606038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 98)))
def hex_1606038 : String := "40084208414344054042080542410606054405400542080508"
theorem cover_1606038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1606038)
  decide +kernel
#print axioms cover_1606038

def state_1606064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
def hex_1606064 : String := "420841434408400842084105080808"
theorem cover_1606064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606064 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1606064)
  decide +kernel
#print axioms cover_1606064

def state_1606080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 99)))
def hex_1606080 : String := "414344084008090808"
theorem cover_1606080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1606080)
  decide +kernel
#print axioms cover_1606080

def state_1606092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 120 else 198)))
def hex_1606092 : String := "4042084105084241430644089F0841430A0543440640420605064405400809"
theorem cover_1606092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1606092)
  decide +kernel
#print axioms cover_1606092

def state_1606123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 120 else 199)))
def hex_1606123 : String := "4042419F084143440540429F05429F0544054005429F0543440840084208410A080842419F0941430A4440050A40429F0A0A43444042060A064042090A0909"
theorem cover_1606123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1606123)
  decide +kernel
#print axioms cover_1606123

def state_1606186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 121 else 99)))
def hex_1606186 : String := "44400842084105084042084105084209414344400542090540429F0542090A440540050909"
theorem cover_1606186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1606186)
  decide +kernel
#print axioms cover_1606186

def state_1606223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 99)))
def hex_1606223 : String := "43440840080908"
theorem cover_1606223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606223 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1606223)
  decide +kernel
#print axioms cover_1606223

def state_1606230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 49)))
def hex_1606230 : String := "440840084208414344400542080540084208414344050605080808"
theorem cover_1606230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 27) (hex := hex_1606230)
  decide +kernel
#print axioms cover_1606230
end Mub6.Numerical.CircleFullD0.Forest
