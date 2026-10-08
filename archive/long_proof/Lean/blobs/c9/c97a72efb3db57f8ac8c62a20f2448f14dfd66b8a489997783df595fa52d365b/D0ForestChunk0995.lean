import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1539189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 20)))
def hex_1539189 : String := "41434440064243050605050643444009420809400A42414305060A0A44400742074143440706060706"
theorem cover_1539189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1539189)
  decide +kernel
#print axioms cover_1539189

def state_1539230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 20)))
def hex_1539230 : String := "4143054440064241054305060505434409094440094241430944070609094006424106430906410509"
theorem cover_1539230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1539230)
  decide +kernel
#print axioms cover_1539230

def state_1539273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 20)))
def hex_1539273 : String := "4344050544404241064308064105430544060508400605"
theorem cover_1539273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1539273)
  decide +kernel
#print axioms cover_1539273

def state_1539296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 20)))
def hex_1539296 : String := "43440840424105084105430505084440420841430844074006080808404241064344080606414305064344080544400608064208410508"
theorem cover_1539296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539296 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_1539296)
  decide +kernel
#print axioms cover_1539296

def state_1539352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 20)))
def hex_1539352 : String := "43054440424105430505050505"
theorem cover_1539352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539352 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1539352)
  decide +kernel
#print axioms cover_1539352

def state_1539365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 20)))
def hex_1539365 : String := "4344080544404241430844084042060505430844074007084143054440090505090840424105430544404206094208050505424105430544050505"
theorem cover_1539365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1539365)
  decide +kernel
#print axioms cover_1539365

def state_1539425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 20)))
def hex_1539425 : String := "400908"
theorem cover_1539425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1539425)
  decide +kernel
#print axioms cover_1539425
end Mub6.Numerical.CircleFullD0.Forest
