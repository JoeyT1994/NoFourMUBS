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
def state_1534237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 19)))
def hex_1534237 : String := "434441054042434406050643094406054208430544080541054006054441064006420744070606"
theorem cover_1534237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534237 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1534237)
  decide +kernel
#print axioms cover_1534237

def state_1534276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 19)))
def hex_1534276 : String := "43444105400905054441054042440706440943050642444341050707430506444305410507054105400605"
theorem cover_1534276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534276 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1534276)
  decide +kernel
#print axioms cover_1534276

def state_1534320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 19)))
def hex_1534320 : String := "434441050805444140420605094042084408430841050708410540420643050608"
theorem cover_1534320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534320 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1534320)
  decide +kernel
#print axioms cover_1534320

def state_1534353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 27) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 19)))
def hex_1534353 : String := "43054441054042444308414042060508074305410508444305410508050805"
theorem cover_1534353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534353 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1534353)
  decide +kernel
#print axioms cover_1534353

def state_1534384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
def hex_1534384 : String := "424143050908414305444042094107430509090543084408404243084408054305444105080508"
theorem cover_1534384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534384 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1534384)
  decide +kernel
#print axioms cover_1534384

def state_1534424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
def hex_1534424 : String := "44404142430544060505060605"
theorem cover_1534424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1534424)
  decide +kernel
#print axioms cover_1534424

def state_1534442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 8)))
def hex_1534442 : String := "444041424305444041424305440605060606400541050509090640410509410542430544060505"
theorem cover_1534442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 39) (hex := hex_1534442)
  decide +kernel
#print axioms cover_1534442
end Mub6.Numerical.CircleFullD0.Forest
