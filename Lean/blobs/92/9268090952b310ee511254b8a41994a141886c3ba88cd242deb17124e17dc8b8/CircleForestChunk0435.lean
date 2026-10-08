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
def state_1041839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_1041839 : String := "444307400742060706"
theorem cover_1041839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1041839)
  decide +kernel
#print axioms cover_1041839

def state_1041861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 104 else 32) else (if j.val < 3 then 52 else (if j.val < 4 then 52 else 32)))
def hex_1041861 : String := "42434144DA404243440909050542430907094440424341080805054208084042434144DA40050644400506060505424306084309050505"
theorem cover_1041861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1041861)
  decide +kernel
#print axioms cover_1041861

def state_1041916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 105 else 32) else (if j.val < 3 then 52 else (if j.val < 4 then 52 else 32)))
def hex_1041916 : String := "4243414442070909440842080907430905"
theorem cover_1041916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1041916)
  decide +kernel
#print axioms cover_1041916

def state_1041933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 32) else (if j.val < 3 then 52 else (if j.val < 4 then 52 else 33)))
def hex_1041933 : String := "4042434441094042430605054206090905054243090709"
theorem cover_1041933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041933 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1041933)
  decide +kernel
#print axioms cover_1041933

def state_1041956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 33) else (if j.val < 3 then 52 else (if j.val < 4 then 52 else 16)))
def hex_1041956 : String := "444042434144084042430605054206080805054208430A05404243414440420605060606050542430608430905"
theorem cover_1041956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1041956)
  decide +kernel
#print axioms cover_1041956

def state_1042001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 52 else (if j.val < 4 then 53 else 16)))
def hex_1042001 : String := "05"
theorem cover_1042001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1042001)
  decide +kernel
#print axioms cover_1042001

def state_1042002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 53 else (if j.val < 4 then 26 else 16)))
def hex_1042002 : String := "05"
theorem cover_1042002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042002 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1042002)
  decide +kernel
#print axioms cover_1042002

def state_1042003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 16)))
def hex_1042003 : String := "42434144420709094408420609410708434109440A0905"
theorem cover_1042003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1042003)
  decide +kernel
#print axioms cover_1042003

def state_1042026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 17)))
def hex_1042026 : String := "404243444140424309050509404206050641090644050A43090542430944410742074005070909"
theorem cover_1042026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1042026)
  decide +kernel
#print axioms cover_1042026

def state_1042066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 16)))
def hex_1042066 : String := "40424341444042080508404206050644080608434105070542084341440843094005080808"
theorem cover_1042066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1042066)
  decide +kernel
#print axioms cover_1042066
end Mub6.Numerical.CircleFullD0.Forest
