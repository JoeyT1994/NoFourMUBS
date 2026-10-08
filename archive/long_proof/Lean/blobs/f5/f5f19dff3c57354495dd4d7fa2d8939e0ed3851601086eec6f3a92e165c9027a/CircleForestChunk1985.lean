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
def state_2556996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 61 else 49)))
def hex_2556996 : String := "4144064006420A06440640064243410A444006080A41060806"
theorem cover_2556996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2556996)
  decide +kernel
#print axioms cover_2556996

def state_2557021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 49)))
def hex_2557021 : String := "43410644060A06"
theorem cover_2557021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2557021)
  decide +kernel
#print axioms cover_2557021

def state_2557029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 48)))
def hex_2557029 : String := "40064243414406400642080644084007080806"
theorem cover_2557029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2557029)
  decide +kernel
#print axioms cover_2557029

def state_2557049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
def hex_2557049 : String := "420505"
theorem cover_2557049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2557049)
  decide +kernel
#print axioms cover_2557049

def state_2557054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 60 else 49)))
def hex_2557054 : String := "41444042430505054243414440420806090A440805414408400508084341444006080A440805084005424305050544400542050505"
theorem cover_2557054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557054 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2557054)
  decide +kernel
#print axioms cover_2557054

def state_2557107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 61 else 49)))
def hex_2557107 : String := "41444006084005424341440505050805440805"
theorem cover_2557107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2557107)
  decide +kernel
#print axioms cover_2557107

def state_2557126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 49)))
def hex_2557126 : String := "4341444005424341060506060505410605"
theorem cover_2557126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2557126)
  decide +kernel
#print axioms cover_2557126

def state_2557143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 24)))
def hex_2557143 : String := "4106440640064243414406400508080806"
theorem cover_2557143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2557143)
  decide +kernel
#print axioms cover_2557143

def state_2557160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 24)))
def hex_2557160 : String := "43410644064005424309060606"
theorem cover_2557160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2557160)
  decide +kernel
#print axioms cover_2557160

def state_2557174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 25)))
def hex_2557174 : String := "420505"
theorem cover_2557174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557174 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2557174)
  decide +kernel
#print axioms cover_2557174

def state_2557179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
def hex_2557179 : String := "4144400A42430A0A0A0A44400542050505"
theorem cover_2557179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2557179)
  decide +kernel
#print axioms cover_2557179

def state_2557196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 25)))
def hex_2557196 : String := "41444006424341444006420A060A4440054243410A0541060506054144060A440605094005420A05444005424305050505"
theorem cover_2557196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_2557196)
  decide +kernel
#print axioms cover_2557196

def state_2557245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 25)))
def hex_2557245 : String := "430909"
theorem cover_2557245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2557245)
  decide +kernel
#print axioms cover_2557245
end Mub6.Numerical.CircleFullD0.Forest
