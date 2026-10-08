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
def state_1626434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 107 else (if j.val < 4 then 98 else 35)))
def hex_1626434 : String := "404443410842080808434108420A0A41080A444341084240080640080808434106420540440805054108420808"
theorem cover_1626434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1626434)
  decide +kernel
#print axioms cover_1626434

def state_1626480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 98 else 35)))
def hex_1626480 : String := "404443410A0A0A0A4443410505414207094205054305410505"
theorem cover_1626480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_1626480)
  decide +kernel
#print axioms cover_1626480

def state_1626506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 98 else 35)))
def hex_1626506 : String := "444341420A400A440A0A0A0A0A"
theorem cover_1626506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1626506)
  decide +kernel
#print axioms cover_1626506

def state_1626519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 98 else 35)))
def hex_1626519 : String := "44434142404443050805054044434105050843050A05420505414240080840080842400A05400A054341050541420A400A05420505"
theorem cover_1626519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1626519)
  decide +kernel
#print axioms cover_1626519

def state_1626572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 99 else 35)))
def hex_1626572 : String := "414240080740080842400A07400A44434108090843410A0A0A"
theorem cover_1626572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626572 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1626572)
  decide +kernel
#print axioms cover_1626572

def state_1626598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
def hex_1626598 : String := "44434140050706064341400742440707074006424406090641400542050506"
theorem cover_1626598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1626598)
  decide +kernel
#print axioms cover_1626598

def state_1626630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 16)))
def hex_1626630 : String := "434140074244074307080740424406430706064244074307410707074140050840064244064341400608060606"
theorem cover_1626630 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626630 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1626630)
  decide +kernel
#print axioms cover_1626630
end Mub6.Numerical.CircleFullD0.Forest
