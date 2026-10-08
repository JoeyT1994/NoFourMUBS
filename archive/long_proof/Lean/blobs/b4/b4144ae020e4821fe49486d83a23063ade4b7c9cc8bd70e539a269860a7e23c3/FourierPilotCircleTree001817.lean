import FourierPilotCircleTree001818
import FourierPilotCircleTree001819
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001817
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![12, 9, 8, 7, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree001818.state FourierPilotCircleTree001819.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001818.covered FourierPilotCircleTree001819.covered
#print axioms covered
end FourierPilotCircleTree001817
