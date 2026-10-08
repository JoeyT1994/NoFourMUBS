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
def state_1667534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
def hex_1667534 : String := "434144054005430705444005434244080905054043070543424107440907074241440540054307054440054342440841430605080505404307054342410744090707424144054005430705444005434244064106080505404307054342410A44430740070807074241440540050A444005430805F205050505"
theorem cover_1667534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667534 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 121) (hex := hex_1667534)
  decide +kernel
#print axioms cover_1667534

def state_1667655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_1667655 : String := "424341064406424340410605054041064406420543050706434041064406430542050A064041440642060644420606424340410605054041064406420543050706434041064406430542050A0640414406420606444206064243404106050540410607064340410644060A064041064406F206060641440642404306070640430605064407420740434144064240430606064043060506440742074043414406420606440742074043410607070607070707434144060A44434042060A064042060506430A40424144060A444340420606064042060506430A40424144060A44430606430A4042410644060A0A060A0A0A0A4144054005420605444005420605404243414405400506444005064042434144054005064440050640424341440540050644400506F205054243060643060505054243060643060505054243410644060607430A05"
theorem cover_1667655 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667655 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 21) (count := 327) (hex := hex_1667655)
  decide +kernel
#print axioms cover_1667655

def state_1667982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_1667982 : String := "44054005420705"
theorem cover_1667982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1667982)
  decide +kernel
#print axioms cover_1667982

def state_1667989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1667989 : String := "4344054005430A0505"
theorem cover_1667989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1667989)
  decide +kernel
#print axioms cover_1667989

def state_1667998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1667998 : String := "41424306440541054207054344050A054243440642430607430A4041064406420606060743444344050A050A44054005410507"
theorem cover_1667998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1667998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_1667998)
  decide +kernel
#print axioms cover_1667998

def state_2240857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2240857 : String := "414243444005410905050543440A4205440A05440A054243054405410543054405404241094344400605080A410543050A42410543054405080543444142050A050505"
theorem cover_2240857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 67) (hex := hex_2240857)
  decide +kernel
#print axioms cover_2240857

def state_2240925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_2240925 : String := "42430944400543090505434440424107434440070707070A4209070707"
theorem cover_2240925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240925 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_2240925)
  decide +kernel
#print axioms cover_2240925

def state_2240955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2240955 : String := "434440054109050505"
theorem cover_2240955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240955 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2240955)
  decide +kernel
#print axioms cover_2240955

def state_2240967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_2240967 : String := "41424344404142050A0541420943440707074205434440414205070541420707420543444041420507054142070742054344E74005074440050705400541070544400541070505400541070544400541070505400541070544400541070505434442400A4107434442400A4107434442400A410743440A07070A420707440A070A42400707400707440A070A424041070507400A07440A0742054344414240054344414240054344414240054344E7414205060544410A0505400943440942410606080A4205094142054005444306070605444142050905054009434409080942050941420540054443064205070605444142050905054009434409080942050941420540054408060544414205090505"
theorem cover_2240967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240967 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 22) (count := 273) (hex := hex_2240967)
  decide +kernel
#print axioms cover_2240967

def state_2241241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_2241241 : String := "42434440410942094344404109420943444041074209430907090944400707070909444041074205074107420707070909444041074205074107420907074344404241074344404241074344404241074344E70707410743440A0707424107430907410543050740070744400707074107434442400A05050707424107434440420905050707410543050740070744400707074107434442400A0505070742410743444042090505070741054305070707"
theorem cover_2241241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 177) (hex := hex_2241241)
  decide +kernel
#print axioms cover_2241241

def state_2241419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 4)))
def hex_2241419 : String := "4344404142054344404142054344404142054344E740050944400541080505054142094309444041060606090A40050A4440054142054344060706050505414209430A44060A0A40050A44400541420543440640050606050505414209430A44060A0A40050A4440054142054306060505"
theorem cover_2241419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241419 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 113) (hex := hex_2241419)
  decide +kernel
#print axioms cover_2241419


end Mub6.Numerical.CircleFullD0.Forest
