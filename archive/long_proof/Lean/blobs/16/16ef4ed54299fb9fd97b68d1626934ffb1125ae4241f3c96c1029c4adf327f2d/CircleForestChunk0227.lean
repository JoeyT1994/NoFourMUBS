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
def state_75831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 5)))
def hex_75831 : String := "4440084243414408430A400842414406090A060A08430A0840420743070742434441090707444140074207430707070743094441090707"
theorem cover_75831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_75831)
  decide +kernel
#print axioms cover_75831

def state_75886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 5)))
def hex_75886 : String := "4408400842440807440807"
theorem cover_75886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_75886)
  decide +kernel
#print axioms cover_75886

def state_75902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
def hex_75902 : String := "4340424441064306060A060640420A0606"
theorem cover_75902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_75902)
  decide +kernel
#print axioms cover_75902

def state_75922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
def hex_75922 : String := "4443414042440508060640420505054140420906064042094406430506054341084044050805410A4044420A43050A070A"
theorem cover_75922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_75922)
  decide +kernel
#print axioms cover_75922

def state_75971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
def hex_75971 : String := "440643410640424405050605410640424406434108050A0606"
theorem cover_75971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75971 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_75971)
  decide +kernel
#print axioms cover_75971

def state_75996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
def hex_75996 : String := "4244060806"
theorem cover_75996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75996 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_75996)
  decide +kernel
#print axioms cover_75996

def state_76001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_76001 : String := "4042444109090A44064143060643404244060A06060A420A06"
theorem cover_76001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_76001)
  decide +kernel
#print axioms cover_76001

def state_76026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_76026 : String := "410A4344404208430841084440420709080708080A"
theorem cover_76026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_76026)
  decide +kernel
#print axioms cover_76026

def state_76047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
def hex_76047 : String := "44410A40420A4344060A060A0A"
theorem cover_76047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_76047)
  decide +kernel
#print axioms cover_76047
end Mub6.Numerical.CircleFullPrototype.Forest
