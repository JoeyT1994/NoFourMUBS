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
def state_288277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 56 else 17)))
def hex_288277 : String := "4409424140430905050541404344080744420941A908420641A90609400805"
theorem cover_288277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_288277)
  decide +kernel
#print axioms cover_288277

def state_288308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 17)))
def hex_288308 : String := "44420541404344054205410905050505420541404344420541A905420541A905050505"
theorem cover_288308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_288308)
  decide +kernel
#print axioms cover_288308

def state_288343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 47) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 17)))
def hex_288343 : String := "4205400605"
theorem cover_288343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_288343)
  decide +kernel
#print axioms cover_288343

def state_288348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 8)))
def hex_288348 : String := "44414205400A050541420540434442050A06050505"
theorem cover_288348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_288348)
  decide +kernel
#print axioms cover_288348

def state_288369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
def hex_288369 : String := "4344094142054309050505"
theorem cover_288369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_288369)
  decide +kernel
#print axioms cover_288369

def state_288382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 9)))
def hex_288382 : String := "40430A440606430A08"
theorem cover_288382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_288382)
  decide +kernel
#print axioms cover_288382

def state_288395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 46 else (if j.val < 4 then 28 else 18)))
def hex_288395 : String := "4140430A4408060A40060A"
theorem cover_288395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_288395)
  decide +kernel
#print axioms cover_288395

def state_288407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 18)))
def hex_288407 : String := "404344420A050944424108434006080809094344420A41050A0A440808"
theorem cover_288407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_288407)
  decide +kernel
#print axioms cover_288407

def state_288437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 18)))
def hex_288437 : String := "43444206414005430544420A05054006430A060644420641090606"
theorem cover_288437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_288437)
  decide +kernel
#print axioms cover_288437

def state_288465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 56 else 18)))
def hex_288465 : String := "44420A410A0A0A"
theorem cover_288465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_288465)
  decide +kernel
#print axioms cover_288465

def state_288474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 94 else (if j.val < 4 then 57 else 36)))
def hex_288474 : String := "410840060A"
theorem cover_288474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288474 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_288474)
  decide +kernel
#print axioms cover_288474

def state_288480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 90) else (if j.val < 3 then 95 else (if j.val < 4 then 57 else 36)))
def hex_288480 : String := "404344420A410840430508080A0808"
theorem cover_288480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_288480)
  decide +kernel
#print axioms cover_288480
end Mub6.Numerical.CircleFullPrototype.Forest
