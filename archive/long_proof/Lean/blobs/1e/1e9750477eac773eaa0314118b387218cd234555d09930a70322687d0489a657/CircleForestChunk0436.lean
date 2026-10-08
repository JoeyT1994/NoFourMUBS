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
def state_180237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 31)))
def hex_180237 : String := "410542054043090509"
theorem cover_180237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_180237)
  decide +kernel
#print axioms cover_180237

def state_180248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 15)))
def hex_180248 : String := "44414243070707424306400844060808410808"
theorem cover_180248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_180248)
  decide +kernel
#print axioms cover_180248

def state_180269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
def hex_180269 : String := "4240430808434407074441054205080808"
theorem cover_180269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_180269)
  decide +kernel
#print axioms cover_180269

def state_180288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
def hex_180288 : String := "4344410806084441080808"
theorem cover_180288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_180288)
  decide +kernel
#print axioms cover_180288

def state_180300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 58 else 30)))
def hex_180300 : String := "4441424008070742400643064406080608"
theorem cover_180300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_180300)
  decide +kernel
#print axioms cover_180300

def state_180317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 30)))
def hex_180317 : String := "4441424043080843440707440905084240430844090843444142400606060608444142400843440608090842400A4306440908080808410808"
theorem cover_180317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180317 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_180317)
  decide +kernel
#print axioms cover_180317

def state_180374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 30)))
def hex_180374 : String := "400808"
theorem cover_180374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_180374)
  decide +kernel
#print axioms cover_180374

def state_180377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 31)))
def hex_180377 : String := "410808"
theorem cover_180377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_180377)
  decide +kernel
#print axioms cover_180377

def state_180381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 15)))
def hex_180381 : String := "4441074207074107420707"
theorem cover_180381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_180381)
  decide +kernel
#print axioms cover_180381

def state_180394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
def hex_180394 : String := "424043074407070707"
theorem cover_180394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_180394)
  decide +kernel
#print axioms cover_180394

def state_180406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 58 else 30)))
def hex_180406 : String := "4441074207064107420707"
theorem cover_180406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180406 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_180406)
  decide +kernel
#print axioms cover_180406

def state_180419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 98) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 60)))
def hex_180419 : String := "42404307440707074043070907"
theorem cover_180419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_180419)
  decide +kernel
#print axioms cover_180419

def state_180434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 99) else (if j.val < 3 then 100 else (if j.val < 4 then 59 else 60)))
def hex_180434 : String := "43444107064107420A074441424043074409050740090742404344060A96434406079640430608430696414240050508424008434407079608"
theorem cover_180434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_180434)
  decide +kernel
#print axioms cover_180434
end Mub6.Numerical.CircleFullPrototype.Forest
