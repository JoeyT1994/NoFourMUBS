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
def state_1625232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 102) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
def hex_1625232 : String := "44434108420A4006070843090A"
theorem cover_1625232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1625232)
  decide +kernel
#print axioms cover_1625232

def state_1625245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 102) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
def hex_1625245 : String := "44434108424044080844084341084208070840074407430708084341420808424009444341064205070806400944430708094108420A400808"
theorem cover_1625245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1625245)
  decide +kernel
#print axioms cover_1625245

def state_1625302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 34)))
def hex_1625302 : String := "404443070543070A444307084341070741084240080807"
theorem cover_1625302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1625302)
  decide +kernel
#print axioms cover_1625302

def state_1625327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
def hex_1625327 : String := "4443410A06060A"
theorem cover_1625327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1625327)
  decide +kernel
#print axioms cover_1625327

def state_1625337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 106 else (if j.val < 4 then 194 else 68)))
def hex_1625337 : String := "42404443410A0A0A0A444341424007080742400705074108420A0A4341420A07420505410A0A4044060744074307410707"
theorem cover_1625337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1625337)
  decide +kernel
#print axioms cover_1625337

def state_1625386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 106 else (if j.val < 4 then 194 else 68)))
def hex_1625386 : String := "42400A444341420507050A0A40064406430706"
theorem cover_1625386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1625386)
  decide +kernel
#print axioms cover_1625386

def state_1625405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 195 else 68)))
def hex_1625405 : String := "4142400A44080A400644080A420A06"
theorem cover_1625405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1625405)
  decide +kernel
#print axioms cover_1625405

def state_1625420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 69)))
def hex_1625420 : String := "434142400944430A0A0A40094443070A0A420A0A410A0A"
theorem cover_1625420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1625420)
  decide +kernel
#print axioms cover_1625420

def state_1625443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 34)))
def hex_1625443 : String := "4006444307064341070741420A0606"
theorem cover_1625443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625443 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1625443)
  decide +kernel
#print axioms cover_1625443
end Mub6.Numerical.CircleFullD0.Forest
