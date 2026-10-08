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
def state_1464230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 32) else (if j.val < 3 then 63 else (if j.val < 4 then 89 else 44)))
def hex_1464230 : String := "4441420943E109094142094344E1080809"
theorem cover_1464230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1464230)
  decide +kernel
#print axioms cover_1464230

def state_1464247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 32) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 44)))
def hex_1464247 : String := "43444142404307050540E1074207404307440807070744410509414209404307090709"
theorem cover_1464247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464247 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1464247)
  decide +kernel
#print axioms cover_1464247

def state_1464282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 33) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
def hex_1464282 : String := "424009074043444142064006430709060709430709"
theorem cover_1464282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464282 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_1464282)
  decide +kernel
#print axioms cover_1464282

def state_1464303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 45)))
def hex_1464303 : String := "41420744404307410809070707"
theorem cover_1464303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1464303)
  decide +kernel
#print axioms cover_1464303

def state_1464316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 45 else 22)))
def hex_1464316 : String := "440909"
theorem cover_1464316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464316 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1464316)
  decide +kernel
#print axioms cover_1464316

def state_1464319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
def hex_1464319 : String := "4344414207404307440507070707440909"
theorem cover_1464319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1464319)
  decide +kernel
#print axioms cover_1464319

def state_1464336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 17) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
def hex_1464336 : String := "4209404344414209400909060709430709"
theorem cover_1464336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464336 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1464336)
  decide +kernel
#print axioms cover_1464336

def state_1464353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 23)))
def hex_1464353 : String := "4142074440430709070707"
theorem cover_1464353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464353 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1464353)
  decide +kernel
#print axioms cover_1464353

def state_1464364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 11)))
def hex_1464364 : String := "09"
theorem cover_1464364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1464364)
  decide +kernel
#print axioms cover_1464364

def state_1464365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
def hex_1464365 : String := "434441420740430744050707070709"
theorem cover_1464365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464365 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1464365)
  decide +kernel
#print axioms cover_1464365

def state_1464380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_1464380 : String := "4209404344410906090909"
theorem cover_1464380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464380 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1464380)
  decide +kernel
#print axioms cover_1464380

def state_1464391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1464391 : String := "42434440084108424344400641420607050544400641060606080844084006084308440840414344080506064143084408420640060908"
theorem cover_1464391 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464391 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1464391)
  decide +kernel
#print axioms cover_1464391
end Mub6.Numerical.CircleFullD0.Forest
