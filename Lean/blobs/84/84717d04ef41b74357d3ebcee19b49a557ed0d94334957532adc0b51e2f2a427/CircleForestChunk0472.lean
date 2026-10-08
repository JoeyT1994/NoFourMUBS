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
def state_274609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 91) else (if j.val < 3 then 34 else (if j.val < 4 then 113 else 35)))
def hex_274609 : String := "44420641400643440942064105060640064309064206414005434442060505064006430706"
theorem cover_274609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_274609)
  decide +kernel
#print axioms cover_274609

def state_274646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 56 else 35)))
def hex_274646 : String := "41430A44420A4041430A08430A44090A0A0A4344420940410A09090A44420940414309090909420A40410A430744090A0A"
theorem cover_274646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_274646)
  decide +kernel
#print axioms cover_274646

def state_274698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 90) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 34)))
def hex_274698 : String := "4342444008414305050840054105430542440805054408054244400707400541054342440705054207054440050705"
theorem cover_274698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_274698)
  decide +kernel
#print axioms cover_274698

def state_274745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 91) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 34)))
def hex_274745 : String := "4308424408414043080A43084209080808"
theorem cover_274745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_274745)
  decide +kernel
#print axioms cover_274745

def state_274764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 90) else (if j.val < 3 then 35 else (if j.val < 4 then 112 else 34)))
def hex_274764 : String := "4244404107090940414305424407050543084209440840050A410A09444008064041050806"
theorem cover_274764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_274764)
  decide +kernel
#print axioms cover_274764

def state_274801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 90) else (if j.val < 3 then 35 else (if j.val < 4 then 113 else 34)))
def hex_274801 : String := "42440740410743420944074005070741074309074407404105434244070505074107430607"
theorem cover_274801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274801 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_274801)
  decide +kernel
#print axioms cover_274801
end Mub6.Numerical.CircleFullPrototype.Forest
