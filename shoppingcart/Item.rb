require_relative 'Receipt'

class Item

	def initialize (item_name, item_price, tax_type)

		@item_name = item_name
		@item_price = item_price.to_i
		@tax_type = tax_type
	end

	#create item
	def create_item
		new_item = Item.new(item_name, item_price, tax_type)
		#return new_item
	end
	#calculate the sales tax
	#if statements
		#tax applied stores info on what type of tax
			#categories
				#basic tax =  10% -- b
				#import tax = 5% -- i
				#tax exempt = 0% -- t
				#basic tax + import tax = 10% + 5% --bi

	def sales_tax

		b = 10%
		i = 5%
		t = 0%

		when tax_type == i
			item_price * 0.05
		end	

		when tax_type == b
			item_price * 0.10
		end

		when tax_type == t
			item_price * 0.00
		end

		when tax_type == bi
			(item_price * 0.10 + item_price * 0.05)
		end

	
	end
end