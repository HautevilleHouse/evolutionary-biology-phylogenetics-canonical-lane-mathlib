import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure LinkagePackage where
  locusA : Type u
  locusB : Type v
  recombinationFraction : Prop
  linkageDisequilibrium : Prop
  lodScore : Prop
  geneticMapDistance : Prop

structure LinkageEvidence (L : LinkagePackage) where
  recombinationFractionClosed : L.recombinationFraction
  linkageDisequilibriumClosed : L.linkageDisequilibrium
  lodScoreClosed : L.lodScore
  geneticMapDistanceClosed : L.geneticMapDistance

def LinkageEquilibriumClosed (L : LinkagePackage) : Prop :=
  L.recombinationFraction ∧ L.lodScore

theorem linkage_equilibrium_closed_from_evidence (L : LinkagePackage)
    (E : LinkageEvidence L) : LinkageEquilibriumClosed L := by
  exact And.intro E.recombinationFractionClosed E.lodScoreClosed

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse