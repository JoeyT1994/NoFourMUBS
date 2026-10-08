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
def state_1653019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 102 else 40)))
def hex_1653019 : String := "44420A0742410A0707"
theorem cover_1653019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1653019)
  decide +kernel
#print axioms cover_1653019

def state_1653029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 80)))
def hex_1653029 : String := "42410A40430A44080A0A41404307050A404307440842410A0706430A0A"
theorem cover_1653029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1653029)
  decide +kernel
#print axioms cover_1653029

def state_1653058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 81)))
def hex_1653058 : String := "424140430A0A0A404344070744420A410A0A420A410A070A4140430744420A05420A070A404307444241070707074307440A0A"
theorem cover_1653058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653058 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1653058)
  decide +kernel
#print axioms cover_1653058

def state_1653109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
def hex_1653109 : String := "430A440A0A"
theorem cover_1653109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1653109)
  decide +kernel
#print axioms cover_1653109

def state_1653114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 41)))
def hex_1653114 : String := "424106404306444206410A404306A00606064140430844420A41094009080808404308444241404307440A080840430744420A07080841400908080808"
theorem cover_1653114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1653114)
  decide +kernel
#print axioms cover_1653114

def state_1653175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
def hex_1653175 : String := "4306440A06"
theorem cover_1653175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1653175)
  decide +kernel
#print axioms cover_1653175

def state_1653181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
def hex_1653181 : String := "40430944424140050A404309050A4140050A4043070543440A08440505424109400908094308440A08"
theorem cover_1653181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1653181)
  decide +kernel
#print axioms cover_1653181

def state_1653224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 50 else 20)))
def hex_1653224 : String := "4442414307400707070707"
theorem cover_1653224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1653224)
  decide +kernel
#print axioms cover_1653224

def state_1653238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
def hex_1653238 : String := "40434407074442410540050A05424105404307050A41054005430705430A440A0A"
theorem cover_1653238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1653238)
  decide +kernel
#print axioms cover_1653238
end Mub6.Numerical.CircleFullD0.Forest
