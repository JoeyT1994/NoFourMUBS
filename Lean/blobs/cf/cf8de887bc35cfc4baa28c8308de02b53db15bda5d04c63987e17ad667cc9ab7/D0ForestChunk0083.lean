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
def state_957358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 174) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_957358 : String := "42C74344404142C70942C7094109090A44404142C7434409050542C74309440605414206430906064041054205430A050A"
theorem cover_957358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957358 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_957358)
  decide +kernel
#print axioms cover_957358

def state_957408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 109)))
def hex_957408 : String := "C7"
theorem cover_957408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957408 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_957408)
  decide +kernel
#print axioms cover_957408

def state_957410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 144 else 109)))
def hex_957410 : String := "4409404142C7430944090A42C709410A09"
theorem cover_957410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_957410)
  decide +kernel
#print axioms cover_957410

def state_957427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 211 else (if j.val < 4 then 145 else 109)))
def hex_957427 : String := "4440414206090606404142C7434440410909090A44050542C74344094041070709440640054105064142C7430A4406054206430906"
theorem cover_957427 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957427 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_957427)
  decide +kernel
#print axioms cover_957427

def state_957480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 72 else 109)))
def hex_957480 : String := "41424344060A06430A44060A4206430906"
theorem cover_957480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957480 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_957480)
  decide +kernel
#print axioms cover_957480

def state_957497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 73 else 54)))
def hex_957497 : String := "44064041420543444005060505420643440640410506060606"
theorem cover_957497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_957497)
  decide +kernel
#print axioms cover_957497

def state_957522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
def hex_957522 : String := "4142064344060A0606"
theorem cover_957522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957522 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_957522)
  decide +kernel
#print axioms cover_957522

def state_957533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 55)))
def hex_957533 : String := "4244050544430A0505"
theorem cover_957533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_957533)
  decide +kernel
#print axioms cover_957533

def state_957543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 55)))
def hex_957543 : String := "444340C74142080A424406084443080608054340050805"
theorem cover_957543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957543 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_957543)
  decide +kernel
#print axioms cover_957543
end Mub6.Numerical.CircleFullD0.Forest
