require 'fattr'

# convenience methods for Fattr's library
module FattrHash
  def self.human_attribute_name(attr, options = {})
    attr
  end

  def fattrs
    self.class.fattrs
  end
  
  # initialize all fattrs so they exist, *must be initialized*
  def init_fattrs
    fattrs.each_with_index{|a,i| send "#{a}!"} 
  end
  
  def read_attribute_for_validation(attr)
    send(attr)
  end

  # convert fattrs to a hash
  def to_hash
    fattrs.inject({}){|h,a| h.update a => send(a)}
  end

  # combine instance variables and fattrs into a hash
  def to_full_hash
    instance_variables.inject({}){|h,a| h.update "#{a.to_s.gsub('@','')}" => send("#{a.to_s.gsub('@','')}")}
  end

  ## Add Inspect and Pretty Inspect methods
  
  def fattr_inspect
    to_hash.inspect
  end

  def fattr_pretty_inspect
    to_hash.pretty_print_inspect
  end

  def full_inspect
    to_full_hash.inspect
  end

  def full_pretty_inspect
    to_full_hash.pretty_print_inspect
  end

end