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
def state_1345905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_1345905 : String := "4243440841054308084441440840060644080841064006064344410508054441054208054105420606"
theorem cover_1345905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_1345905)
  decide +kernel
#print axioms cover_1345905

def state_1345946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1345946 : String := "40054243050605"
theorem cover_1345946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1345946)
  decide +kernel
#print axioms cover_1345946

def state_1345953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_1345953 : String := "4440424407410643400606060742440A060640420641060606"
theorem cover_1345953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1345953)
  decide +kernel
#print axioms cover_1345953

def state_1345979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1345979 : String := "4243444107434407070A060A434441424344070506064243444043080A0A4005060A43444005424305050505060606"
theorem cover_1345979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1345979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1345979)
  decide +kernel
#print axioms cover_1345979

def state_1346027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_1346027 : String := "434443440A090A09440A06"
theorem cover_1346027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1346027)
  decide +kernel
#print axioms cover_1346027

def state_1346041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_1346041 : String := "434440084143080A0840414308060809440A40060A"
theorem cover_1346041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1346041)
  decide +kernel
#print axioms cover_1346041

def state_1346063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
def hex_1346063 : String := "444041420805084142434408410508440A41050843050542084308440508404105420808414243444105080606064208430806"
theorem cover_1346063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_1346063)
  decide +kernel
#print axioms cover_1346063

def state_1346114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
def hex_1346114 : String := "44404142060542080841420A064208440506400606"
theorem cover_1346114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1346114)
  decide +kernel
#print axioms cover_1346114

def state_1346135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1346135 : String := "42094340060606"
theorem cover_1346135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1346135)
  decide +kernel
#print axioms cover_1346135

def state_1346142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_1346142 : String := "44420A440A0606"
theorem cover_1346142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1346142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1346142)
  decide +kernel
#print axioms cover_1346142
end Mub6.Numerical.CircleFullD0.Forest
