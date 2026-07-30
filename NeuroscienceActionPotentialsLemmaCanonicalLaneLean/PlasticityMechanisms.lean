import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure PlasticityMechanismsPackage where
  hebbianLearning : Type u
  longTermPotentiation : Type v
  longTermDepression : Type w
  spikeTimingDependent : Prop
  calciumDynamics : Prop
  synapticScaling : Prop

structure PlasticityMechanismsEvidence (P : PlasticityMechanismsPackage) where
  spikeTimingDependentClosed : P.spikeTimingDependent
  calciumDynamicsClosed : P.calciumDynamics
  synapticScalingClosed : P.synapticScaling

def PlasticityMechanismsClosed (P : PlasticityMechanismsPackage) : Prop :=
  P.spikeTimingDependent ∧ P.calciumDynamics ∧ P.synapticScaling

theorem plasticity_mechanisms_closed_from_evidence (P : PlasticityMechanismsPackage)
    (E : PlasticityMechanismsEvidence P) : PlasticityMechanismsClosed P := by
  exact And.intro E.spikeTimingDependentClosed
    (And.intro E.calciumDynamicsClosed E.synapticScalingClosed)

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse