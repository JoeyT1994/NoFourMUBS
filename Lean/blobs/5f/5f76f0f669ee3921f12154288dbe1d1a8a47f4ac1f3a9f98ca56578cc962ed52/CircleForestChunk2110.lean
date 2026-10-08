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
def state_2586933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 93 else 79)))
def hex_2586933 : String := "4142434006070743400609074206430607"
theorem cover_2586933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2586933)
  decide +kernel
#print axioms cover_2586933

def state_2586950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
def hex_2586950 : String := "4206430640064441424306400609080606"
theorem cover_2586950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2586950)
  decide +kernel
#print axioms cover_2586950

def state_2586968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2586968 : String := "444142434008444108084109084005440909430805424340064408064005444105054105054308054142430609434005440505054206430605"
theorem cover_2586968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2586968)
  decide +kernel
#print axioms cover_2586968

def state_2587030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 38)))
def hex_2587030 : String := "44410A4243400844080A0A43084008440808410A42434006440A060A4340084408084008440A0A"
theorem cover_2587030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2587030)
  decide +kernel
#print axioms cover_2587030

def state_2587070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 76)))
def hex_2587070 : String := "410A42434044050A05400A0A43404407410A08440541050540440A0A44060A"
theorem cover_2587070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2587070)
  decide +kernel
#print axioms cover_2587070

def state_2587101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 77)))
def hex_2587101 : String := "410A424340440A0A05400A0A434044410A4243050808410A4243060A0844410505410A42050940440A0A440A0A"
theorem cover_2587101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2587101)
  decide +kernel
#print axioms cover_2587101

def state_2587146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 38)))
def hex_2587146 : String := "40440A0A440A410A420A43400A0A0A"
theorem cover_2587146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2587146)
  decide +kernel
#print axioms cover_2587146

def state_2587163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 38)))
def hex_2587163 : String := "44414243080A0808414243080A430805424308400544080808"
theorem cover_2587163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2587163)
  decide +kernel
#print axioms cover_2587163
end Mub6.Numerical.CircleFullD0.Forest
