class Medal
  attr_accessor :gold, :silver, :bronze, :none, :image_name

  def self.parse(archivement)
    medal = Medal.new
    medal.gold = archivement.condition.gold <= archivement.number
    medal.silver = archivement.condition.silver <= archivement.number && !medal.gold
    medal.bronze = archivement.condition.bronze <= archivement.number && !medal.silver && !medal.gold
    medal.none = !medal.bronze & !medal.silver && !medal.gold

    kind = ""
    kind = "gold" if medal.gold
    kind = "silver" if medal.silver
    kind = "bronze" if medal.bronze

    if medal.none
      medal.image_name = "none.png"
    else
      medal.image_name = kind + "_" + archivement.condition.image_name + ".png"
    end
    
    medal
  end
end

