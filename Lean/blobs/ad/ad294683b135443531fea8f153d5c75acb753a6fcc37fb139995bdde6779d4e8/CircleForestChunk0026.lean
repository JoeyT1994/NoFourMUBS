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
def state_6058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
def hex_6058 : String := "41420544400543070505424440050A0544400643060707"
theorem cover_6058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_6058)
  decide +kernel
#print axioms cover_6058

def state_6081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
def hex_6081 : String := "44414205434005090542434005440805054340064406080805"
theorem cover_6081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_6081)
  decide +kernel
#print axioms cover_6081

def state_6113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 16)))
def hex_6113 : String := "414240430A440941090A4308440741060740090942400A0A404344060A4409414240090909420A064344050A4409414240090709420A4006430509"
theorem cover_6113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_6113)
  decide +kernel
#print axioms cover_6113

def state_6172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 17)))
def hex_6172 : String := "4142400A0A404443084108420509430805440808420A4044430A41420A400A0A0A0A44430A41420A080A0A"
theorem cover_6172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_6172)
  decide +kernel
#print axioms cover_6172

def state_6216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 16)))
def hex_6216 : String := "4142400909094240434407420741050A440705430707404344094109424009090609434409410942070909"
theorem cover_6216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_6216)
  decide +kernel
#print axioms cover_6216

def state_6260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
def hex_6260 : String := "420540054344090505"
theorem cover_6260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_6260)
  decide +kernel
#print axioms cover_6260

def state_6270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 17)))
def hex_6270 : String := "4005430A05"
theorem cover_6270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6270 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_6270)
  decide +kernel
#print axioms cover_6270

def state_6276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
def hex_6276 : String := "4344410542054005430A050505"
theorem cover_6276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_6276)
  decide +kernel
#print axioms cover_6276
end Mub6.Numerical.CircleFullPrototype.Forest
