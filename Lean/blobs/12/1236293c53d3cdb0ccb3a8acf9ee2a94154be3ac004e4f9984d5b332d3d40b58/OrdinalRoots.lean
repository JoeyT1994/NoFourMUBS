import EqualAngleCells
import Mathlib.Data.List.Range
import Mathlib.Tactic.FinCases

/- Exact binding to the producer's lexicographic base-19 root ordinals.
The sharding proof covers every root, rather than accepting aggregate counts. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Seed0024ClusterTubeCover20261007

def rootOrdinal (r : RootIndex) : ℕ :=
  130321*(r 0).val+6859*(r 1).val+361*(r 2).val+19*(r 3).val+(r 4).val

def ordinalCell (n : ℕ) : Cell :=
  ⟨0,fun i => match i.val with
    | 0 => n/130321%19
    | 1 => n/6859%19
    | 2 => n/361%19
    | 3 => n/19%19
    | _ => n%19⟩

theorem rootOrdinal_lt (r : RootIndex) : rootOrdinal r<2476099 := by
  have h0 := (r 0).isLt
  have h1 := (r 1).isLt
  have h2 := (r 2).isLt
  have h3 := (r 3).isLt
  have h4 := (r 4).isLt
  simp only [rootOrdinal]
  omega

theorem ordinalCell_rootOrdinal (r : RootIndex) :
    ordinalCell (rootOrdinal r)=rootCell r := by
  have h0 := (r 0).isLt
  have h1 := (r 1).isLt
  have h2 := (r 2).isLt
  have h3 := (r 3).isLt
  have h4 := (r 4).isLt
  change Cell.mk 0 _=Cell.mk 0 _
  congr 1
  funext i
  fin_cases i <;> norm_num [rootOrdinal] <;> omega

def ordinalRange (begin count : ℕ) : List Cell :=
  (List.range' begin count).map ordinalCell

theorem ordinalCell_mem_range (begin count n : ℕ)
    (hn : begin≤n ∧ n<begin+count) : ordinalCell n ∈ ordinalRange begin count := by
  apply List.mem_map.mpr
  refine ⟨n,List.mem_range'.mpr ?_,rfl⟩
  exact ⟨n-begin,by omega,by omega⟩

def rootShardCount (width : ℕ) : ℕ := 2476099/width+1
def rootShardBegin (width shard : ℕ) : ℕ := shard*width
def rootShardLength (width shard : ℕ) : ℕ := min width (2476099-rootShardBegin width shard)
def rootShardCells (width shard : ℕ) : List Cell :=
  ordinalRange (rootShardBegin width shard) (rootShardLength width shard)

theorem rootShard_covers_ordinal (width n : ℕ) (hw : 0<width) (hn : n<2476099) :
    n/width<rootShardCount width ∧
      ordinalCell n ∈ rootShardCells width (n/width) := by
  have hdiv : n/width≤2476099/width := Nat.div_le_div_right (by omega)
  have hmod : n%width<width := Nat.mod_lt n hw
  have hidentity := Nat.mod_add_div n width
  have hbegin : n/width*width≤n := Nat.div_mul_le_self n width
  constructor
  · simp only [rootShardCount]; omega
  · apply ordinalCell_mem_range
    simp only [rootShardBegin,rootShardLength]
    have hbound : n<n/width*width+width := by
      have hidentity' : n%width+(n/width)*width=n := by simpa [Nat.mul_comm] using hidentity
      omega
    constructor
    · exact hbegin
    · omega

theorem every_root_in_checked_sharding (width : ℕ) (hw : 0<width) (r : RootIndex) :
    ∃s : Fin (rootShardCount width),rootCell r ∈ rootShardCells width s.val := by
  obtain ⟨hs,hm⟩ := rootShard_covers_ordinal width (rootOrdinal r) hw (rootOrdinal_lt r)
  refine ⟨⟨rootOrdinal r/width,hs⟩,?_⟩
  simpa only [ordinalCell_rootOrdinal] using hm

end Seed0024ClusterTubeCover20261007

#print axioms Seed0024ClusterTubeCover20261007.rootOrdinal_lt
#print axioms Seed0024ClusterTubeCover20261007.ordinalCell_rootOrdinal
#print axioms Seed0024ClusterTubeCover20261007.ordinalCell_mem_range
#print axioms Seed0024ClusterTubeCover20261007.rootShard_covers_ordinal
#print axioms Seed0024ClusterTubeCover20261007.every_root_in_checked_sharding
