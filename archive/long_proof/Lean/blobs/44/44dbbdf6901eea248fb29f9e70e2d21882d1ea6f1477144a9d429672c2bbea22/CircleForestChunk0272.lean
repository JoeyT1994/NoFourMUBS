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
def state_140705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
def hex_140705 : String := "4344080744404208084208084006420707"
theorem cover_140705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_140705)
  decide +kernel
#print axioms cover_140705

def state_140724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_140724 : String := "424344084109084408094344084140074243080943080740084208054407414307074340050509"
theorem cover_140724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_140724)
  decide +kernel
#print axioms cover_140724

def state_140764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 6)))
def hex_140764 : String := "434408414042084308090A0A440A4140090A0A"
theorem cover_140764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_140764)
  decide +kernel
#print axioms cover_140764

def state_140784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 6)))
def hex_140784 : String := "4441060541404243084406094308440541070542064344054106080640420805420805"
theorem cover_140784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_140784)
  decide +kernel
#print axioms cover_140784

def state_140819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 6)))
def hex_140819 : String := "44410605414043424406094405074209074306420A44050A404305050A"
theorem cover_140819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_140819)
  decide +kernel
#print axioms cover_140819

def state_140849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_140849 : String := "42094341090909"
theorem cover_140849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_140849)
  decide +kernel
#print axioms cover_140849

def state_140857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
def hex_140857 : String := "4341090A09"
theorem cover_140857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_140857)
  decide +kernel
#print axioms cover_140857

def state_140866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 14)))
def hex_140866 : String := "42094341444041070841444208074209430807440842080809444008080909"
theorem cover_140866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_140866)
  decide +kernel
#print axioms cover_140866

def state_140898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 14)))
def hex_140898 : String := "43414440420641060806090A0A"
theorem cover_140898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_140898)
  decide +kernel
#print axioms cover_140898

def state_140914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 28)))
def hex_140914 : String := "404144064206430806440642080806"
theorem cover_140914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_140914)
  decide +kernel
#print axioms cover_140914

def state_140930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 29)))
def hex_140930 : String := "4144420943404144080908414406420643080608094209434009414209430A09090944420943080909"
theorem cover_140930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_140930)
  decide +kernel
#print axioms cover_140930
end Mub6.Numerical.CircleFullPrototype.Forest
