import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_290910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 97 else (if j.val < 4 then 57 else 36)))
def hex_290910 : String := "4140050640094344060944424106090609"
theorem cover_290910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_290910)
  decide +kernel
#print axioms cover_290910

def state_290927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 37)))
def hex_290927 : String := "09"
theorem cover_290927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_290927)
  decide +kernel
#print axioms cover_290927

def state_290928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 18)))
def hex_290928 : String := "410540054305440505"
theorem cover_290928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_290928)
  decide +kernel
#print axioms cover_290928

def state_290937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 19)))
def hex_290937 : String := "09"
theorem cover_290937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_290937)
  decide +kernel
#print axioms cover_290937

def state_290938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 9)))
def hex_290938 : String := "44424140094344080808400943444241084009080909090909"
theorem cover_290938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_290938)
  decide +kernel
#print axioms cover_290938

def state_290967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 44) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
def hex_290967 : String := "43404406420A05064044060806"
theorem cover_290967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_290967)
  decide +kernel
#print axioms cover_290967

def state_290981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 56 else 18)))
def hex_290981 : String := "40444241430606430A4044420A06070A06420A41050744060A"
theorem cover_290981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_290981)
  decide +kernel
#print axioms cover_290981

def state_291006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 18)))
def hex_291006 : String := "4044424108434044424106430A08064208410607080806424108430A0841434005060843400707400908440608"
theorem cover_291006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_291006)
  decide +kernel
#print axioms cover_291006

def state_291051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 18)))
def hex_291051 : String := "410643404405050640440642410543400506090506"
theorem cover_291051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_291051)
  decide +kernel
#print axioms cover_291051

def state_291072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 19)))
def hex_291072 : String := "4241430A08430A444009080941430509434440050707444009424106070607"
theorem cover_291072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_291072)
  decide +kernel
#print axioms cover_291072

def state_291103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 9)))
def hex_291103 : String := "4442410840434408080808410640434406090906420809"
theorem cover_291103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_291103)
  decide +kernel
#print axioms cover_291103

def state_291126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 9)))
def hex_291126 : String := "40430509434406410505440609"
theorem cover_291126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_291126)
  decide +kernel
#print axioms cover_291126

def state_291146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
def hex_291146 : String := "434408074442060906"
theorem cover_291146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_291146)
  decide +kernel
#print axioms cover_291146

def state_291156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 56 else 18)))
def hex_291156 : String := "44424140070707414007070707"
theorem cover_291156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_291156)
  decide +kernel
#print axioms cover_291156
end Mub6.Numerical.CircleFullPrototype.Forest
