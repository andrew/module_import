module ModuleImport
  def self.import(path)
    # create empty module for encapsulating code
    self.send(:remove_const, "Import") if self.const_defined?('Import')
    imported_module = self.const_set "Import", Module.new
    
    # load code from file
    code = File.read(path)
    
    # TODO use similar path lookup to require (with dependencies)
    
    # Load code into newly created module
    imported_module.module_eval(code)
    
    # Check that EXPORTS has been defined
    unless imported_module.const_defined?('EXPORTS')
      raise "File at #{path} doesn't export anything, use EXPORTS"
    end
    
    # Return the exported module
    return imported_module::EXPORTS
  end
end
