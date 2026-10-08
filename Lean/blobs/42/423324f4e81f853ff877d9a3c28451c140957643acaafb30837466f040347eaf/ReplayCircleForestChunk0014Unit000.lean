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
def state_69606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_69606 : String := "404142434407400A4142430A07070A444041070A074041434244074041070A41070A07424407404143070743440742400641070A0A44084240084341070808084107434407424041070A07074407424340410709074009070744074041070A07430A42440A40430A08430A4144084243400A410909090A0A0A41430742440741074307070643424407400A050A4244430A40410708064340414407424305400A050A0505404144074243404109050509430A4041070806440A42050A414406420506054406430A400A06430A44064041420A060A0642430A440A400A430A41424405050A0A0A4142434407414007050544064106430640424405050606430A06424305440543050506"
theorem cover_69606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 265) (hex := hex_69606)
  decide +kernel
#print axioms cover_69606

def state_69875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_69875 : String := "44404142430844400A080843090942430A0A0A414208430608424308440508430A0A400908"
theorem cover_69875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_69875)
  decide +kernel
#print axioms cover_69875

def state_69916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_69916 : String := "424440414342080942444006410743060606440709430A42060A41430842084407084342080A424440414308420607060808440A4009084041084306060844400A414307070A09"
theorem cover_69916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 71) (hex := hex_69916)
  decide +kernel
#print axioms cover_69916


end Mub6.Numerical.CircleFullPrototype.Forest
