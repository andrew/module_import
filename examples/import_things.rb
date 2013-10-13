require('../lib/module_import')

OtherModule = ModuleImport.import('./line.rb')

OtherModule.check

LineModule = ModuleImport.import('./other_line.rb')

LineModule.check
