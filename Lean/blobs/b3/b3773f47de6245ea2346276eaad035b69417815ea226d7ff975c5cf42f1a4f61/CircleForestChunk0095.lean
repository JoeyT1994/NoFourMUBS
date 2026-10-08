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
def state_960228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 55)))
def hex_960228 : String := "404142440A0606420A07414244054305404142090505054405430540060505"
theorem cover_960228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960228 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_960228)
  decide +kernel
#print axioms cover_960228

def state_960259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 55)))
def hex_960259 : String := "4041420A0A0A4142440A43400A414209440A080A0A440A434041420A060A4142440508440507420505400A41420A440A43400708090A420A0A"
theorem cover_960259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_960259)
  decide +kernel
#print axioms cover_960259

def state_960316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
def hex_960316 : String := "420A440A434140420A0A05400A0541400A420A440A4341400A05050A0A"
theorem cover_960316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_960316)
  decide +kernel
#print axioms cover_960316

def state_960347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
def hex_960347 : String := "44430506434042054144050805054042074144070744060706"
theorem cover_960347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_960347)
  decide +kernel
#print axioms cover_960347

def state_960373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
def hex_960373 : String := "43054041420644054305060606"
theorem cover_960373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_960373)
  decide +kernel
#print axioms cover_960373

def state_960387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
def hex_960387 : String := "4041424405430540420505054405430540414205050505054142050505"
theorem cover_960387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960387 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_960387)
  decide +kernel
#print axioms cover_960387

def state_960419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
def hex_960419 : String := "444340424107054144054305404205050505060643404241084405084108440508420708404209410944070907"
theorem cover_960419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_960419)
  decide +kernel
#print axioms cover_960419

def state_960466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 54)))
def hex_960466 : String := "404142440505050505"
theorem cover_960466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_960466)
  decide +kernel
#print axioms cover_960466
end Mub6.Numerical.CircleFullD0.Forest
