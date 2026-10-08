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
def state_2274505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 91 else (if j.val < 4 then 89 else 58)))
def hex_2274505 : String := "44404142430A064344050A4406060A4142430A0643054406060A4041420643444006060606064142064344400605060606"
theorem cover_2274505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274505 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2274505)
  decide +kernel
#print axioms cover_2274505

def state_2274554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 58)))
def hex_2274554 : String := "4142430808430544054008054243440A0A4441060606434441050A4140420805050A444140420A05070A41404206434405060609400606"
theorem cover_2274554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2274554)
  decide +kernel
#print axioms cover_2274554

def state_2274610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 59)))
def hex_2274610 : String := "41420843080842434007080643404144420743070807074108440A0740410606410606"
theorem cover_2274610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2274610)
  decide +kernel
#print axioms cover_2274610

def state_2274645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 59)))
def hex_2274645 : String := "4108424308064341444008080844400A0A4008084144400606064440060606"
theorem cover_2274645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2274645)
  decide +kernel
#print axioms cover_2274645

def state_2274676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 29)))
def hex_2274676 : String := "44404142434406060643444041060607400606440606420643444006060606414206074206434441060606064041420643080606410606"
theorem cover_2274676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2274676)
  decide +kernel
#print axioms cover_2274676
end Mub6.Numerical.CircleFullD0.Forest
