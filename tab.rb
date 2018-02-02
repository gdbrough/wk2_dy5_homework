class Tab

  attr_reader :guest, :item, :amount

  def initialize(guest, item, amount)
    @guest = guest
    @item = item
    @amount = amount
  end

  def get_name_from_tab_for(name)
    return @guest[@guest.index(name)]
  end

  def get_item_from_tab_for(name)
    return @item[@guest.index(name)]
  end

  def get_amount_from_tab_for(name)
    return @amount[@guest.index(name)]
  end

end
