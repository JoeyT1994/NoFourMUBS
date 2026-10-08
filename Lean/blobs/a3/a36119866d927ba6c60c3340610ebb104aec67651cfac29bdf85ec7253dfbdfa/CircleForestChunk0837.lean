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
def state_1501586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 59)))
def hex_1501586 : String := "434244054007054405404143420744060708434207060788420505"
theorem cover_1501586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1501586)
  decide +kernel
#print axioms cover_1501586

def state_1501614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
def hex_1501614 : String := "414306440642080606"
theorem cover_1501614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1501614)
  decide +kernel
#print axioms cover_1501614

def state_1501626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 118)))
def hex_1501626 : String := "42400643414406424006430605060641440542054006050506"
theorem cover_1501626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1501626)
  decide +kernel
#print axioms cover_1501626

def state_1501653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
def hex_1501653 : String := "434144060A064144420806084406420806"
theorem cover_1501653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1501653)
  decide +kernel
#print axioms cover_1501653

def state_1501673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 238)))
def hex_1501673 : String := "4240434144060A06414442050608884341444240430605050642400A4309090A8841444205054208400A430A0A8840064306410A06"
theorem cover_1501673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1501673)
  decide +kernel
#print axioms cover_1501673

def state_1501726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 239)))
def hex_1501726 : String := "4240430A0843410A88414442080A08880A"
theorem cover_1501726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1501726)
  decide +kernel
#print axioms cover_1501726

def state_1501743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 173) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 119)))
def hex_1501743 : String := "88"
theorem cover_1501743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1501743)
  decide +kernel
#print axioms cover_1501743

def state_1501744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 119)))
def hex_1501744 : String := "41444240084341440508050540430641440608064341444205060A8841440542050A88420840430A0843410A88410A8888"
theorem cover_1501744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501744 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1501744)
  decide +kernel
#print axioms cover_1501744

def state_1501793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 119)))
def hex_1501793 : String := "400643410A06414244060A0688"
theorem cover_1501793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1501793)
  decide +kernel
#print axioms cover_1501793

def state_1501807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 118)))
def hex_1501807 : String := "42404143440508050505400641430642050506"
theorem cover_1501807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1501807)
  decide +kernel
#print axioms cover_1501807

def state_1501827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 119)))
def hex_1501827 : String := "404108084143444205400843410505050808438805"
theorem cover_1501827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1501827)
  decide +kernel
#print axioms cover_1501827
end Mub6.Numerical.CircleFullD0.Forest
