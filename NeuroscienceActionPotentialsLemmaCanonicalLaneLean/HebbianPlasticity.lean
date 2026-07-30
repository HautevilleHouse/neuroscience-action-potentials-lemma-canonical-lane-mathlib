import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeightDynamics : Prop
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  learningRuleAdmissible : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  synapticWeightDynamicsClosed : H.synapticWeightDynamics
  spikeTimingDependenceClosed : H.spikeTimingDependence
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  learningRuleAdmissibleClosed : H.learningRuleAdmissible

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.synapticWeightDynamics ∧ H.spikeTimingDependence ∧
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.learningRuleAdmissible

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.synapticWeightDynamicsClosed
    (And.intro E.spikeTimingDependenceClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed E.learningRuleAdmissibleClosed)))

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse
