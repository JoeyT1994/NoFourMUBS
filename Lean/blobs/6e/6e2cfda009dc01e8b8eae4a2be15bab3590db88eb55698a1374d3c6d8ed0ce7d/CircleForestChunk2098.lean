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
def state_2584038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
def hex_2584038 : String := "40440A4142430A400A0A0A0A4441424305400A05090A41424305084309400A080A"
theorem cover_2584038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2584038)
  decide +kernel
#print axioms cover_2584038

def state_2584071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
def hex_2584071 : String := "4044414243400A0A400A410808430A0A0A414243400A08400A08430A400A0A0A4441420843400A06060A41420843400A08080A"
theorem cover_2584071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2584071)
  decide +kernel
#print axioms cover_2584071

def state_2584123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 19)))
def hex_2584123 : String := "43400644080640444108060608"
theorem cover_2584123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2584123)
  decide +kernel
#print axioms cover_2584123

def state_2584136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 19)))
def hex_2584136 : String := "434044414243064006080A060644414208430A080A410806404441424340440806080843400A0A400A080A414207430707064441080808"
theorem cover_2584136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2584136)
  decide +kernel
#print axioms cover_2584136

def state_2584191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
def hex_2584191 : String := "440A42060A"
theorem cover_2584191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2584191)
  decide +kernel
#print axioms cover_2584191

def state_2584196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
def hex_2584196 : String := "4144420843440909444041060806084208434408080844424341050808430A414409080A4208430A08"
theorem cover_2584196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2584196)
  decide +kernel
#print axioms cover_2584196
end Mub6.Numerical.CircleFullD0.Forest
