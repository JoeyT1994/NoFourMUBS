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
def state_2595704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 8)))
def hex_2595704 : String := "43404144424307400706074243400A09404144060A0A41060943094005060A41090940414406424340050605050A4106440642430A0606"
theorem cover_2595704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595704 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2595704)
  decide +kernel
#print axioms cover_2595704

def state_2595759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 8)))
def hex_2595759 : String := "434041090809400506"
theorem cover_2595759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2595759)
  decide +kernel
#print axioms cover_2595759

def state_2595773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 18)))
def hex_2595773 : String := "4243400A44090A40440A41420A0A0A4441060A414243400A06064306060A43400A094044050A4406410609"
theorem cover_2595773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2595773)
  decide +kernel
#print axioms cover_2595773

def state_2595817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 19)))
def hex_2595817 : String := "4340440A0A440A41424309400A08090A40444142430A40050A0A0A414243400707400507430A050A44414243400A0808430A400A060A41420843400A08080A"
theorem cover_2595817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2595817)
  decide +kernel
#print axioms cover_2595817

def state_2595880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 19)))
def hex_2595880 : String := "43400A44090A40440A4105054441420A06094142430A4005080A0A"
theorem cover_2595880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2595880)
  decide +kernel
#print axioms cover_2595880

def state_2595907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
def hex_2595907 : String := "440A0A"
theorem cover_2595907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2595907)
  decide +kernel
#print axioms cover_2595907

def state_2595910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 9)))
def hex_2595910 : String := "4144424309440609094243440909444041080808084309440909440A420A0A"
theorem cover_2595910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2595910)
  decide +kernel
#print axioms cover_2595910
end Mub6.Numerical.CircleFullD0.Forest
