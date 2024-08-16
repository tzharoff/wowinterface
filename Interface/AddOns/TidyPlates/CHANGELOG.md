# Tidy Plates

## [release_6.22.1](https://github.com/ImogenBits/tidyplates/tree/release_6.22.1) (2024-08-15)
[Full Changelog](https://github.com/ImogenBits/tidyplates/compare/release_6.22.0...release_6.22.1) [Previous Releases](https://github.com/ImogenBits/tidyplates/releases)

- bump version  
- fix obvious minor issues  
- simplify tank tracking  
- Merge branch 'main' of https://github.com/ImogenBits/tidyplates  
- update gitignore  
- Merge pull request #111 from httpsx/TWW\_Beta\_11.0.2  
    Update API calls for TWW  
- ColorPicker Fix  
    ColorPickerFrame was changed in 10.2.5  
- CreateAura fix  
    UnitAura function was deprecated in patch 10.2.5 and will be removed in patch 11.0.2.  
    New function: C\_UnitAuras.GetAuraDataByIndex  
- GetSpellInfo fix  
    GetSpellInfo and C\_SpellBook.GetSpellInfo was deprecated in patch 11.0.0 and will be removed in patch 11.0.2.  
    New function: C\_Spell.GetSpellInfo  
- UnitBuff fix  
    UnitBuff was removed in patch 11.0.2.  
    New function - C\_UnitAuras.GetBuffDataByIndex  
- GetAddOnMetadata fix  
    GetAddOnMetadata function was deprecated in patch 10.1.0 and will be removed in patch 11.0.2.  
    New function: C\_AddOns.GetAddOnMetadata  