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
def state_948733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 108)))
def hex_948733 : String := "4305404241440A43400905090A414443050A430540420941090A424109054144050905440505424144054305070541440543054042410705050505"
theorem cover_948733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_948733)
  decide +kernel
#print axioms cover_948733

def state_948793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 109)))
def hex_948793 : String := "40424106440505064241080505"
theorem cover_948793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_948793)
  decide +kernel
#print axioms cover_948793

def state_948806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 109)))
def hex_948806 : String := "40424109094144430609064443054009420941090543060942414443080908444305400905084144430540420941080908084405430508"
theorem cover_948806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_948806)
  decide +kernel
#print axioms cover_948806

def state_948864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 68 else 108)))
def hex_948864 : String := "400642414405050505"
theorem cover_948864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_948864)
  decide +kernel
#print axioms cover_948864

def state_948876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 108)))
def hex_948876 : String := "444340064241060506404241064443060906064241444340060740090709444305404207410705074306094144430640064207060644430540420505050606"
theorem cover_948876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_948876)
  decide +kernel
#print axioms cover_948876

def state_948939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 108)))
def hex_948939 : String := "444305404241440A060A410605424144054305400905054144050505430640064241444306090644430540060506410606"
theorem cover_948939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_948939)
  decide +kernel
#print axioms cover_948939
end Mub6.Numerical.CircleFullD0.Forest
