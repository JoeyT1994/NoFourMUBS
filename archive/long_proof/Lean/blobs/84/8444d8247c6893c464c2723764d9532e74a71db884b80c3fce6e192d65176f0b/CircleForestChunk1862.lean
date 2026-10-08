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
def state_2319874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 87)))
def hex_2319874 : String := "4340420744074143400942090983074244074143400708070744084143404244054105084405050583434009088383"
theorem cover_2319874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_2319874)
  decide +kernel
#print axioms cover_2319874

def state_2319921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 21)))
def hex_2319921 : String := "434042070942440741430607064409414309400942060606400742074407414340420709420744074143064007420606060707"
theorem cover_2319921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 51) (hex := hex_2319921)
  decide +kernel
#print axioms cover_2319921

def state_2319972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 10)))
def hex_2319972 : String := "43404207094244060644060640074207440741434007060707"
theorem cover_2319972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2319972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2319972)
  decide +kernel
#print axioms cover_2319972

def state_2320004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 28 else 22)))
def hex_2320004 : String := "40440941430908094441430942090909414342400906094240084409084008440908430609"
theorem cover_2320004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2320004)
  decide +kernel
#print axioms cover_2320004

def state_2320042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
def hex_2320042 : String := "444143094207080908"
theorem cover_2320042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2320042)
  decide +kernel
#print axioms cover_2320042

def state_2320051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 20 else (if j.val < 4 then 29 else 22)))
def hex_2320051 : String := "44414342400944090940090942400744074108074044090844094143080808430942070941434240084441080808400844410808084208084342080808"
theorem cover_2320051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2320051)
  decide +kernel
#print axioms cover_2320051

def state_2320112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 20 else (if j.val < 4 then 14 else 22)))
def hex_2320112 : String := "4309400944094143080505"
theorem cover_2320112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2320112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2320112)
  decide +kernel
#print axioms cover_2320112
end Mub6.Numerical.CircleFullD0.Forest
