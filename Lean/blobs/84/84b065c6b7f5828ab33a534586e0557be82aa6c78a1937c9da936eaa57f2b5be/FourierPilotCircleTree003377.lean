import FourierPilotCircleTree003378
import FourierPilotCircleTree003379
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003377
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![11, 4, 7, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003378.state FourierPilotCircleTree003379.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003378.covered FourierPilotCircleTree003379.covered
#print axioms covered
end FourierPilotCircleTree003377
