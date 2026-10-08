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
def state_182931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 100) else (if j.val < 3 then 101 else (if j.val < 4 then 60 else 61)))
def hex_182931 : String := "43444142400807084240084305440508050844414240060608424008434441080506060808"
theorem cover_182931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_182931)
  decide +kernel
#print axioms cover_182931

def state_182968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 100) else (if j.val < 3 then 101 else (if j.val < 4 then 60 else 61)))
def hex_182968 : String := "43444107420905410709444142060A42404344410A05060609404305440506054106420608"
theorem cover_182968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_182968)
  decide +kernel
#print axioms cover_182968

def state_183006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 101) else (if j.val < 3 then 100 else (if j.val < 4 then 60 else 61)))
def hex_183006 : String := "404309444209414043090609400A090909"
theorem cover_183006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_183006)
  decide +kernel
#print axioms cover_183006

def state_183023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 101) else (if j.val < 3 then 101 else (if j.val < 4 then 60 else 61)))
def hex_183023 : String := "4043440541080544414240430508430544050605054108084344050944414240430544050605050541420940050509"
theorem cover_183023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_183023)
  decide +kernel
#print axioms cover_183023

def state_183072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 100) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 60)))
def hex_183072 : String := "42404443410A4240440A06080A0A434106420640060606440A43410642060A0640440A43410A4240440A060A40090A0A0A"
theorem cover_183072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_183072)
  decide +kernel
#print axioms cover_183072

def state_183123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 101) else (if j.val < 3 then 100 else (if j.val < 4 then 61 else 60)))
def hex_183123 : String := "44434241400708074140074405430507050743424140060607414007444342070506060707"
theorem cover_183123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_183123)
  decide +kernel
#print axioms cover_183123
end Mub6.Numerical.CircleFullPrototype.Forest
