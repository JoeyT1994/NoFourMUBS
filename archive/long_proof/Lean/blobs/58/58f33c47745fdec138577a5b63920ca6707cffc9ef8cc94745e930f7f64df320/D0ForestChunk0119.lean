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
def state_966073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 27)))
def hex_966073 : String := "404142064344064041050606060606"
theorem cover_966073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966073 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_966073)
  decide +kernel
#print axioms cover_966073

def state_966089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 26)))
def hex_966089 : String := "43094041440643420609060606"
theorem cover_966089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_966089)
  decide +kernel
#print axioms cover_966089

def state_966106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 27)))
def hex_966106 : String := "4244094041440907090909"
theorem cover_966106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966106 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_966106)
  decide +kernel
#print axioms cover_966106

def state_966119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 54)))
def hex_966119 : String := "4041430942440640414309060906090909"
theorem cover_966119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966119 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_966119)
  decide +kernel
#print axioms cover_966119

def state_966139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 54 else (if j.val < 4 then 74 else 55)))
def hex_966139 : String := "44424041424307440705070741090909424007410A0707"
theorem cover_966139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966139 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_966139)
  decide +kernel
#print axioms cover_966139

def state_966162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 54 else (if j.val < 4 then 75 else 55)))
def hex_966162 : String := "444240414342050705434244090507420507414342440605094205440505430906400709424005410543420507054007410707"
theorem cover_966162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966162 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_966162)
  decide +kernel
#print axioms cover_966162

def state_966213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
def hex_966213 : String := "434409074442404143074206074307064143090606094240074143420707420507430742060707"
theorem cover_966213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_966213)
  decide +kernel
#print axioms cover_966213

def state_966252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
def hex_966252 : String := "41434409420A09444206094240410A43420A09050A40410A0909430944094240414342060906060609"
theorem cover_966252 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966252 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_966252)
  decide +kernel
#print axioms cover_966252

def state_966293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 55 else (if j.val < 4 then 37 else 27)))
def hex_966293 : String := "44094041430742440707070709"
theorem cover_966293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_966293)
  decide +kernel
#print axioms cover_966293

def state_966306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_966306 : String := "4309424409404143094409420707430744090741090909"
theorem cover_966306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966306 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_966306)
  decide +kernel
#print axioms cover_966306
end Mub6.Numerical.CircleFullD0.Forest
