module
public import KernelCornerExpression
import all KernelCornerExpression
import all KernelLaurentPhase
import all KernelLaurentList
import all Init.Data.List.Sort.Basic

public section
set_option maxHeartbeats 200000
set_option pp.proofs false
namespace Centiradian20261006.KernelLaurent
#print sP
#print normalize
#reduce aP
#reduce termLE (monomial ⟨1,0,0,0⟩).head! (monomial ⟨0,1,0,0⟩).head!
#reduce add aP bP
#reduce sP
end Centiradian20261006.KernelLaurent
