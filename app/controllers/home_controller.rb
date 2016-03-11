class HomeController < ApplicationController
  def index
      @curdir = Dir.getwd
      @Pedro = "Pedro on Rails"  
      require 'xmlsimple'
      xml = File.read('resourceSet_EQ5D.es.xml')
     
      @posts = XmlSimple.xml_in(xml, { 'KeyAttr' => 'id' })
  
  end
  
  def store
      @store ="Learning now"
  end
    
end
    