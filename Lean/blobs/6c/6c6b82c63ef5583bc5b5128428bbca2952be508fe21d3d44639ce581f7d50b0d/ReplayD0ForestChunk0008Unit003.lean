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
def state_1008148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
def hex_1008148 : String := "4340444107424340074443074107420A0707400744434107420A0741070A070707444142434007060807424340444341424007060642404443054107050744430541060506054142400708064240444341420907420A0541420807420A4005440507430707444341420806424044054305080805410842084044054305084443050806434106420806084007444305410605064307410742400744080606444306410642404443060806060606404443414208074240444341090A0A0A4443410842084044080808080840074443410642400944090605410742400908090741420507424008084007444108434208094208090843410742080741054205074443410842084044430641064208060606080843064007444243064106060606410742434007064007080740444107424340074441050A070507074441420507424340444105420543404441050A070805050805434007444241054340440907080809074007054105420507"
theorem cover_1008148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008148 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 363) (hex := hex_1008148)
  decide +kernel
#print axioms cover_1008148

def state_1008511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 5)))
def hex_1008511 : String := "444340424107440807070A40424107440807070907"
theorem cover_1008511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1008511)
  decide +kernel
#print axioms cover_1008511

def state_1008535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_1008535 : String := "404305064341424405404305050705054142070505"
theorem cover_1008535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008535 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1008535)
  decide +kernel
#print axioms cover_1008535

def state_1008557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_1008557 : String := "4344414243080605054142434406400641060644064006410A064308440840054107084206084441420640430506430544050A0641420A44400A4341420A05050A0A0A"
theorem cover_1008557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008557 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 67) (hex := hex_1008557)
  decide +kernel
#print axioms cover_1008557

def state_1008626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
def hex_1008626 : String := "414240434408084441420605054142064006430844064142060806064344070944074142074043090707074008430844054142404308440508430844050905084240060708"
theorem cover_1008626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008626 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 69) (hex := hex_1008626)
  decide +kernel
#print axioms cover_1008626


end Mub6.Numerical.CircleFullD0.Forest
