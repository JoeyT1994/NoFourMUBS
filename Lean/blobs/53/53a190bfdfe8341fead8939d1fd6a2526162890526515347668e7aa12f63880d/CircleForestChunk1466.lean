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
def state_1652505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
def hex_1652505 : String := "40430906434241444009430842410908080944400908084109094241444006434241444006430A06400643080A0A06064006434241090A0906440A0A06"
theorem cover_1652505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652505 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1652505)
  decide +kernel
#print axioms cover_1652505

def state_1652566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
def hex_1652566 : String := "40074307424441400643080A0A41070906"
theorem cover_1652566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652566 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1652566)
  decide +kernel
#print axioms cover_1652566

def state_1652586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 10)))
def hex_1652586 : String := "4340410505054041444243414205050541420A400A440A050A4341424009054006050541420A0606420505444205060541444205050505"
theorem cover_1652586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1652586)
  decide +kernel
#print axioms cover_1652586

def state_1652641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
def hex_1652641 : String := "4340050540414406090641444243054006054305060505"
theorem cover_1652641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1652641)
  decide +kernel
#print axioms cover_1652641

def state_1652664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 11)))
def hex_1652664 : String := "05"
theorem cover_1652664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1652664)
  decide +kernel
#print axioms cover_1652664

def state_1652668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
def hex_1652668 : String := "41434442410A0A060A0A430A06"
theorem cover_1652668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1652668)
  decide +kernel
#print axioms cover_1652668

def state_1652684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
def hex_1652684 : String := "42404143420544410A050542070A43050A4143054205090540414342440605060606414342054440050505424409400A054406064305420506"
theorem cover_1652684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_1652684)
  decide +kernel
#print axioms cover_1652684

def state_1652741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 21)))
def hex_1652741 : String := "4205404143050A0541430544050505"
theorem cover_1652741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1652741)
  decide +kernel
#print axioms cover_1652741
end Mub6.Numerical.CircleFullD0.Forest
