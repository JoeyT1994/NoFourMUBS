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
def state_22551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 40)))
def hex_22551 : String := "41420843090808"
theorem cover_22551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_22551)
  decide +kernel
#print axioms cover_22551

def state_22560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 60) else (if j.val < 3 then 60 else (if j.val < 4 then 42 else 41)))
def hex_22560 : String := "4340444105080505400805"
theorem cover_22560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_22560)
  decide +kernel
#print axioms cover_22560

def state_22571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 60) else (if j.val < 3 then 61 else (if j.val < 4 then 42 else 41)))
def hex_22571 : String := "43404441094208430608414205074243404441420507084105084408050843070A4409410542054306440605404408410A08440805"
theorem cover_22571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_22571)
  decide +kernel
#print axioms cover_22571

def state_22624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 61) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 41)))
def hex_22624 : String := "42084340440841420843404406070608084406414208060608"
theorem cover_22624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_22624)
  decide +kernel
#print axioms cover_22624

def state_22649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 20)))
def hex_22649 : String := "44410906414205434044060505054208430608"
theorem cover_22649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_22649)
  decide +kernel
#print axioms cover_22649

def state_22668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 43 else 20)))
def hex_22668 : String := "400808"
theorem cover_22668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_22668)
  decide +kernel
#print axioms cover_22668

def state_22671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 20)))
def hex_22671 : String := "434044414209060641424340440A07440607400A44090A0A4243404406410A060640080843060A4406414243060907064044080A440841424309080908"
theorem cover_22671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_22671)
  decide +kernel
#print axioms cover_22671

def state_22732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 20)))
def hex_22732 : String := "42084340440541420805050608"
theorem cover_22732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22732 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_22732)
  decide +kernel
#print axioms cover_22732

def state_22751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
def hex_22751 : String := "41064206430906"
theorem cover_22751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_22751)
  decide +kernel
#print axioms cover_22751

def state_22759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 60) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
def hex_22759 : String := "4243444006410542054344A30505060643444041060A41074243070A0707440A06"
theorem cover_22759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_22759)
  decide +kernel
#print axioms cover_22759
end Mub6.Numerical.CircleFullPrototype.Forest
