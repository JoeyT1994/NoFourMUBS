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
def state_1629532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 17)))
def hex_1629532 : String := "4341424044434142400A05404443090A0944430541420505050542080841420A400A444341420A0A0A0A0A420A0A434142050505410A0A444341050541420540444305414205400A05050505420505430541050540444341424044430706094443074142404406050507420505430541050540060742400608064142400644434142400644060506060643410A0A0A0606434142090942050841420A4009440A09420A064443414205400705054142404443414205050541424044060A05400644060542050643054142050505054044434107060643414205050541424006050606444305414205050505424044430506050540060543054142054044430541420505050505420505424044430842080643050A444305420505054044064308064443054142050606054142404443410A0A0A0A4443414207404443414207090A070A44094305054207400A0541070743414205400A054205050740444341420A060606430A0A4443414240444341420906060643410A0A0A44094305094006440943414205090509424006440905064142400A090606434142400A444305050540440A0A444305414205400605050542400A0540060541420A400A44090A420A0A42400A44434207414006050607430A07400644064341420506060A"
theorem cover_1629532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 477) (hex := hex_1629532)
  decide +kernel
#print axioms cover_1629532

def state_1630009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
def hex_1630009 : String := "40064443414006424406430706060606434140424406430706064244430741400642440643054107050606434107054140424443070643054105050642050740060507400642440643050606414006424406434140064244434140060505064305410A0506064140064244060606060606"
theorem cover_1630009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 113) (hex := hex_1630009)
  decide +kernel
#print axioms cover_1630009

def state_1630122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
def hex_1630122 : String := "4240064443424006080606434208084240064144060A060606"
theorem cover_1630122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1630122)
  decide +kernel
#print axioms cover_1630122

def state_1630147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
def hex_1630147 : String := "4142404406430A0644434142400609060606434142400707400644434109060643410A0A074207064107060606"
theorem cover_1630147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 45) (hex := hex_1630147)
  decide +kernel
#print axioms cover_1630147

def state_1630192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
def hex_1630192 : String := "4341424044434109090A0944434142404443050A0505404443090A0905420540440805054142400A4443050705400A4443414205400A05050A43050A420A400A440A05434105054142050A0A404443410906410A0609444341404442430941090606094442430541404442050505050507420505404406094442050505414044420A060A4442434140440A0A44420543050605400A0541400A440A0A0A06424341400905050A43414007050A0A40064406420A064341090541400944420A0A094009440A054240440A094443420808420A400644060543050A40440606444340060806430540064408054142400A44434142070A0A0A0A4044060A444341400A44420A06420A0606410A0643410A0A0A420A400644060A"
theorem cover_1630192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 279) (hex := hex_1630192)
  decide +kernel
#print axioms cover_1630192

def state_1630471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_1630471 : String := "4006440641420A43400644060A060A"
theorem cover_1630471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630471 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1630471)
  decide +kernel
#print axioms cover_1630471

def state_1630486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1630486 : String := "4142434440094142064306440606420A43090A0644400841080A0A4344400941430942444009410643060A09444009414309084309400842080809434209094244400941430A0A0A094440094143090A0A0909444041080A4142434408080843440840080808420A43440A0A0A4009414442084309084208080A4243444009420A434105050A090A43444043090A434142090942050941420A440A090A090A"
theorem cover_1630486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630486 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 159) (hex := hex_1630486)
  decide +kernel
#print axioms cover_1630486

def state_1630645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_1630645 : String := "4441084207064142084408080A"
theorem cover_1630645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1630645)
  decide +kernel
#print axioms cover_1630645


end Mub6.Numerical.CircleFullD0.Forest
