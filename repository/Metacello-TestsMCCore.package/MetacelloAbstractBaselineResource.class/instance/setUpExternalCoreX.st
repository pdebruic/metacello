External-Core
setUpExternalCoreX
  "self reset"

  | infoArray |
  infoArray := self
    setUpExternalCoreX: externalPackages
    extraDefs:
      {(self
        createMethodDefinitionFor: 'Object'
        classIsMeta: true
        selector: 'externalPackageInfo'
        category: '*external-corex'
        source: 'externalPackageInfo ^''externalPackages''')}
    packageVersion: '-dkh.1'
    info: #().
  self
    setUpExternalCoreX: alternatePackages
    extraDefs:
      {(self
        createMethodDefinitionFor: 'Object'
        classIsMeta: true
        selector: 'externalPackageInfo'
        category: '*external-corex'
        source: 'externalPackageInfo ^''alternatePackages''')}
    packageVersion: '-dkh.2'
    info: infoArray