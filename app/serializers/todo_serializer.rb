class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :items
  
  def items
		self.object.items.map do |item|
			{id: item.id, name:item.name, done:item.done}		
		end		
	end


end
