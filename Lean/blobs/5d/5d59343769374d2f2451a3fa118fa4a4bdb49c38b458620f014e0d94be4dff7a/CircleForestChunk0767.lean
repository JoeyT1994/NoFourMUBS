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
def state_1484916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 104)))
def hex_1484916 : String := "42418040434442054180400843440542050705080843444205418040434405420507050A0606418040430707430707"
theorem cover_1484916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_1484916)
  decide +kernel
#print axioms cover_1484916

def state_1484963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 105)))
def hex_1484963 : String := "4208414043050606404344420805080843444206070606"
theorem cover_1484963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1484963)
  decide +kernel
#print axioms cover_1484963

def state_1484986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 105 else 52)))
def hex_1484986 : String := "4442080706"
theorem cover_1484986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1484986)
  decide +kernel
#print axioms cover_1484986

def state_1484991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
def hex_1484991 : String := "43444206410640430706060606"
theorem cover_1484991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1484991)
  decide +kernel
#print axioms cover_1484991

def state_1485007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 104)))
def hex_1485007 : String := "424140434405050543440542054140050505050541404307074307074043440507054344050705"
theorem cover_1485007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1485007)
  decide +kernel
#print axioms cover_1485007

def state_1485046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 105)))
def hex_1485046 : String := "42084140434442080708084344424140080640084344070606074206410607440706404344420507080843444241400543050505074208410707440708"
theorem cover_1485046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1485046)
  decide +kernel
#print axioms cover_1485046

def state_1485107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 105 else 52)))
def hex_1485107 : String := "4442050708"
theorem cover_1485107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1485107)
  decide +kernel
#print axioms cover_1485107

def state_1485114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 104)))
def hex_1485114 : String := "4241404344054205060506054140430707430707404307070A"
theorem cover_1485114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1485114)
  decide +kernel
#print axioms cover_1485114
end Mub6.Numerical.CircleFullD0.Forest
