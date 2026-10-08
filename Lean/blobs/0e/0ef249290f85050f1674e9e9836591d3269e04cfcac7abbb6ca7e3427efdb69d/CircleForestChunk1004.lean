import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1541340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 11)))
def hex_1541340 : String := "444143070943424044410743074209070707074209404443410742404443070907070709430709094107430709"
theorem cover_1541340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_1541340)
  decide +kernel
#print axioms cover_1541340

def state_1541385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 11)))
def hex_1541385 : String := "44410743074042444307410740424443070907070707070707"
theorem cover_1541385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 25) (hex := hex_1541385)
  decide +kernel
#print axioms cover_1541385

def state_1541411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 11)))
def hex_1541411 : String := "404244414306400A4244060606060A0A06"
theorem cover_1541411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1541411)
  decide +kernel
#print axioms cover_1541411

def state_1541434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
def hex_1541434 : String := "4244430A410A050A0A"
theorem cover_1541434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1541434)
  decide +kernel
#print axioms cover_1541434

def state_1541445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 44)))
def hex_1541445 : String := "434142400A060A0641424044430A05430A054408434142400706070641420940050705400A4408430641070642400506400506"
theorem cover_1541445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1541445)
  decide +kernel
#print axioms cover_1541445

def state_1541496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 45)))
def hex_1541496 : String := "43410706414240444305050544430741070507400A074205400506"
theorem cover_1541496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541496 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1541496)
  decide +kernel
#print axioms cover_1541496

def state_1541523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 18 else 22)))
def hex_1541523 : String := "44430A41400A0A0A0A"
theorem cover_1541523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1541523)
  decide +kernel
#print axioms cover_1541523

def state_1541532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 22)))
def hex_1541532 : String := "400A4244060606"
theorem cover_1541532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541532 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1541532)
  decide +kernel
#print axioms cover_1541532

def state_1541541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
def hex_1541541 : String := "42444305050544430A410605430805"
theorem cover_1541541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1541541)
  decide +kernel
#print axioms cover_1541541
end Mub6.Numerical.CircleFullD0.Forest
