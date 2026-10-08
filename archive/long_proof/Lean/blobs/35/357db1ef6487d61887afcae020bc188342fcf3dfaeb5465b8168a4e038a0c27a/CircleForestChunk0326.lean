import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_153620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 12)))
def hex_153620 : String := "44404142060506064041424344060909434408404105090705424306064344064041090606440640090641420A084206430844060A"
theorem cover_153620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_153620)
  decide +kernel
#print axioms cover_153620

def state_153673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 9 else 12)))
def hex_153673 : String := "4440430605064043410509050A"
theorem cover_153673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_153673)
  decide +kernel
#print axioms cover_153673

def state_153686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 12)))
def hex_153686 : String := "42430606434406404142064306060606440640414306060606"
theorem cover_153686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_153686)
  decide +kernel
#print axioms cover_153686

def state_153712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
def hex_153712 : String := "4243400907094340444142094307094209434009444107420643070607090944410742074307440A07074009440A09"
theorem cover_153712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_153712)
  decide +kernel
#print axioms cover_153712

def state_153760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 4 else 13)))
def hex_153760 : String := "43400944050509"
theorem cover_153760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_153760)
  decide +kernel
#print axioms cover_153760

def state_153768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 8 else 13)))
def hex_153768 : String := "404441420943400944064107050942064340060506410909444142430506434441070507440641074006064205430506410705"
theorem cover_153768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_153768)
  decide +kernel
#print axioms cover_153768

def state_153819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 9 else 13)))
def hex_153819 : String := "40094441434206440641090909430606410909"
theorem cover_153819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_153819)
  decide +kernel
#print axioms cover_153819

def state_153838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_153838 : String := "40094109420943444009070509"
theorem cover_153838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_153838)
  decide +kernel
#print axioms cover_153838

def state_153851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
def hex_153851 : String := "44400943444142090542064406090909400909"
theorem cover_153851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_153851)
  decide +kernel
#print axioms cover_153851
end Mub6.Numerical.CircleFullPrototype.Forest
