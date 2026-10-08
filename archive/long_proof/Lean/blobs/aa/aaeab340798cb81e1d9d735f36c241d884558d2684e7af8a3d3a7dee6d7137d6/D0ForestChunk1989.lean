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
def state_2557994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
def hex_2557994 : String := "4440420943E209420643060940420643064144404209430909094042064306410A0506444009060606"
theorem cover_2557994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_2557994)
  decide +kernel
#print axioms cover_2557994

def state_2558037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 96)))
def hex_2558037 : String := "404209434441050841404209060540090908420505"
theorem cover_2558037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558037 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2558037)
  decide +kernel
#print axioms cover_2558037

def state_2558060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 112 else (if j.val < 4 then 59 else 97)))
def hex_2558060 : String := "09"
theorem cover_2558060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2558060)
  decide +kernel
#print axioms cover_2558060

def state_2558063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 188) else (if j.val < 3 then 113 else (if j.val < 4 then 118 else 97)))
def hex_2558063 : String := "4440420943444106090A44064106084209430744050540424309090A420707"
theorem cover_2558063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2558063)
  decide +kernel
#print axioms cover_2558063

def state_2558094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 189) else (if j.val < 3 then 113 else (if j.val < 4 then 118 else 97)))
def hex_2558094 : String := "444042094341440940090909084209430908404209430A4144080A44080A42094307410708"
theorem cover_2558094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2558094)
  decide +kernel
#print axioms cover_2558094

def state_2558131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 113 else (if j.val < 4 then 119 else 97)))
def hex_2558131 : String := "414440080840420943410A080642094307084408400808"
theorem cover_2558131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558131 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2558131)
  decide +kernel
#print axioms cover_2558131

def state_2558154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 97)))
def hex_2558154 : String := "42094341074440090507414405074408400807"
theorem cover_2558154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558154 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2558154)
  decide +kernel
#print axioms cover_2558154

def state_2558173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 95) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 48)))
def hex_2558173 : String := "4440420843090809404209434144400909404209434144090505084206430608440940050608420943414409060608"
theorem cover_2558173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2558173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_2558173)
  decide +kernel
#print axioms cover_2558173
end Mub6.Numerical.CircleFullD0.Forest
