class Medal
  attr_accessor :gold, :silver, :bronze, :none, :image_name

  def self.parse(achievement)
    medal = Medal.new
    medal.gold = achievement.condition.gold <= achievement.number
    medal.silver = achievement.condition.silver <= achievement.number && !medal.gold
    medal.bronze = achievement.condition.bronze <= achievement.number && !medal.silver && !medal.gold
    medal.none = !medal.bronze & !medal.silver && !medal.gold

    kind = ""
    kind = "gold" if medal.gold
    kind = "silver" if medal.silver
    kind = "bronze" if medal.bronze

    if medal.none
      medal.image_name = "none.png"
    else
      medal.image_name = kind + "_" + achievement.condition.image_name + ".png"
    end
    
    medal
  end
end

