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
def state_1329893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1329893 : String := "4243440842440840060606444243080706424344084006060943064406404109060606"
theorem cover_1329893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1329893)
  decide +kernel
#print axioms cover_1329893

def state_1329930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_1329930 : String := "44410842400A080A414244080606424440434106424405060641060543080840064341064208064106084440060806"
theorem cover_1329930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1329930)
  decide +kernel
#print axioms cover_1329930

def state_1329977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
def hex_1329977 : String := "44414205060541424344400506060606424344054005080506"
theorem cover_1329977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1329977)
  decide +kernel
#print axioms cover_1329977

def state_1330002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
def hex_1330002 : String := "43440A0606"
theorem cover_1330002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330002 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1330002)
  decide +kernel
#print axioms cover_1330002

def state_1330011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_1330011 : String := "444042444143400A064042050A4244060544430641440607050743064005064108430505440A410743060A42440606440607400807"
theorem cover_1330011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 53) (hex := hex_1330011)
  decide +kernel
#print axioms cover_1330011

def state_1330067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 6)))
def hex_1330067 : String := "434441400542054443050505050505"
theorem cover_1330067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1330067)
  decide +kernel
#print axioms cover_1330067

def state_1330086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 12)))
def hex_1330086 : String := "4442430A05430A41400844430808080542050A"
theorem cover_1330086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1330086)
  decide +kernel
#print axioms cover_1330086

def state_1330107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 24)))
def hex_1330107 : String := "434144400A0707444005060541444005420543070540050905"
theorem cover_1330107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1330107)
  decide +kernel
#print axioms cover_1330107
end Mub6.Numerical.CircleFullD0.Forest
