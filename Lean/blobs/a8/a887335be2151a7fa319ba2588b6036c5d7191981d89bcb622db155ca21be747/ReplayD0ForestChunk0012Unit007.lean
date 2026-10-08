import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1301981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
def hex_1301981 : String := "444041424307084307444243070807424307070742430844084143084408404243050505084344080A44404241080A08084042414305050A410505424105050543440A4142440A07440707424408080A44414243050505054142434407054440050507430744050542430A440505430A05414243074440080740080743440740420744070A42440741434005050507444143400742070A07074143400842050A400505434005050544404207050540420707074243444008410708400808444008054008084344400A054041424408050A0A4142444305050844050542440505054405404142050505054041424305054305074243054441074305070543444142050542054440050505054441074243050505054142430507434440080805444008420805054243084440410543050541070505434440084108050544404105050505"
theorem cover_1301981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 323) (hex := hex_1301981)
  decide +kernel
#print axioms cover_1301981

def state_1302307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1302307 : String := "424344084344080A0A44080A43444208434008080842430844080A43064440410642080608064408420844080A"
theorem cover_1302307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302307 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1302307)
  decide +kernel
#print axioms cover_1302307


end Mub6.Numerical.CircleFullD0.Forest
