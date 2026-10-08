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
def state_137799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_137799 : String := "41424344420A0A0A0A0A4243444142434005440508050A420843400844410A43080A080A0A0A4344410A43400A4244410A43400A4207090A0A090A0A0A"
theorem cover_137799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 61) (hex := hex_137799)
  decide +kernel
#print axioms cover_137799

def state_137862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_137862 : String := "434440424341074406070A4341440A074443090A070A420707404243070A074243070A0744400A42410705070A"
theorem cover_137862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_137862)
  decide +kernel
#print axioms cover_137862

def state_137907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_137907 : String := "4344404341424443090A0909090A43414207444043050707054207094107420744400A07074009070A"
theorem cover_137907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_137907)
  decide +kernel
#print axioms cover_137907

def state_137951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_137951 : String := "404142434406060543444306400A06090A424344060605434441430607070744410507074142430605074243060507"
theorem cover_137951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_137951)
  decide +kernel
#print axioms cover_137951

def state_137998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_137998 : String := "404142434407070A07424344410606410A424306050A0A43070A41424344060944090909424306440540054106054306440909"
theorem cover_137998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_137998)
  decide +kernel
#print axioms cover_137998
end Mub6.Numerical.CircleFullPrototype.Forest
