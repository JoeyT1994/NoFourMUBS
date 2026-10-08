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
def state_2583547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 17)))
def hex_2583547 : String := "4041444342400A0507424041440743050A0A4105054007410707434205400A054240414443050A4305080A05400A41440A0A0A0A4144430542050905440A0A"
theorem cover_2583547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2583547)
  decide +kernel
#print axioms cover_2583547

def state_2583613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 34)))
def hex_2583613 : String := "4243404144430742400708074342080A42080A0A4144430506080A40414442080A080A41080843400A41060A400A41060A"
theorem cover_2583613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2583613)
  decide +kernel
#print axioms cover_2583613

def state_2583662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 35)))
def hex_2583662 : String := "424340414408080A080843400A4144420806080A400A410808"
theorem cover_2583662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2583662)
  decide +kernel
#print axioms cover_2583662

def state_2583687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 41) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
def hex_2583687 : String := "0A"
theorem cover_2583687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2583687)
  decide +kernel
#print axioms cover_2583687

def state_2583688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
def hex_2583688 : String := "414442080608444243400A05080A42080A"
theorem cover_2583688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583688 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2583688)
  decide +kernel
#print axioms cover_2583688

def state_2583705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 17)))
def hex_2583705 : String := "43404144070A0A41090940414442430A400A060A4243400A0A400A0A0A0A41440642430606060A"
theorem cover_2583705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2583705)
  decide +kernel
#print axioms cover_2583705

def state_2583744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
def hex_2583744 : String := "0A"
theorem cover_2583744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2583744)
  decide +kernel
#print axioms cover_2583744

def state_2583745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
def hex_2583745 : String := "4144424309060642430540410808084309404106090644424341090941090A09424341090A41400A080A430941090A"
theorem cover_2583745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_2583745)
  decide +kernel
#print axioms cover_2583745
end Mub6.Numerical.CircleFullD0.Forest
