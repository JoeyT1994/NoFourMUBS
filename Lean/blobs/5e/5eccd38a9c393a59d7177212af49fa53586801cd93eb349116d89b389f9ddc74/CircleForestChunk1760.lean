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
def state_2295538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 46)))
def hex_2295538 : String := "43414240440943410709410A080707424008440906094142400A44434107090A43070A0A4240080808"
theorem cover_2295538 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295538 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2295538)
  decide +kernel
#print axioms cover_2295538

def state_2295579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 47)))
def hex_2295579 : String := "434142404443410742400806070A43410742400806070A0707424008064008074142400A07074240080808"
theorem cover_2295579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2295579)
  decide +kernel
#print axioms cover_2295579

def state_2295622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
def hex_2295622 : String := "424443060943060508"
theorem cover_2295622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2295622)
  decide +kernel
#print axioms cover_2295622

def state_2295633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 23)))
def hex_2295633 : String := "44430640414244430641404206444306410706060606064443410506410740420607064306070606430640414206070606"
theorem cover_2295633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 49) (hex := hex_2295633)
  decide +kernel
#print axioms cover_2295633

def state_2295682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 23)))
def hex_2295682 : String := "4443404107060540410742444306400906060707430740410742060707"
theorem cover_2295682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2295682)
  decide +kernel
#print axioms cover_2295682

def state_2295711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 23)))
def hex_2295711 : String := "420606"
theorem cover_2295711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2295711)
  decide +kernel
#print axioms cover_2295711

def state_2295716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 10)))
def hex_2295716 : String := "40074143440542074041430507074105074407420740074144054307070707"
theorem cover_2295716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_2295716)
  decide +kernel
#print axioms cover_2295716

def state_2295748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_2295748 : String := "414344094241430909070944094207410609430907"
theorem cover_2295748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2295748)
  decide +kernel
#print axioms cover_2295748

def state_2295771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
def hex_2295771 : String := "4405424041430505090505"
theorem cover_2295771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2295771)
  decide +kernel
#print axioms cover_2295771
end Mub6.Numerical.CircleFullD0.Forest
