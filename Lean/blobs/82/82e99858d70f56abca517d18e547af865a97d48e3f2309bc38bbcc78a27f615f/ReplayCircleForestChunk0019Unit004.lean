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
def state_145848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 10)))
def hex_145848 : String := "404406064441424340414244434009410A09090A4443400642410A0606060A42440908064142444340414244050544090A094142054405054244050544098040410509054340410A42080A80400A410542050A44434042414443070A0A440943400642414407090907064144070A4406064241440880444307088041084407804042410A06064241054409434006050541080643400A800A4244094340414208440908088040410A06414244050544434006410509050A42074406064443400941424409804407800940064142090606434041424443400641424309060606060A0606804006414244060A06064006414244050544434006420506060A42440943400641050606064340064142444340410706080643400A410942804407090A440843400608064244434006410706064340064142800606060606424340064209414409434006424180060606060606414243400A44410A4243080843400A4441424340084480080A43400A090A42084305064109080A0A0A434006444109424340064441090509060609064243400644420841434006444208050806060806434006440641060506"
theorem cover_145848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 425) (hex := hex_145848)
  decide +kernel
#print axioms cover_145848

def state_146273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 10)))
def hex_146273 : String := "434044050544050540064406410606"
theorem cover_146273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_146273)
  decide +kernel
#print axioms cover_146273
end Mub6.Numerical.CircleFullPrototype.Forest
