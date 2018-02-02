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

  def get_all_info_from_tab_for(name)
    tab_guest = @guest[@guest.index(name)]
    tab_item = @item[@guest.index(name)]
    tab_amount = @amount[@guest.index(name)]
    return "#{tab_guest}: #{tab_item} - #{tab_amount}"
  end

  def get_total_for_all_tab_transactions
    return @amount.sum
  end

end
