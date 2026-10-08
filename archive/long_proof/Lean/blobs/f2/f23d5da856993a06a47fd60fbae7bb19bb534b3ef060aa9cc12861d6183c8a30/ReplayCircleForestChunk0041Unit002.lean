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
def state_389734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
def hex_389734 : String := "404244060A064244074143420707060A44054143440640060706434405400A0506"
theorem cover_389734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_389734)
  decide +kernel
#print axioms cover_389734

def state_389767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 11)))
def hex_389767 : String := "43404244080A44094341400909080A420844054341440840090606414405400A050840420A0A420A44050A"
theorem cover_389767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_389767)
  decide +kernel
#print axioms cover_389767

def state_389810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_389810 : String := "44054143404442090542414340440642090944094241080909064309400644054241060505414309080944054241434405404241080505054405084309050540060543404405420909054044050A05"
theorem cover_389810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 79) (hex := hex_389810)
  decide +kernel
#print axioms cover_389810

def state_389889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_389889 : String := "42440541434244400705404143424407400707440740410743060707074308420844054041070505410743060544054041434405424041070505050743440506050542440540070705434208054244050A0505"
theorem cover_389889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389889 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 83) (hex := hex_389889)
  decide +kernel
#print axioms cover_389889

def state_389972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_389972 : String := "43440940430944054142090909094405404405414243404405414243090505050505050505"
theorem cover_389972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 37) (hex := hex_389972)
  decide +kernel
#print axioms cover_389972

def state_390009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_390009 : String := "4142434407410A42430A44070A0944074107424405400707054344070A44050742434442434041050505050542434440094109064006064405404142440943064006060906414244054306410A050506430A054405424405404143424405404107050505050505054344050905"
theorem cover_390009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 109) (hex := hex_390009)
  decide +kernel
#print axioms cover_390009

def state_390120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_390120 : String := "424344404142430A440A080A4243440A064440424441430A4042050A0A434042050A0A404205444105050542444105050544410A430A4440050A05410505414305054305400542050544410A430A404442410A430A40050A0A42410505080A41084306084244410A4306424440410A430642050A0A40410505060A410A060A40424108060806430A440A08410A424306440A060A40060644404142444340084108080808084244434042444143404205054205080843404205444305050542444305050544434144400508054440054205430A41050505410844400509054305054006094108094441084340084442080808080842444143424407080807434244404341090909434107090709444043410A444240430A09070A42090A41074442070709430A07404341080908090941080944410843440A080808404209084209084340084209080808414244430A07434108080908424443424440410743424407090A074107430A0740410909410709440A40080A4209440708434209080944430808084008410806434440410A430A440A080A084440410844420808080808"
theorem cover_390120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 24) (count := 417) (hex := hex_390120)
  decide +kernel
#print axioms cover_390120

def state_390539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
def hex_390539 : String := "4440424344414042064306060606064441404244434140420505060641404205444105050542444105050544414344400506054440054205410A43050505430644400506054105054007420606430607444341404409060606414044424143070707414307070707444241430A444042410A07090A40070A43064440070607410A094241430607060707430607424443064142064440060606060644430641440A0606064042070706414042060706064344410A09414043060606074441404442430941404409070A074309410A0742430707430707440A42060A40074409064140070607424306064306444106060640420643060606"
theorem cover_390539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 22) (count := 247) (hex := hex_390539)
  decide +kernel
#print axioms cover_390539


end Mub6.Numerical.CircleFullPrototype.Forest
