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
def state_965101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 110)))
def hex_965101 : String := "41424344060A064344090A440640410542050A0A42434406404142064308060606064309440640414206090606"
theorem cover_965101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_965101)
  decide +kernel
#print axioms cover_965101

def state_965146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 111)))
def hex_965146 : String := "4340410A070A4041420544430705054244434007410507050507410A424443084005060844430A4041054205070808"
theorem cover_965146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_965146)
  decide +kernel
#print axioms cover_965146

def state_965193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 55)))
def hex_965193 : String := "44430940414243440707444007090707424307440907074142430944090A09094340060A4007410A420A07"
theorem cover_965193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_965193)
  decide +kernel
#print axioms cover_965193

def state_965238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 36 else 110)))
def hex_965238 : String := "434041424409070709094041424344404142060706064007414206074206074406404107060643440907440907424344064007060643074406074142060906"
theorem cover_965238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_965238)
  decide +kernel
#print axioms cover_965238

def state_965302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 111)))
def hex_965302 : String := "4007414244430840070808074244090707"
theorem cover_965302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_965302)
  decide +kernel
#print axioms cover_965302

def state_965320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 111)))
def hex_965320 : String := "4142444307400541050707074244070707"
theorem cover_965320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_965320)
  decide +kernel
#print axioms cover_965320
end Mub6.Numerical.CircleFullD0.Forest
