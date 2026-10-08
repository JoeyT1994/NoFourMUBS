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
def state_1006800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_1006800 : String := "444041424344080744094107400742090707084142430A44094041094209090A0A42430544054041424305090805410A050A404107424344050744404107084142430707074243054405070507074142430644404107424307090741064243060A060606424344400543060506444041424344050744404109420505410942050540074107444209050743054440070907424305440540054405050541424306440A0606424305440540440541050544050605404441074243054007444107050705074441064243064044410605060606064306444042410705070A06"
theorem cover_1006800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006800 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 221) (hex := hex_1006800)
  decide +kernel
#print axioms cover_1006800

def state_1007022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_1007022 : String := "4041424344094107400709060742434406400841420608080608410942434409404109424344054005050608410942430509094406404109060909"
theorem cover_1007022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007022 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1007022)
  decide +kernel
#print axioms cover_1007022

def state_1007082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_1007082 : String := "414244430741400707070707424443404107424406070741424443400709060707424443080643400744430707074006440607440807400741424406070742064406070707"
theorem cover_1007082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 69) (hex := hex_1007082)
  decide +kernel
#print axioms cover_1007082

def state_1007152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_1007152 : String := "4244434041074209074109420909094340070705440907"
theorem cover_1007152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1007152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1007152)
  decide +kernel
#print axioms cover_1007152


end Mub6.Numerical.CircleFullD0.Forest
