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
def state_1471201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1471201 : String := "404142434406084408084344094008420807444008420808084243440940414405054405420505054440094143060809404143080843440508084108054344094041424405050709414205070544094041080941080941424306084344064206440607444206094208434409084408084243440605444106094108054344094142050905444142430608094209094142084309084243050809"
theorem cover_1471201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471201 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 153) (hex := hex_1471201)
  decide +kernel
#print axioms cover_1471201

def state_1471356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1471356 : String := "424344404408410A424307400A0707080A444043440841424009080842404344080A4408094308080844414240430844050908084205084142094043084408090842404344410905094441090509430909404344084108084441080841420908424043410906410942060609084308084308440841084209084043410A4244400A090A0A4142090A424409094440430A410942090A090A094344080A4440424308080808400A4243080808"
theorem cover_1471356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 171) (hex := hex_1471356)
  decide +kernel
#print axioms cover_1471356

def state_1471529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_1471529 : String := "44404144420508424307404107070707440842430740410744070707074144050744050740414243074440070707070707"
theorem cover_1471529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1471529)
  decide +kernel
#print axioms cover_1471529

def state_1471579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_1471579 : String := "404143440842404143440842400A0707440842404341080841050508084344084240410707070744084240414308080808084108084041080808444205084240434144054240434105050505404341080641440509060844054240434105050505404306060841440542054043410505050544054205404306050543410505054043410808414406424043060643084205080644064240060806430808434408424041430808080808440842404143440842400A08080A0A4143080508404143080606084143084405420508430808"
theorem cover_1471579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471579 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 207) (hex := hex_1471579)
  decide +kernel
#print axioms cover_1471579

def state_1471789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 7)))
def hex_1471789 : String := "42444041430A4442400A090A0A4344070744424041430A4442400909404308410606080A434407074442404143084405420508430708080842404143074409094307444286404107070742860A41070740410A43074407070741430709430744070740410A4307440842400A07074107074240410A43074442400A4107070A0A410907400A0741430709430744424007070707400A410A074440410A43074244080A074107070A"
theorem cover_1471789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471789 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 167) (hex := hex_1471789)
  decide +kernel
#print axioms cover_1471789

def state_1471961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
def hex_1471961 : String := "44420940430A4409090942090A"
theorem cover_1471961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1471961)
  decide +kernel
#print axioms cover_1471961


end Mub6.Numerical.CircleFullD0.Forest
