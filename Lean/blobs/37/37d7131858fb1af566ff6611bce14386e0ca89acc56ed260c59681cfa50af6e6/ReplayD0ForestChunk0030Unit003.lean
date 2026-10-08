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
def state_1585506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
def hex_1585506 : String := "424344404142434440070509444041420807074142054443050505050943440707444007414244430707070707074243054405054307074142430505434405054440414205444305400705050505054205430505404142094307064205074142054305050544404142444340414208060841420A444340410605050A430505420544050540060A43400609064443400641424443400641060506060642440707070606424443080843050844430740074107074307064142444305400A0505444340414244430505054443404106070540064106054305064205444305050505404142440A06064244430505054443400605060641420544430505050543404142050605054006054205444305404142054443050505050543050540410642090641420543440505060543444041424307070707414243440A0A44404142444307070707074108420505400705430A44080742430A44400705050A40074142430A44400605060A42070744404142444307060606420707414244434041424443080606064244070707410842050840064108424443050805084340064108050644434007080606424443400741420505054041070741420544430540060505054340070540060544430740074108074307074006410642434405050607"
theorem cover_1585506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585506 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 477) (hex := hex_1585506)
  decide +kernel
#print axioms cover_1585506

def state_1585983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 27)))
def hex_1585983 : String := "4006414243400609060642430909434006444106070606"
theorem cover_1585983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1585983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1585983)
  decide +kernel
#print axioms cover_1585983

def state_1586006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 13)))
def hex_1586006 : String := "4440064142444006434106420A06060606424440434106420A06064341420A4440064341064205440A05060642440A0544404341420A0642054405050643050A4006050A4006434106420506064440064341064244400643414244400605050642054407050606444006434106060606060606"
theorem cover_1586006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586006 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 115) (hex := hex_1586006)
  decide +kernel
#print axioms cover_1586006

def state_1586121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 13)))
def hex_1586121 : String := "43444041064207064142434440060806060642434440070A074440064142440806064244070707064307060606"
theorem cover_1586121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586121 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1586121)
  decide +kernel
#print axioms cover_1586121

def state_1586166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
def hex_1586166 : String := "4243444041424307080707414243444041420507050505444041420807080540410905054344400741420507050744400741424443054007050507420507400741070542430505430744070540410707414243090943074006410605420507444041424408064407060841424440414342084407060608414342054440414305050505050A4305054041060841430505054440414307060741434244404107074143054205060540070544400741070707064342444007050507424440070507074006410643070642440805444007414307070740074107054041060641424006090642054006410705434440074142430744070707070744404106074142444007414307064307060644070642440707074006410607"
theorem cover_1586166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 279) (hex := hex_1586166)
  decide +kernel
#print axioms cover_1586166

def state_1586445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
def hex_1586445 : String := "43440A4007410A074440410544054207064144054243090506444243090505424340070A404105074109440907430709400641064243074440064106070607"
theorem cover_1586445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1586445)
  decide +kernel
#print axioms cover_1586445

def state_1586508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_1586508 : String := "424340410607414442430A400644410909064307060644420707074006410644424340410606090643070606430706"
theorem cover_1586508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586508 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1586508)
  decide +kernel
#print axioms cover_1586508


end Mub6.Numerical.CircleFullD0.Forest
