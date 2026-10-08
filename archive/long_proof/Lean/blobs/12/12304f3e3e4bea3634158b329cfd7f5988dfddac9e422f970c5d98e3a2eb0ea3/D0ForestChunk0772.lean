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
def state_1486083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 27)))
def hex_1486083 : String := "4440434208410844400605080843424144050805414440430A08434244050A0742440507070A44054008430A084208414440084307050844050808"
theorem cover_1486083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1486083)
  decide +kernel
#print axioms cover_1486083

def state_1486142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 37) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 27)))
def hex_1486142 : String := "444043420541440508050543050508"
theorem cover_1486142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1486142)
  decide +kernel
#print axioms cover_1486142

def state_1486157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 27)))
def hex_1486157 : String := "08"
theorem cover_1486157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1486157)
  decide +kernel
#print axioms cover_1486157

def state_1486160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 27)))
def hex_1486160 : String := "4144050605"
theorem cover_1486160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1486160)
  decide +kernel
#print axioms cover_1486160

def state_1486169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 104 else 54)))
def hex_1486169 : String := "42414405060541444043424405070707434209070740430942060A0644054043424109050A42054107054309420507"
theorem cover_1486169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1486169)
  decide +kernel
#print axioms cover_1486169

def state_1486216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 105 else 54)))
def hex_1486216 : String := "4241440506054144400707064405400806"
theorem cover_1486216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1486216)
  decide +kernel
#print axioms cover_1486216

def state_1486233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 54)))
def hex_1486233 : String := "434209410944050942064106440506"
theorem cover_1486233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486233 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1486233)
  decide +kernel
#print axioms cover_1486233

def state_1486248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 36) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 55)))
def hex_1486248 : String := "404342064409060606"
theorem cover_1486248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1486248)
  decide +kernel
#print axioms cover_1486248

def state_1486257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 27)))
def hex_1486257 : String := "44400505404342410805414440430A080908440540080942084108084309420506"
theorem cover_1486257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486257 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1486257)
  decide +kernel
#print axioms cover_1486257

def state_1486290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 27)))
def hex_1486290 : String := "424106054144404342054106050506064405400806"
theorem cover_1486290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486290 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1486290)
  decide +kernel
#print axioms cover_1486290

def state_1486311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 27)))
def hex_1486311 : String := "420540434142054405400843410805050505434142054405050505"
theorem cover_1486311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 27) (hex := hex_1486311)
  decide +kernel
#print axioms cover_1486311
end Mub6.Numerical.CircleFullD0.Forest
