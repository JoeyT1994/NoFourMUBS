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
def state_2556883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
def hex_2556883 : String := "41444006424344064106400642430A06060606400A42430A410A44400642430A06060A0A4440064243414440064243440641064006424344064106400608060606064042430A060642434144400642430A06060A4440420A064243410A44400A090A4144060A44064006420806430A060A4144064006420A06440640064243410A444006080A4106080643410644060A06444006424341440640064208064408400708080640420505424341444042430505054243414440420806090A440805414408400508084341444006080A4408050840054243050505444005420505054144400608400542434144050505080544080543414440054243410605060605054106054106440640064243414406400508080806434106440640054243090606064042050542434144400A42430A0A0A0A4440054205050541444006424341444006420A060A4440054243410A0541060506054144060A440605094005420A05444005424305050505430909"
theorem cover_2556883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556883 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 365) (hex := hex_2556883)
  decide +kernel
#print axioms cover_2556883

def state_2557248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
def hex_2557248 : String := "43410A444006430A09094106440609"
theorem cover_2557248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2557248)
  decide +kernel
#print axioms cover_2557248

def state_2557263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
def hex_2557263 : String := "42430A410A0509"
theorem cover_2557263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2557263)
  decide +kernel
#print axioms cover_2557263

def state_2557271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_2557271 : String := "444243404441054205050A05404405410542430A400A050A0543400A054044050A0542430A400A41054407070A"
theorem cover_2557271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2557271)
  decide +kernel
#print axioms cover_2557271

def state_2557321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_2557321 : String := "44424344404105424305050705400A07444041054205050540410A42430744410507070A07434407074440410542050505400A0742430A400A0743070A"
theorem cover_2557321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2557321)
  decide +kernel
#print axioms cover_2557321

def state_2557385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
def hex_2557385 : String := "41444042430844410540434205054205050541074043074207070643084441054042430744050707054107074243050507404243064107064307070744404243064144404342060842094441054009054140080540420608064306420505404306420641080606444043064206E206064341084440080606414440424308444140420505054042430844054105400805430844050A42050541400807404208080743084441400A05404243080A0A074107400A07424305050740424307410744400806060A074440E24206430641074440E2050640420643064144400A070744400A0606064206430641070640420643064144400806060606"
theorem cover_2557385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557385 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 19) (count := 249) (hex := hex_2557385)
  decide +kernel
#print axioms cover_2557385

def state_2557635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
def hex_2557635 : String := "44404243444105404243050543050505414042430505070540424344410509074409410709430A444105400A05074207074441054042050505414042050505404243090943444105404209430A05054107400A074441054006054140060540424309060642050742050543444105404243050543440507050541074042430744410507070707444105400605414006054042434441054006050A060642070742050540424341074440420A0707074144404243070707070744404243410744400907074144400905074409400A074307410744400A070707400A074341074407074144070744404243070A070707420707"
theorem cover_2557635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557635 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 241) (hex := hex_2557635)
  decide +kernel
#print axioms cover_2557635


end Mub6.Numerical.CircleFullD0.Forest
