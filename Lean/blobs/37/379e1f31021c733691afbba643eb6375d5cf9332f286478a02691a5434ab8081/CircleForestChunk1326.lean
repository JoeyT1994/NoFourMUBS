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
def state_1618850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 9)))
def hex_1618850 : String := "4143074240090607434209074240094443094142060942050909400744430741070707"
theorem cover_1618850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1618850)
  decide +kernel
#print axioms cover_1618850

def state_1618887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
def hex_1618887 : String := "4008440805"
theorem cover_1618887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1618887)
  decide +kernel
#print axioms cover_1618887

def state_1618893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
def hex_1618893 : String := "4442430809430841090809"
theorem cover_1618893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1618893)
  decide +kernel
#print axioms cover_1618893

def state_1618906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 8)))
def hex_1618906 : String := "4308414044424308074308414007070709444205430541050505400808"
theorem cover_1618906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1618906)
  decide +kernel
#print axioms cover_1618906

def state_1618936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 8)))
def hex_1618936 : String := "4140080508"
theorem cover_1618936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1618936)
  decide +kernel
#print axioms cover_1618936

def state_1618944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 16)))
def hex_1618944 : String := "4342080842414009444308420741400944430807070843080A0841400944430842414009444308420808080841400944D3430842080808430842090908"
theorem cover_1618944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1618944)
  decide +kernel
#print axioms cover_1618944

def state_1619005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 17)))
def hex_1619005 : String := "43084209410908"
theorem cover_1619005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619005 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1619005)
  decide +kernel
#print axioms cover_1619005

def state_1619014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 46 else 16)))
def hex_1619014 : String := "4205410505"
theorem cover_1619014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1619014)
  decide +kernel
#print axioms cover_1619014

def state_1619019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 47 else 16)))
def hex_1619019 : String := "42414044430542054105050505400805414044434205084241404443054205D3050508414044D3430542080844D3050843054205414008050505400805"
theorem cover_1619019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1619019)
  decide +kernel
#print axioms cover_1619019

def state_1619080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 17)))
def hex_1619080 : String := "43054205410505"
theorem cover_1619080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1619080)
  decide +kernel
#print axioms cover_1619080

def state_1619087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
def hex_1619087 : String := "400808"
theorem cover_1619087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1619087)
  decide +kernel
#print axioms cover_1619087

def state_1619090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
def hex_1619090 : String := "424305410505430541400905400805"
theorem cover_1619090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1619090)
  decide +kernel
#print axioms cover_1619090

def state_1619106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
def hex_1619106 : String := "40074441070805"
theorem cover_1619106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1619106)
  decide +kernel
#print axioms cover_1619106
end Mub6.Numerical.CircleFullD0.Forest
