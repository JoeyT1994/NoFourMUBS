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
def state_764537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
def hex_764537 : String := "44400741070740410707414309064342444109080944070707"
theorem cover_764537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_764537)
  decide +kernel
#print axioms cover_764537

def state_764562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_764562 : String := "4344400741070740410707410A42430A0A07444041420705050707"
theorem cover_764562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_764562)
  decide +kernel
#print axioms cover_764562

def state_764590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_764590 : String := "4243444408404106060605440606430807"
theorem cover_764590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_764590)
  decide +kernel
#print axioms cover_764590

def state_764611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
def hex_764611 : String := "444042434406060608064042434105050643080606"
theorem cover_764611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764611 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_764611)
  decide +kernel
#print axioms cover_764611

def state_764632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 6)))
def hex_764632 : String := "444042430941440606074309074243050643090740424305414406054440430507050543414409050941440706440740074205074205430506"
theorem cover_764632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_764632)
  decide +kernel
#print axioms cover_764632

def state_764689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 7)))
def hex_764689 : String := "414042050A0540420543054441400A05404205430505050505"
theorem cover_764689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_764689)
  decide +kernel
#print axioms cover_764689

def state_764714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
def hex_764714 : String := "44410643440740420606060741064340424406054406090606"
theorem cover_764714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_764714)
  decide +kernel
#print axioms cover_764714

def state_764739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_764739 : String := "43444142440708074244074043410809070807410A4240430A0A43054408050A44074142060742434044070A060607"
theorem cover_764739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_764739)
  decide +kernel
#print axioms cover_764739
end Mub6.Numerical.CircleFullPrototype.Forest
