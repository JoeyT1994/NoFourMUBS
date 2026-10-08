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
def state_2301605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 23)))
def hex_2301605 : String := "42444041424344410A050505430A060541424344404142434441400AC4400AC441400A074005434244C405070544410A0841080543444107400AC441070A0A424344400541C443050505054344400841C408400541430705050841424344C44041074307070744C440410742050841074243070707430744C4074243444041C4430642050841C40640414306050506444041C40541C442430605430608400541424305054307050543444041C4434206060841070640410743060507444041080841C4424308080840084107084041424344410A05050543070505414243074440410505070507424344400506050543444041070506070844400841434244C4400841070844C40808434208080540054143080505434440410A424344400841070808084307084107424307444008074008070740410708074440084142430706060840084107084243444041420508054142430605434440414306080606060842054306050505434440410808414243444041080606400806084344400807070842430605084005414243080508050840054142434440054107050505434440410705070705054440410A0841424307440A080742434440084107420808400841070808434440080707084008414243070707420808"
theorem cover_2301605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2301605 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 471) (hex := hex_2301605)
  decide +kernel
#print axioms cover_2301605

def state_2302076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_2302076 : String := "434244404306050640050644404342090808430642414440080606064144400806080640084306420608424440054205414344400542050605050505444008424143080505414308080805"
theorem cover_2302076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302076 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 75) (hex := hex_2302076)
  decide +kernel
#print axioms cover_2302076

def state_2302153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
def hex_2302153 : String := "4405420807"
theorem cover_2302153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2302153)
  decide +kernel
#print axioms cover_2302153

def state_2302159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
def hex_2302159 : String := "05"
theorem cover_2302159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2302159)
  decide +kernel
#print axioms cover_2302159

def state_2302163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_2302163 : String := "44430505430742410744080707"
theorem cover_2302163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2302163)
  decide +kernel
#print axioms cover_2302163
end Mub6.Numerical.CircleFullD0.Forest
