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
def state_1510145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
def hex_1510145 : String := "404142080909414243444009414342080508430909400541050508434440054105090544090A4243440940094143050809440908430909"
theorem cover_1510145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1510145)
  decide +kernel
#print axioms cover_1510145

def state_1510200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 30)))
def hex_1510200 : String := "4344060544064006410A420906"
theorem cover_1510200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1510200)
  decide +kernel
#print axioms cover_1510200

def state_1510213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
def hex_1510213 : String := "42434406400641430509064409400941424309090909430606"
theorem cover_1510213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1510213)
  decide +kernel
#print axioms cover_1510213

def state_1510238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
def hex_1510238 : String := "404142050542430509054142430544404105420805414208054243050805050542430544404142080509414243050843050942430909090505"
theorem cover_1510238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1510238)
  decide +kernel
#print axioms cover_1510238

def state_1510296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 30)))
def hex_1510296 : String := "404142080909414243444009414208090940084108420843090808434409400941424309080942090944094008410809424344094009414208090909430909"
theorem cover_1510296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1510296)
  decide +kernel
#print axioms cover_1510296
end Mub6.Numerical.CircleFullD0.Forest
