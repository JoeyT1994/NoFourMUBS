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
def state_1305091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 23)))
def hex_1305091 : String := "410840434244080A44410840434244080A44094107400743070909430808410A404344420A07070A4344420841074007070A0A420844080A430808"
theorem cover_1305091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305091 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 59) (hex := hex_1305091)
  decide +kernel
#print axioms cover_1305091

def state_1305151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 22)))
def hex_1305151 : String := "09"
theorem cover_1305151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1305151)
  decide +kernel
#print axioms cover_1305151

def state_1305153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 23)))
def hex_1305153 : String := "4007430708"
theorem cover_1305153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1305153)
  decide +kernel
#print axioms cover_1305153

def state_1305158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 23)))
def hex_1305158 : String := "4043440942410740074307440907070943444241084043440842080708080942414007074043074442080942080743050841074007074409420809"
theorem cover_1305158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305158 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1305158)
  decide +kernel
#print axioms cover_1305158

def state_1305217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
def hex_1305217 : String := "4409404307094344410742400707070709"
theorem cover_1305217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1305217)
  decide +kernel
#print axioms cover_1305217

def state_1305239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 10)))
def hex_1305239 : String := "424443050643404241440543054042414405430540B805050A05050A05404241440643404241440606060606060641090642414405430506054109060A"
theorem cover_1305239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 61) (hex := hex_1305239)
  decide +kernel
#print axioms cover_1305239

def state_1305300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 10)))
def hex_1305300 : String := "4244054305400A050A"
theorem cover_1305300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305300 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1305300)
  decide +kernel
#print axioms cover_1305300

def state_1305309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 10)))
def hex_1305309 : String := "06"
theorem cover_1305309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305309 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1305309)
  decide +kernel
#print axioms cover_1305309

def state_1305310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
def hex_1305310 : String := "434142050A054142060906"
theorem cover_1305310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305310 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1305310)
  decide +kernel
#print axioms cover_1305310

def state_1305332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 56 else 44)))
def hex_1305332 : String := "05"
theorem cover_1305332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305332 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1305332)
  decide +kernel
#print axioms cover_1305332

def state_1305337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 88)))
def hex_1305337 : String := "430540B842414405430540B80505414405430540B80505"
theorem cover_1305337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305337 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1305337)
  decide +kernel
#print axioms cover_1305337
end Mub6.Numerical.CircleFullD0.Forest
