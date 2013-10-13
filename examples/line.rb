module Line
  Strip = ModuleImport.import('./strip.rb')
  def Line.check
    puts 'Line check'
    Strip.check
  end
end

EXPORTS = Line