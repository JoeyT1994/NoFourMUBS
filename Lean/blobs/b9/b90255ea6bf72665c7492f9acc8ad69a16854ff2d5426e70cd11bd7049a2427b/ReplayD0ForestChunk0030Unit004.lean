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
def state_1586555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_1586555 : String := "44424440410643420844050606414342444005434109420A050A40064341420A06420A4440054341060A06060644050606434244400841434208440540054341050805080840414342080606084143420A44400A43410A0A0A4006434106420A440A06060A4342084408400841430808080844400541054344054240054105080505404106430706414342444005434105090506060643424440084143424408070742080508400741430706074440054105070706420A4405064006410643424440410606414342440A0606064342084440064143070608060606444006410643424407060606060644400541054344054240054105434405060505050606"
theorem cover_1586555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 255) (hex := hex_1586555)
  decide +kernel
#print axioms cover_1586555

def state_1586810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1586810 : String := "4344434409074409060606"
theorem cover_1586810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1586810)
  decide +kernel
#print axioms cover_1586810

def state_1586821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1586821 : String := "4243444142434440084208430744410606074007424305410705074440084244084143080808444143400844064206074008444208094208400741090708414340074244070707400742440807074307084042080742414344080544080808414307440707074344400743074409070744404409074441424309090942430740070907414207070707424308440808430744400741444243070807074442070707074142430740074442414307070507060707444142444008434208444140084308080841400743420844070708080840084342414408080841444006430706064407070644404344050706434441054240074308080541424006430706064207070640074341060706420844400843414442080707080807414240060607074344414307440907070744414409070707"
theorem cover_1586821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 305) (hex := hex_1586821)
  decide +kernel
#print axioms cover_1586821

def state_1587133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 6)))
def hex_1587133 : String := "4441424306440640414206080606430A4408400A08420643064406400A0641424340440A050540444142430544050543080842054305440A0541424305400905430A4044080A054205430505440505430A404441080A0A4408084243054044050505430A40440A0A440505"
theorem cover_1587133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587133 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 107) (hex := hex_1587133)
  decide +kernel
#print axioms cover_1587133


end Mub6.Numerical.CircleFullD0.Forest
