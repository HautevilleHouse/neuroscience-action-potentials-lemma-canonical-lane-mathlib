import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure SynapticIntegrationPackage where
  inputSpikeTimes : List ℝ
  synapticWeights : List ℝ
  membraneTimeConstant : ℝ
  restingPotential : ℝ
  thresholdPotential : ℝ
  outputSpikeTimes : List ℝ

structure SynapticIntegrationEvidence (S : SynapticIntegrationPackage) where
  membraneTimeConstantPositive : S.membraneTimeConstant > 0
  thresholdAboveResting : S.thresholdPotential > S.restingPotential
  weightsSumFinite : True

def SynapticIntegrationClosed (S : SynapticIntegrationPackage) : Prop :=
  S.membraneTimeConstant > 0 ∧ S.thresholdPotential > S.restingPotential

theorem synaptic_integration_closed_from_evidence (S : SynapticIntegrationPackage) (E : SynapticIntegrationEvidence S) :
    SynapticIntegrationClosed S :=
  And.intro E.membraneTimeConstantPositive E.thresholdAboveResting

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse