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
def state_2252968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
def hex_2252968 : String := "40434107424440434107444240060706420907410744074209070740434109420944090941090909440740434107424407070707074107424407090707"
theorem cover_2252968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2252968)
  decide +kernel
#print axioms cover_2252968

def state_2253031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
def hex_2253031 : String := "4142084044070707424044090608404443410742404443090708094044070707410742404407070707434108420844404308070708410742060A4407430807"
theorem cover_2253031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_2253031)
  decide +kernel
#print axioms cover_2253031

def state_2253094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 27)))
def hex_2253094 : String := "4142090742094044070A07"
theorem cover_2253094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2253094)
  decide +kernel
#print axioms cover_2253094

def state_2253105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
def hex_2253105 : String := "43410742080707"
theorem cover_2253105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2253105)
  decide +kernel
#print axioms cover_2253105

def state_2253113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 6)))
def hex_2253113 : String := "440505"
theorem cover_2253113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2253113)
  decide +kernel
#print axioms cover_2253113

def state_2253117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 12)))
def hex_2253117 : String := "400607"
theorem cover_2253117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2253117)
  decide +kernel
#print axioms cover_2253117

def state_2253122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
def hex_2253122 : String := "424344050544064041064306070706"
theorem cover_2253122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2253122)
  decide +kernel
#print axioms cover_2253122

def state_2253140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 26)))
def hex_2253140 : String := "06"
theorem cover_2253140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2253140)
  decide +kernel
#print axioms cover_2253140

def state_2253143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 27)))
def hex_2253143 : String := "424305440640410543054244064043064106094305410542080505410543054244054008080505"
theorem cover_2253143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 39) (hex := hex_2253143)
  decide +kernel
#print axioms cover_2253143

def state_2253184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2253184 : String := "440540410507410505"
theorem cover_2253184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2253184)
  decide +kernel
#print axioms cover_2253184

def state_2253194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
def hex_2253194 : String := "06"
theorem cover_2253194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253194 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2253194)
  decide +kernel
#print axioms cover_2253194

def state_2253196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
def hex_2253196 : String := "434142440507050741424406400743074109070909"
theorem cover_2253196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2253196)
  decide +kernel
#print axioms cover_2253196
end Mub6.Numerical.CircleFullD0.Forest
