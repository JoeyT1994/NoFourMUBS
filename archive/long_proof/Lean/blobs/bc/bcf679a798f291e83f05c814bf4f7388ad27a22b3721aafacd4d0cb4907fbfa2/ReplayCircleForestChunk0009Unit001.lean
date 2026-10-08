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
def state_51371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_51371 : String := "434443404142094409430909420944084341090909414209440943400909094205440543400909094041420944084309060941090943444041424309074344420905054442070707424306074344414209400743420941050707420607070741420A4344404209414305054342094005440905090A40420A050A440A0A42434409060943444041420943420940410909410944090909420643414206400644090606094142094340420941094409090A094205434041420544050A0505094041420A43444240060A4005410507070742060741420A43440A080A4206434440410A060A40060A0A44404109070940070A404142434440050805070542070741420A434440050808440A0A420A434440414207050741420843080A4206434407070740074142080807440707444007410A0A40070A444041420706074106420508440707"
theorem cover_51371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 323) (hex := hex_51371)
  decide +kernel
#print axioms cover_51371

def state_51696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_51696 : String := "424340414443090643424409050542440606064408434241440840430505434409410542080508084144080508420808414443070643424044094106434409400506064406060606444342080708434240414409434409404109094109420909094408434144084008420808080841440743404407410742090707094405434041440542050805050840414408434244400806400506060644084342080808414406064407434240080740080608424008094008064041060841060843404144424340050606430505054408424341050A08430A08414406064408424340414406054408430A08410644064342060606064340410644080A06064041060806"
theorem cover_51696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 255) (hex := hex_51696)
  decide +kernel
#print axioms cover_51696

def state_51955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
def hex_51955 : String := "4105434244410507050507"
theorem cover_51955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_51955)
  decide +kernel
#print axioms cover_51955

def state_51967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
def hex_51967 : String := "434244400506050506"
theorem cover_51967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_51967)
  decide +kernel
#print axioms cover_51967


end Mub6.Numerical.CircleFullPrototype.Forest
