class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @items = collection
    @number_of_items = items_per_page
    @pages = @items.each_slice(@number_of_items).to_a
  end

  # returns the number of items within the entire collection
  def item_count
    @items.size
  end

  # returns the number of pages
  def page_count
    @pages.count
  end

  # returns the number of items on the current page. page_idx is zero based.
  # this method should return -1 for page_idx values that are out of range
  def page_item_count(page_idx)
    if @pages[page_idx] == nil || page_idx.negative?
      return - 1
    else
    @pages[page_idx].count
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    # sliced_array.each { |element| return sliced_array.index(element) if element.include?(item_index) }
    return - 1 if item_index.negative?
    item = @items[item_index]
      if item == nil
        return - 1
      else
        @pages.index { |page| page.include?(item) }
      end
  end
end

# @items[item_index] = "ok"
# pages = @items.each_slice(@number_of_items).to_a
# pages.index { |page| page.include?("ok") }
