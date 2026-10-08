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
def state_2306115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 74 else (if j.val < 4 then 55 else 91)))
def hex_2306115 : String := "434440414243080843080808414243440540410508054440080508430544050842430608434409060840084142434440080607080742080844400841080808"
theorem cover_2306115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2306115)
  decide +kernel
#print axioms cover_2306115

def state_2306178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 106) else (if j.val < 3 then 75 else (if j.val < 4 then 55 else 91)))
def hex_2306178 : String := "43444041420807084107424344050708430507400841070844400841080808"
theorem cover_2306178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2306178)
  decide +kernel
#print axioms cover_2306178

def state_2306209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 107) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
def hex_2306209 : String := "42434440080908084344400841420808080808"
theorem cover_2306209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2306209)
  decide +kernel
#print axioms cover_2306209

def state_2306230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 106) else (if j.val < 3 then 74 else (if j.val < 4 then 55 else 91)))
def hex_2306230 : String := "4344404105420643050A0540410706064440414243440508084305084243080843080841050A40414208080841070A"
theorem cover_2306230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2306230)
  decide +kernel
#print axioms cover_2306230

def state_2306277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 106) else (if j.val < 3 then 75 else (if j.val < 4 then 55 else 91)))
def hex_2306277 : String := "4344050744404107420808054041070807"
theorem cover_2306277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2306277)
  decide +kernel
#print axioms cover_2306277

def state_2306294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 107) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 91)))
def hex_2306294 : String := "42430644404108080A40080643444041420606060606444041080841420A430508064008410806"
theorem cover_2306294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2306294)
  decide +kernel
#print axioms cover_2306294
end Mub6.Numerical.CircleFullD0.Forest
