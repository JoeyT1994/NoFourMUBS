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
def state_21600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 61) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
def hex_21600 : String := "4344424140424305050542430607060505424140094442430908430509090941400544050905440842414008080841404309084344420805090808"
theorem cover_21600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_21600)
  decide +kernel
#print axioms cover_21600

def state_21660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 61) else (if j.val < 3 then 60 else (if j.val < 4 then 82 else 41)))
def hex_21660 : String := "440642414044420A0642090944060A4009064140440643064209070606"
theorem cover_21660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_21660)
  decide +kernel
#print axioms cover_21660

def state_21689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 115 else 61) else (if j.val < 3 then 60 else (if j.val < 4 then 83 else 41)))
def hex_21689 : String := "44084241400808084140434442084106054209090843440642414408090841440607060808"
theorem cover_21689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_21689)
  decide +kernel
#print axioms cover_21689

def state_21726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 61) else (if j.val < 3 then 61 else (if j.val < 4 then 41 else 41)))
def hex_21726 : String := "404305440541424005430544050905054306440641424043440507440841424307080708430644064107084005074240050805"
theorem cover_21726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_21726)
  decide +kernel
#print axioms cover_21726

def state_21777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 31 else (if j.val < 4 then 20 else 20)))
def hex_21777 : String := "404305054306440641424043050A430744410705070505"
theorem cover_21777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_21777)
  decide +kernel
#print axioms cover_21777

def state_21800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
def hex_21800 : String := "42404305054306440642414043050843440542080508050505"
theorem cover_21800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_21800)
  decide +kernel
#print axioms cover_21800

def state_21829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 40 else 20)))
def hex_21829 : String := "44064142060606"
theorem cover_21829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_21829)
  decide +kernel
#print axioms cover_21829

def state_21837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 40)))
def hex_21837 : String := "4142060606"
theorem cover_21837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_21837)
  decide +kernel
#print axioms cover_21837
end Mub6.Numerical.CircleFullPrototype.Forest
