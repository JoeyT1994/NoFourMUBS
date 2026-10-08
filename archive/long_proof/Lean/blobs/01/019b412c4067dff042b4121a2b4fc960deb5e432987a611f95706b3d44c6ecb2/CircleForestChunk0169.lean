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
def state_61929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_61929 : String := "4243444005410542430505430505050643444005410543420505420505054440050605"
theorem cover_61929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61929 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_61929)
  decide +kernel
#print axioms cover_61929

def state_61964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_61964 : String := "444206404107080606"
theorem cover_61964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_61964)
  decide +kernel
#print axioms cover_61964

def state_61977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
def hex_61977 : String := "41424409050742440943070707"
theorem cover_61977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_61977)
  decide +kernel
#print axioms cover_61977

def state_61991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
def hex_61991 : String := "0A"
theorem cover_61991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_61991)
  decide +kernel
#print axioms cover_61991

def state_61994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 8)))
def hex_61994 : String := "43404109424409434142090606090A410A42444340410942440509060A094340410A4244430609430607060A0A0A40090A"
theorem cover_61994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_61994)
  decide +kernel
#print axioms cover_61994

def state_62043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
def hex_62043 : String := "4340410707410A42444340410707410842440A070740070A4307070740410507410A42440A0707"
theorem cover_62043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_62043)
  decide +kernel
#print axioms cover_62043

def state_62082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
def hex_62082 : String := "0A"
theorem cover_62082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_62082)
  decide +kernel
#print axioms cover_62082

def state_62083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 4)))
def hex_62083 : String := "400941094244094340070A070A"
theorem cover_62083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_62083)
  decide +kernel
#print axioms cover_62083

def state_62096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_62096 : String := "434440074107070507"
theorem cover_62096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_62096)
  decide +kernel
#print axioms cover_62096

def state_62105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_62105 : String := "4440070907"
theorem cover_62105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_62105)
  decide +kernel
#print axioms cover_62105

def state_62115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
def hex_62115 : String := "4340440842080A440842084341400A4408430908080808"
theorem cover_62115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_62115)
  decide +kernel
#print axioms cover_62115

def state_62140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_62140 : String := "44434142084009440843060808084341420A444007430707070A41424408054409050A"
theorem cover_62140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_62140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_62140)
  decide +kernel
#print axioms cover_62140
end Mub6.Numerical.CircleFullPrototype.Forest
