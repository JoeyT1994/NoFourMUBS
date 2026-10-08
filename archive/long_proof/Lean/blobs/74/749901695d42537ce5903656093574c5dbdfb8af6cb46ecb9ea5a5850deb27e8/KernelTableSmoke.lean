module
public import KernelCornerExpression
import all KernelCornerExpression
import all KernelLaurentList
import all Init.Data.List.Sort.Basic

public section

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2000000

namespace Centiradian20261006.KernelLaurent

@[expose] def tableS : List Term := [
  ⟨⟨0,0,0,0⟩,-1⟩,
  ⟨⟨0,1,0,0⟩,-1⟩,
  ⟨⟨1,0,0,0⟩,-1⟩]

theorem tableS_exact : sP = tableS := by
  decide +kernel

end Centiradian20261006.KernelLaurent
#print axioms Centiradian20261006.KernelLaurent.tableS_exact
