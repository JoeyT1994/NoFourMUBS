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
def state_1317081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
def hex_1317081 : String := "44424140060806064241404307444207050743074442070507404306440607430844420706074105400608"
theorem cover_1317081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1317081)
  decide +kernel
#print axioms cover_1317081

def state_1317129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 48)))
def hex_1317129 : String := "43064241440940094308090609"
theorem cover_1317129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1317129)
  decide +kernel
#print axioms cover_1317129

def state_1317143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 49)))
def hex_1317143 : String := "4241400644430642060643064207050606"
theorem cover_1317143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1317143)
  decide +kernel
#print axioms cover_1317143

def state_1317163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1317163 : String := "4443060943424140070706410506424140084409080909"
theorem cover_1317163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1317163)
  decide +kernel
#print axioms cover_1317163

def state_1317187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 98)))
def hex_1317187 : String := "4342414044064306420706440843070A4006440607410506424140090A0909"
theorem cover_1317187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1317187)
  decide +kernel
#print axioms cover_1317187

def state_1317219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 102 else 99)))
def hex_1317219 : String := "42410707410540064443054206054305420705"
theorem cover_1317219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1317219)
  decide +kernel
#print axioms cover_1317219

def state_1317238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 103 else 99)))
def hex_1317238 : String := "424140444342070909430708440A43070A404409430708440A43070A4140094409054009440943424105090509"
theorem cover_1317238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1317238)
  decide +kernel
#print axioms cover_1317238

def state_1317283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1317283 : String := "4044064306094443060943420706424140090A0509"
theorem cover_1317283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1317283)
  decide +kernel
#print axioms cover_1317283

def state_1317304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
def hex_1317304 : String := "4140094443050943050940064406430609"
theorem cover_1317304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1317304)
  decide +kernel
#print axioms cover_1317304

def state_1317322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 48)))
def hex_1317322 : String := "4308420808"
theorem cover_1317322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1317322)
  decide +kernel
#print axioms cover_1317322

def state_1317328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 49)))
def hex_1317328 : String := "42414044080708404406070808"
theorem cover_1317328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1317328)
  decide +kernel
#print axioms cover_1317328
end Mub6.Numerical.CircleFullD0.Forest
